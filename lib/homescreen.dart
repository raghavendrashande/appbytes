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
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: SwipableStack(
          onSwipeCompleted: (index, direction) {
            print('$index, $direction');
          },
          builder:(context, swipeProperty) {
            return Newscard(
          title: 'Heading is hugeeeeeeeeeeeee',
          bodytxt: 'Body text \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
          src: 'data:image/jpeg;base64,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',
            );
          },
        )
      );
  }
}