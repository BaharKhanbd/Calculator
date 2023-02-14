import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Button_Icon extends StatelessWidget {
  final String title;
  final VoidCallback onpased;

  Button_Icon({
    required this.title,
    required this.onpased,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: InkWell(
          onTap: onpased,
          child: Container(
            height: 75,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            child: Center(
                child: Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ),
    );
  }
}
