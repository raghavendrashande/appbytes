import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Newscard extends StatelessWidget {
   Newscard({
    super.key,
    required this.src,
    required this.title,
    required this.bodytxt,});
  
  String src;
  String title;
  String? bodytxt;



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
                    Container(
                      height: 100,
                      width: 300,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(src,
                          errorBuilder:(context, error, stackTrace) {
                            return Image.network(defaultimgurl);
                          },
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                    Text(
                      bodytxt!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 185, 184, 184),
                        fontSize: 12
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

String defaultimgurl ="data:image/jpeg;base64,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";