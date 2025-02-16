import 'package:flutter/material.dart';
import 'package:music_app/themes/dark_model.dart';
import 'package:music_app/themes/light_model.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeData _themeData=lightMode;

  ThemeData get themeData=>_themeData;

  bool get isDark=>_themeData==darkMode;

  set themeData(ThemeData themeData){
    _themeData=themeData;
    notifyListeners();
  }

  void toggleTheme(){
    if(_themeData==lightMode){
      themeData=darkMode;
    }
    else{
      themeData=lightMode;
    }
  }
}

