import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String _category = 'All';
String get category=> _category;

void getCategory(value){
_category = value;
notifyListeners();
}
  
}