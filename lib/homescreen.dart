import 'package:appbytes/apicall.dart';
import 'package:appbytes/newscard.dart';
import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';

class HomeSc extends StatefulWidget {
  const HomeSc({super.key});

  @override
  State<HomeSc> createState() => _HomeScState();
}

class _HomeScState extends State<HomeSc> {

  @override
  void initState(){
    super.initState();
    getdata();
  }
  int i=0;
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: FutureBuilder(future: getdata(), builder:  (context,snapshot){
                  if(snapshot.connectionState == ConnectionState.done){
                    return SwipableStack(
                      onWillMoveNext:(index, direction) {
                      i++;
                      return false;
                    },
                  builder:(context, swipeProperty) {
                  return Newscard(
                      title: titlesdata[i],
                      bodytxt: bodydata[i],
                      src: imgurldata[i],
                 );
          },
        );
                }
                else {
                    return const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: CircularProgressIndicator(),
                    );
                  }
              }
            )
      );
  }
}