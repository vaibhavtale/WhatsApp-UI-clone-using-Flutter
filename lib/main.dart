import 'package:flutter/material.dart';
import 'home.dart';
import 'package:camera/camera.dart';

List <CameraDescription>? cameras;

Future <Null> main() async {
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     title: "WhatsApp",
      theme: ThemeData(
        primarySwatch : Colors.green,

      ),
      home: WhatsAppHome(),
    );
  }
}
