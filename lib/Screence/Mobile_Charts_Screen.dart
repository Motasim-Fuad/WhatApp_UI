import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Responsive/NonScreenResponsive.dart';
import 'package:whatsapp_ui/widgets/chats_list.dart';


import '../rsource/baggroundColor.dart';
import '../rsource/info.dart';

class MobileChartsScreen extends StatelessWidget {
  const MobileChartsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NonScreenResponsive(
      screenName: Scaffold(
        appBar: AppBar(
          title: Text(info[0]["name"].toString()),
          centerTitle: false,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),
            IconButton(onPressed: (){}, icon: Icon(Icons.call)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
          ],
        ),
        body:   Column(
          children: [
            const  Expanded(
              child:ChatsList(),
            ),
            TextField(
              decoration:  InputDecoration(
                filled: true,

                fillColor:mobileChatBoxColor ,
                prefixIcon: Padding(padding:const EdgeInsets.symmetric(horizontal: 20),
                  child:  IconButton(onPressed: (){}, icon: const Icon(Icons.emoji_emotions_outlined,color: Colors.grey,)),
                ),
                suffixIcon: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){}, icon:const Icon(Icons.camera_alt_outlined,color: Colors.grey,)),
                      IconButton(onPressed: (){}, icon:const Icon(Icons.attach_file,color: Colors.grey)),
                      IconButton(onPressed: (){}, icon:const Icon(Icons.money,color: Colors.grey)),
                    ],
                  ),
                ),
                hintText: "Type aq messages",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:const BorderSide(width: 0, style: BorderStyle.none)
                ),
                contentPadding:const EdgeInsets.all(10),
              ),
            )
          ],
        ),
      ) ,
      size: 900,
    );
  }
}

