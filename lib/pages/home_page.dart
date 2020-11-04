import'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  static final String id="home_page";
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Instagram',style:TextStyle(fontFamily:'Billabong',fontSize:35,),),
        centerTitle:true,
      ),
      body:Center(
        child:Text('flutter demo app',style:TextStyle(fontSize:30,),),
      )
    );
  }
}