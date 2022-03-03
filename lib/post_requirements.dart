import 'package:flutter/material.dart';

const username = 'serhat';
const poststate = 'Life is good';
Color favColor = Colors.white;

class UserPost {
  late String userName;
  late Image profilePic;
  late String postStatement;
  late Image postImage;

  userPost(
      {required String usName,
      required Image profPic,
      required String postStat,
      required postimg}) {
    userName = usName;
    profilePic = profPic;
    postStatement = postStat;
    postImage = postimg;
  }
}

Widget getPost(BuildContext context, int index) {
  UserPost upost = UserPost();
  upost.userName = 'serhat';
  upost.postStatement = 'gonna roll tonight';
  upost.profilePic = Image(
    image: AssetImage('assets/rickrollprofilepic.png'),
  );
  upost.postImage = Image(
    image: AssetImage('assets/rickdancing.jpeg'),
  );
  return Container(
    height: 300,
    width: 250,
    color: Colors.black,
  );
}
