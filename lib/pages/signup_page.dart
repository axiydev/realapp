import 'package:flutter/material.dart';
class SignUpPage extends StatefulWidget{
  static final String id='signup_page';
  @override
  _SignUpPageState createState()=>_SignUpPageState();
}
class _SignUpPageState extends State<SignUpPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
          child:Center(
            child:Text('Welcome to Sign Up',style:TextStyle(fontSize:30),),
          )
      ),
    );
  }
}