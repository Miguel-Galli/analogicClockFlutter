import 'package:flutter/material.dart';
import 'dart:math';

class HourPointer extends StatelessWidget {
  const HourPointer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heigth = MediaQuery.of(context).size.height;
    final hour = DateTime.now().hour.toDouble();
    final angle = (-pi * (hour / -12)) * 2;
    
    return RotatedBox(quarterTurns: 2,
      child: Transform.rotate(angle: angle,
      child: Transform.translate(
        offset: Offset(0, 20),
        child: Center(
          child: Container(
            height: heigth * 0.06,
            width: 4,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
          ),
        ),
      ),
      ),
    );
  }
}
