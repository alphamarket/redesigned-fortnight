import 'package:flutter/material.dart';

Directionality T(String text) {
  return Directionality(textDirection: TextDirection.rtl, child: Text(text),);
}