import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screence/Mobile_Charts_Screen.dart';
import 'package:whatsapp_ui/rsource/baggroundColor.dart';

import '../rsource/info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),

            child: ListView.builder(
              shrinkWrap: true,
                itemCount: info.length,
                itemBuilder: (context,index){
                    return Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>MobileChartsScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom:8.0),
                            child: ListTile(
                              title: Text(info[index]["name"].toString(),style: TextStyle(fontSize: 18)),
                              subtitle: Padding(
                                padding: EdgeInsets.only(top: 6),
                                  child: Text(info[index]["message"].toString(),style: TextStyle(fontSize: 15),)
                              ),
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    info[index]["profilePic"].toString(),
                                ),
                                radius: 30,
                              ),
                              trailing:Text(info[index]["time"].toString(),style: TextStyle(fontSize: 13,color: Colors.grey)) ,
                            ),
                          ),
                        ),
                          const Divider(color: dividerColor,indent: 85,)
                      ],
                    );
                }
            )
    );
  }
}
