import 'package:flutter/material.dart';
import 'package:whatsapp_ui/rsource/baggroundColor.dart';

class SenderMessageCard extends StatelessWidget {
  final messages;
  final date;
  const SenderMessageCard({Key? key,required this.messages ,required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
        BoxConstraints(maxWidth: MediaQuery.of(context).size.width -45),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: senderMessageColor,
          margin:const EdgeInsets.symmetric(horizontal: 25,vertical: 5),
          child: Stack(
            children: [
              Padding(padding: const EdgeInsets.only(
                  left: 10,right: 30,top: 5,bottom: 20
              ),
                child: Text(messages,style: TextStyle(fontSize: 16),),
              ),
              Positioned(
                  bottom: 2,
                  right: 10,
                  child: Row(
                    children: [
                      Text(date, style: TextStyle(fontSize: 13,color: Colors.white60),),
                      SizedBox(width: 5,),
                      Icon(Icons.done_all,color: Colors.white60,),
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
