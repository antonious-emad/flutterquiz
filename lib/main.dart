import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/providers/settings_provider.dart';
import 'package:quiz/providers/sharedprefrence.dart';
import 'package:quiz/screen1.dart';
import 'package:quiz/screen2.dart';
import 'package:quiz/screen3.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Shared.prefs=await SharedPreferences.getInstance();
  runApp(ChangeNotifierProvider(
      create: (context)=>SettingsProvider()..getThemeAndLang(),
      child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Screen1.routeName,
        routes: {
          Screen1.routeName: (context)=> Screen1(),
          Screen2.routeName:(context) => Screen2(),
          Screen3.routeName:(context) => Screen3(),
          }
  );
  }
}
