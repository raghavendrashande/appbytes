import 'package:flutter/material.dart';

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
                    Image(
                      image: NetworkImage(src),
                      fit: BoxFit.fitWidth,
                    ),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30
                      ),
                    ),
                    Text(
                      bodytxt,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
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