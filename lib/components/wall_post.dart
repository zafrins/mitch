import 'package:flutter/material.dart';

class WallPost extends StatelessWidget {
  final String message;
  final String user;

  const WallPost({super.key,
  required this.message,
  required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular( 8),
      ),
      margin: EdgeInsets.only(top: 25,left: 25,right: 25),
      padding: EdgeInsets.all(25),
      child: Row (
        children: [
          Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text (
                  user,
              style: TextStyle(color: Colors.grey[300]),),
              Text (message),
            ],
          )
        ],
      ),
    );
  }
}
