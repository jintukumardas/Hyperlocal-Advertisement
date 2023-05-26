import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_classifiedappclone/Model/product.dart';
import 'package:flutter_classifiedappclone/UI/Widgets/display_ads.dart';
import 'package:flutter_classifiedappclone/UI/Widgets/products_list.dart';
import 'edittext.dart';
import 'preview_screen.dart';
import 'submitbutton.dart';

// class PostAdScreen extends StatelessWidget {
//
//   final File imageFile;
//   PostAdScreen({
//     required this.imageFile,
//   });
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           child: Container(
//             child: Column(
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     "Post an Ad",
//                      style: Theme.of(context).textTheme.titleMedium,
//                   ),
//                 ),
//                 // Padding(
//                 //   padding: const EdgeInsets.only(bottom: 32.0),
//                 //   child: Text(
//                 //     "Submit",
//                 //      style: Theme.of(context).textTheme.titleMedium,
//                 //   ),
//                 // ),
//                 Container(
//                   width: double.infinity,
//                   height: 300,
//                   child: Image.file(imageFile),
//                 ),
//                 EditText(title: "Post Name"),
//                 EditText(title: ""),
//                 EditText(title: "Email"),
//                 EditText(title: "Password"),
//                 SubmitButton(
//                   title: "Register",
//                   act: () {
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => AdScreeen(),
//                       ),
//                     );
//                   },
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 48.0),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Text(
//                         "Already exist account? ",
//                         style: TextStyle(fontSize: 17),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) =>
//                                 ProductList(product: Product(
//                                   remainingQuantity: 1, price: 'Rs. 200', company: 'AD', rating: 3, icon: 'assets/raf.jpg', name: 'AD POSTED',
//                                 ))
//                               ),
//                           );
//                         },
//                         child: Text(
//                           "Sign In",
//                           style: TextStyle(
//                               color: Theme.of(context).primaryColor,
//                               fontSize: 17),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


class PostAdScreen extends StatelessWidget {

  final File imageFile;
  PostAdScreen({
    required this.imageFile,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              Text("Ad Details",
                style: TextStyle(fontSize: 20)),
              SizedBox(
                width: 200.0,
                height: 300.0,
                child: Card(child: Image.file(imageFile)),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Post Headline',
                ),
              ),
            ],
          ),
        ));
  }

}