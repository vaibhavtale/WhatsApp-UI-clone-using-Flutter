import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:whatsapp/main.dart';
import 'package:whatsapp/pages/calls_screen.dart';
import 'package:whatsapp/pages/camera_screen.dart';
import 'package:whatsapp/pages/chat_screen.dart';
import 'package:whatsapp/pages/status_screen.dart';

import 'main.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
with SingleTickerProviderStateMixin {
  
  TabController? _tabcontroller;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabcontroller =  TabController( vsync: this, initialIndex: 1, length: 4);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabcontroller,
          indicatorColor: Colors.white,
          tabs: <Widget>[
             Tab(icon: new Icon(Icons.camera_alt)),
             Tab(text: 'CHATS'),
             Tab(text: 'STATUS'),
             Tab(text: 'CALLS'),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0)
          ),
          Icon(Icons.more_vert)],
      ),
      body: TabBarView(
        controller: _tabcontroller,
        children: <Widget>[
          CameraScreen(widget.cameras),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(

        backgroundColor: Colors.lightGreen,
        child: Icon(Icons.message, color: Colors.white,),
        onPressed: () {
          debugPrint('it has been pressed');
        },
      ),
    );
  }
}
