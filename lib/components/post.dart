import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Post extends StatelessWidget {
  final String user;
  final String place;
  final String userComment;
  final String imageURL;

  Post({
    this.user = '',
    this.place = '',
    this.userComment = '',
    this.imageURL = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: MediaQuery.of(context).size.width - 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.amber, radius: 18),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  user,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  place,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Icon(Icons.more_vert_rounded),
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(imageURL),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.favorite_border_outlined, size: 30),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(FeatherIcons.messageCircle, size: 30),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(FeatherIcons.send, size: 30),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(FeatherIcons.bookmark, size: 30),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text('Curtido por '),
                    Text(
                      'fulanodetal',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(' e '),
                    Text(
                      'outros',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      user,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Text(
                        userComment,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
