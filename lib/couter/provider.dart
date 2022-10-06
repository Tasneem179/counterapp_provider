import 'package:flutter/material.dart';

class CouterProvider extends ChangeNotifier {
int counter=0;
void add ()
{
  counter++;
  notifyListeners();
}

void minus()
{
  counter--;
  notifyListeners();
}
}
