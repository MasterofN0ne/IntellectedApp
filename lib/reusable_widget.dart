import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color containerColor;
  final String containerText;
  const ReusableCard(
      {required this.containerColor, required this.containerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: containerColor,
      width: 200.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(containerText),
        ],
      ),
    );
  }
}
