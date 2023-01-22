import 'package:flutter/material.dart';
import 'package:whatsapp/modals/chat.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context,i)=> Column(
        children: <Widget>[

            Divider(
              height: 10.0,
            ),

          ListTile(
            leading: CircleAvatar(
              foregroundColor: Color(0xff075E54),
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummyData[i].url.toString()),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Text(
                  dummyData[i].name.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                Text(
                  dummyData[i].time.toString(),
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                )
              ],
            ),

            subtitle: Container(
              child: Text(
                dummyData[i].message.toString(),
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
            ),
          )
        ],
      ),
      itemCount: dummyData.length,
    );
  }
}
