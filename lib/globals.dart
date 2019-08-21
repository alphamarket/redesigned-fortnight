import 'package:flutter/material.dart';

Directionality T(String text) {
  return Directionality(textDirection: TextDirection.rtl, child: Text(text),);
}

class User {
  String name, mobile;
  User(this.name, this.mobile);
}

class Globals {
  static User user = User("داریوش حسن‌پور", "+98 912 0686 119");
}