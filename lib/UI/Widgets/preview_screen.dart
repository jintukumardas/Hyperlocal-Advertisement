import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_classifiedappclone/UI/Widgets/post_ad.dart';
import 'camera_screen.dart';
import 'captures_screen.dart';
import 'post_ad.dart';

class PreviewScreen extends StatelessWidget {
  final File imageFile;
  final List<File> fileList;
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  PreviewScreen({
    required this.imageFile,
    required this.fileList,
  });

  @override
  Widget build(BuildContext context) {

    final loginButon = Material(
      elevation: 5.0,
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => PostAdScreen(
                imageFile: imageFile,
              ),
            ),
          );
        },
        child: Text("Select",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => CapturesScreen(
                      imageFileList: fileList,
                    ),
                  ),
                );
              },
              child: Text('Captured Images'),
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Image.file(imageFile),
          ),
          loginButon
        ],
      ),
    );
  }
}