import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black12),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 2,
          bottom: 2,
          left: 10,
          right: 10,
        ),
        child: Container(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                  radius: 35,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 33,
                    child: Container(
                      margin: EdgeInsets.only(left: 40),
                      child: index == 0
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 10,
                                    child: Icon(Icons.add,
                                        color: Colors.white, size: 20),
                                  ),
                                ),
                              ],
                            )
                          : null,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
