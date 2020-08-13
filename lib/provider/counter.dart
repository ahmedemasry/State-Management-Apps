import 'package:flutter/cupertino.dart';

class Counter extends ChangeNotifier{
  int number;

  increment(){
    number++;
    notifyListeners();
  }
}