import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  final String name;
  final VoidCallback? onDeletePressed;
  final Color? color;
  const MyCard({
    super.key,
    required this.name,
    this.onDeletePressed,
    this.color,
  });

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: widget.color ?? Color.fromARGB(255, 165, 41, 248)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.name,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            IconButton(onPressed: widget.onDeletePressed, icon: Icon(Icons.delete))
          ],
        ),
      ),
    );
  }
}
