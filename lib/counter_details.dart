import 'package:flutter/material.dart';

class ImprovedCounter extends StatelessWidget {
  final int count;
  final VoidCallback onIncrement;
  final VoidCallback onReset;
  final String title;

  const ImprovedCounter({
    Key? key,
    required this.count,
    required this.onIncrement,
    required this.onReset,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 4,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Text(
            count.toString().padLeft(4, '0'),
            style: TextStyle(
                fontSize: 60, color: const Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: onReset,
              child: Text("Reset"),
              style: ElevatedButton.styleFrom(),
            ),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: onIncrement,
              child: Icon(Icons.add),
              style: ElevatedButton.styleFrom(
                shape: OvalBorder(),
                padding: EdgeInsets.all(20),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
