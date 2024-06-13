import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class Newscard extends StatelessWidget {
   Newscard({
    super.key,
    required this.src,
    required this.title,
    required this.bodytxt});
  
  String src;
  String title;
  String bodytxt;

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50,horizontal:20),
            child: Card(
              shadowColor: Colors.grey[700],
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              ),
              color: const Color.fromARGB(255, 14, 14, 14),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: NetworkImage(src),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24
                      ),
                    ),
                    Text(
                      bodytxt,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 185, 184, 184),
                        fontSize: 16
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: (){}, 
                          child: const Row(
                            children: [
                              Text(
                                'Read full article',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                                ),
                              ),
                              Icon(
                                Icons.link,
                                color: Colors.white
                              )
                            ],
                          )
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
  }
}