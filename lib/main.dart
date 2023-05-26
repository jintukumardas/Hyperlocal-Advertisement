import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_classifiedappclone/Constants/constants.dart';
import 'package:flutter_classifiedappclone/UI/Widgets/post_ad.dart';
import 'package:flutter_classifiedappclone/UI/Widgets/splash_screen.dart';
import 'package:flutter_classifiedappclone/UI/main_ui.dart';
import 'package:camera/camera.dart';
import 'package:path_provider/path_provider.dart';

List<CameraDescription> cameras = [];
// void main() => runApp(MyApp());
Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error in fetching the cameras: $e');
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Classified App',
      theme: ThemeData(primaryColor: Colors.orange[200]),
      routes: <String, WidgetBuilder>{

      MAIN_UI: (BuildContext context) => MainUI(),
        // SPLASH_SCREEN: (BuildContext context) => AnimatedSplashScreen(),
      },
      initialRoute:  MAIN_UI,
    );
  }
}
