import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import './postList.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
            Text(
              'Instaclone',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Billabong',
                fontSize: 25,
              ),
            ),
            Icon(
              FeatherIcons.send,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 155,
              child: Padding(
                padding: EdgeInsets.all(0),
                child: PostList(),
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.black12),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.home_filled, size: 30),
                        Icon(Icons.search_outlined, size: 30),
                        Icon(Icons.add_box_outlined, size: 30),
                        Icon(Icons.favorite_outline, size: 30),
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
