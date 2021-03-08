import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String helloText = "Hello, flutter!";

  void changeHelloText(){
    helloText = "Good night, flutter!";
    notifyListeners();
  }
}