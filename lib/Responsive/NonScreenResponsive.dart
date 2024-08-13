import 'package:flutter/material.dart';


import '../main.dart';

class NonScreenResponsive extends StatelessWidget {
  final Widget screenName;
  final double size;
  const NonScreenResponsive({Key? key,required this.size,required this.screenName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ( context,constrains){
      if(constrains.maxWidth < size){
        return screenName;
      }else{
        return Scaffold(
          body: Center(
            child: TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>MyApp()));
            }, child: Text("Reload")),
          ),
        );
      }
    }
    ) ;
  }
}
