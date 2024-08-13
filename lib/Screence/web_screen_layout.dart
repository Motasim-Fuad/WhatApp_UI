import 'package:flutter/material.dart';
import 'package:whatsapp_ui/rsource/baggroundColor.dart';
import 'package:whatsapp_ui/widgets/chats_list.dart';

import '../Responsive/NonScreenResponsive.dart';
import '../widgets/web_chats_app_bar.dart';
import '../widgets/contract_list.dart';
import '../widgets/web_profile_bar.dart';
import '../widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // web profile bar
                  const WebProfileBar(),
                  //web search bar
                  const WebSearchBar(),
                  const ContactsList()
                ],
              ),
            ),
          ),
          //web Sreen
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/backgroundImage.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                //chat app bar
                Chats_App_Bar(),
                // chat list
                Expanded(child: ChatsList()),
                // massage input box

                Container(
                  height:  MediaQuery.of(context).size.height*0.08,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: dividerColor,
                      ),
                    ),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions_outlined,color: Colors.grey,)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.attach_file,color: Colors.grey,)),
                      Expanded(
                          child:Padding(padding: EdgeInsets.only(left: 10,right: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: searchBarColor,
                                  hintText: "Type a Messages",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(width: 0, style: BorderStyle.none)),
                                  contentPadding: EdgeInsets.only(left: 20)
                              ),
                            ),
                          )
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_voice_outlined,color: Colors.grey,)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );

  }
}

