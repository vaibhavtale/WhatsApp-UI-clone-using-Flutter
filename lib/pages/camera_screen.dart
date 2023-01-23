import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraScreen extends StatefulWidget {


  List <CameraDescription> cameras;

  CameraScreen(this.cameras);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('CAMERA', style: TextStyle(
        fontSize: 20.00
      ),),
    );
  }
}