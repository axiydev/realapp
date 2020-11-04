import 'dart:async';
import 'package:flutter/material.dart';
import 'package:realapp/pages/home_page.dart';
import 'package:realapp/pages/sign_in_page.dart';
class SplashPage extends StatefulWidget{
  static final String id='splash_page';
  @override
  _SplashPageState createState()=>_SplashPageState();
}
class _SplashPageState extends State<SplashPage>{
  bool isLogger=false;
  _initTimer(){
    Timer(Duration(seconds:5),()async{
      if(isLogger){
      await Navigator.pushReplacementNamed(context, HomePage.id);}
      else{
        await Navigator.pushReplacementNamed(context,SignInPage.id);
      }
    });
  }
  void initState(){
    super.initState();
    _initTimer();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Container(
        padding:EdgeInsets.all(30),
        child:Stack(
          children:[
            Center(
              child:Image.asset('assets/images/ic_logo5.jpg',height: 100,width:100),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
                Center(
                  child:Text('From Facebook',style:TextStyle(color:Colors.red,fontSize:18)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
