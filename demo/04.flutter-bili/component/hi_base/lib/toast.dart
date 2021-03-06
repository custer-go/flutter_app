import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showWarnToast(String text) {
  Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    backgroundColor: Color.fromRGBO(0, 0, 0, 0.79),
    textColor: Colors.white,
  );
}

void showToast(String text) {
  Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
  );
}
