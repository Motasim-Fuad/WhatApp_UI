import 'package:flutter/material.dart';
import 'package:whatsapp_ui/rsource/baggroundColor.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.30,
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
        color: appBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        const  CircleAvatar(
            backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg"),
            radius: 20,
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
            ],
          )
        ],
      ),
    );
  }
}
