import 'package:flutter/material.dart';
import 'package:realapp/pages/home_page.dart';
import 'package:realapp/pages/splash_page.dart';
import 'package:realapp/pages/sign_in_page.dart';
import 'package:realapp/pages/signup_page.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:SplashPage(),
      routes:{
        SplashPage.id:(context)=>SplashPage(),
        HomePage.id:(context)=>HomePage(),
        SignInPage.id:(context)=>SignInPage(),
        SignUpPage.id:(context)=>SignUpPage(),
      },
    );
  }
}
