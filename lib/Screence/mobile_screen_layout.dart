import 'package:flutter/material.dart';
import 'package:whatsapp_ui/rsource/baggroundColor.dart';
import 'package:whatsapp_ui/widgets/contract_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return  DefaultTabController(
      length: 3,
      child:Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: const Text("Whatsapp",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
          centerTitle: false,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search),color: Colors.grey,),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),color: Colors.grey,),
          ],

          bottom:TabBar(
              indicatorColor: tabColor,
              indicatorWeight: 5,
              labelColor: tabColor,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: "CHATS",),
                Tab(text: "STATUS",),
                Tab(text: "CALL",),
              ]
          ),
        ),
        body: const ContactsList(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: tabColor,
          child: const Icon(Icons.comment,color: Colors.white,),
        ),
      )
  );
  }
}
