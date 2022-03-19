import 'package:flutter/material.dart';

Color getColorFromFlag(int imageFlag) {
  switch (imageFlag) {
    case 0:
      return Colors.green;
    case 1:
      return Colors.deepOrangeAccent;
    default:
      return Colors.yellow;
  }
}
