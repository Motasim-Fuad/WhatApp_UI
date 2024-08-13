import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/My_MessagesCard.dart';
import 'package:whatsapp_ui/widgets/Sender_message_Card.dart';

import '../rsource/info.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
        itemBuilder: (context, index){
          if(messages[index]["isMe"]== true){
            //My Messages--> card hisaba thakba
            return MyMessageCard(messages: messages[index]["text"].toString(), date: messages[index]["time"].toString());
          }
          return SenderMessageCard(messages: messages[index]["text"].toString(), date: messages[index]["time"].toString());

        }

    );
  }
}
