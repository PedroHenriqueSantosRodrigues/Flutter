import 'dart:html';

import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController(); //Variavel estatica

  bool isDarkTheme = false;
  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners(); //função para fazer as mudanças serem feitas
  }
}
