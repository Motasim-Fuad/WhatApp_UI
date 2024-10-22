import 'package:flutter/material.dart';
import 'package:whatsapp_ui/rsource/baggroundColor.dart';

import '../rsource/info.dart';

class Chats_App_Bar extends StatelessWidget {
  const Chats_App_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.75,
      padding: EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60"),
                radius: 30,
              ),
              SizedBox(width:  MediaQuery.of(context).size.width*0.01,),
              Text(info[5]["name"].toString(),style: TextStyle(fontSize: 15),)
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
            ],
          )
        ],
      ),
    );
  }
}
