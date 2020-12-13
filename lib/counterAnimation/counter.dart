import 'package:flutter/material.dart';

import 'counterAnimation.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String count = "10095";
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            height: 130,
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2.0),
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Counter Aniamtion",
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
                Container(
                    constraints: BoxConstraints(maxHeight: 60.0),
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                            List.generate(count.split("").length, (index) {
                          return CounterAnimation(
                              count: count.substring(index, index + 1));
                        })))
              ],
            ),
          ),
        ));
  }
}
