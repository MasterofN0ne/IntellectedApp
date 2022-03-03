import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'post_requirements.dart';

const mathColor = Color(0xFF8c1a32);
const phyColor = Color(0xFF26856b);
const chemColor = Color(0xFF1e3264);
const bioColor = Color(0xFF8d68ab);
const turkColor = Color(0xFFe41e33);
const histColor = Color(0xFFba5d08);
const geoColor = Color(0xFF445d6a);

List<Widget> widgets = [
  ReusableCard(
    boxColor: mathColor,
    innerText: 'Math',
  ),
  ReusableCard(
    boxColor: phyColor,
    innerText: 'Physics',
  ),
  ReusableCard(
    boxColor: chemColor,
    innerText: 'Chemistry',
  ),
  ReusableCard(
    boxColor: bioColor,
    innerText: 'Biology',
  ),
  ReusableCard(
    boxColor: turkColor,
    innerText: 'Turkish',
  ),
  ReusableCard(
    boxColor: histColor,
    innerText: 'History',
  ),
  ReusableCard(
    boxColor: geoColor,
    innerText: 'Geography',
  ),
];

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IntellectEd'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: FittedBox(
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
                child: Row(
                  children: widgets,
                ),
              ),
            ),
          ),
          Container(
            child: ListView(
              children: [
                getPost(context, 0),
              ],
            ),
          ),
        ],
      ),
      /* bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_outlined),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined),
            label: 'Teachers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
      ),*/
    );
  }
}

class ReusableCard extends StatelessWidget {
  final innerText;
  final boxColor;
  const ReusableCard({required this.innerText, required this.boxColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 20),
      height: 100.0,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              innerText,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
