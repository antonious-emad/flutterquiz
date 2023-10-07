import 'package:flutter/material.dart';
import 'package:quiz/providers/sharedprefrence.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier{
  String currentLocale = "en";
  int index=0;
  int screenoneindex=0;
  int screenthreeindex=0;
  void changeindex(int value){
    index=value;
    notifyListeners();

  }
  void changescreenoneindex(int value){
    screenoneindex=value;
    notifyListeners();

  }
  void changescreenthreeindex(int value){
    screenthreeindex=value;
    notifyListeners();

  }

  ThemeMode mode = ThemeMode.light;
  SharedPreferences? prefs;
  void initializeSharedpref() async {
    prefs= await SharedPreferences.getInstance();
  }
  void getThemeAndLang(){
    String language=Shared.prefs?.getString("lang")??"en";
    currentLocale=language;
    String theme=Shared.prefs?.getString("theme")??"$mode";
    if(theme=='$mode'){
      mode=ThemeMode.light;
    }
    else{
      mode=ThemeMode.dark;
    }
  }
  void changeTheme(ThemeMode modee){
    mode=modee;
    Shared.prefs?.setString("theme", "$modee");
    notifyListeners();
  }
  void changelang(String lang){
    currentLocale=lang;
    Shared.prefs?.setString("lang", lang);
    notifyListeners();
  }
  void setCurrentMode(ThemeMode newMode){
    mode = newMode;
    notifyListeners();
  }
  bool isDarkEnabled() => mode == ThemeMode.dark;
  void setCurrentLocale(String newLocale){
    currentLocale = newLocale;
    notifyListeners();
  }
}