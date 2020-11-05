import 'package:flutter/material.dart';
import 'package:realapp/pages/sign_in_page.dart';
import 'package:realapp/pages/home_page.dart';
import 'package:realapp/animations/animation_page.dart';
class SignUpPage extends StatefulWidget{
  static final String id='signup_page';
  @override
  _SignUpPageState createState()=>_SignUpPageState();
}
class _SignUpPageState extends State<SignUpPage> with SingleTickerProviderStateMixin{
  AnimationController _scaleController;
  Animation<double> _scaleAnimation;

  TextEditingController _nameController=new TextEditingController();
  TextEditingController _emailController =new TextEditingController();
  TextEditingController _passwordController=new TextEditingController();
  _doSignUp(){
    String email=_emailController.text;
    String name=_nameController.text;
    String password=_passwordController.text;
    if(email.isNotEmpty && name.isNotEmpty && password.isNotEmpty) {
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }
  @override
  void initState(){
    super.initState();
    _scaleController=AnimationController(vsync:this,duration:Duration(milliseconds:300,),);
    _scaleAnimation=Tween(begin:1.0,end:30.0).animate(_scaleController)..addStatusListener((AnimationStatus status){
      if(status==AnimationStatus.completed){
      }
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Center(
        child:Container(
          width: double.infinity,
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              //instagram
              FadeAnimation(1,Text('Instagram',style:TextStyle(fontFamily:'Billabong',fontSize:45),)),
              FadeAnimation(1.1,Container(
                height:48,
                margin:EdgeInsets.only(left:20,right:20,top:15),
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(5),
                ),
                child:TextField(
                  controller:_nameController,
                  style:TextStyle(fontSize:18),
                  decoration: InputDecoration(
                    contentPadding:EdgeInsets.all(10),
                    hintText: 'Name',
                    hintStyle:TextStyle(color:Colors.grey,),
                    border:OutlineInputBorder(borderSide: BorderSide(color:Colors.teal),),
                  ),
                ),
              )),
              //email
              FadeAnimation(1.2,Container(
                height:48,
                margin:EdgeInsets.only(left:20,right:20,top:15),
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(5),
                ),
                child:TextField(
                  controller:_emailController,
                  style:TextStyle(fontSize:18),
                  decoration: InputDecoration(
                    contentPadding:EdgeInsets.all(10),
                    hintText: 'Email or Phone',
                    hintStyle:TextStyle(color:Colors.grey,),
                    border:OutlineInputBorder(borderSide: BorderSide(color:Colors.teal),),
                  ),
                ),
              )),
              //password
              FadeAnimation(1.3,Container(
                height:48,
                margin:EdgeInsets.only(left: 20,right:20,top:15),
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(5),
                ),
                child:TextField(
                  controller:_passwordController,
                  obscureText:true,
                  style:TextStyle(fontSize:18),
                  decoration:InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText:'Password',
                    hintStyle:TextStyle(color:Colors.grey,),
                    border:OutlineInputBorder(borderSide:BorderSide(color:Colors.teal,)),
                  ),
                ),
              )),
              //button
              FadeAnimation(1.4,Container(
                height:48,
                margin:EdgeInsets.only(left: 20,right: 20,top:15,),
                width:double.infinity,
                child:FlatButton(
                  onPressed: (){_doSignUp();},
                  color:Colors.blue,
                  child:Text('sign un',style:TextStyle(fontSize:16,color:Colors.white,),),
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(5),
                  ),
                ),
              )),
              //row
              FadeAnimation(1.5,Container(
                height: 48,
                margin: EdgeInsets.only(left: 20,right: 20,top:15,),
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children:[
                    Text('Already have an account?',style:TextStyle(color:Colors.grey),),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap:(){
                        Navigator.pushReplacementNamed(context,SignInPage.id);
                      },
                      child:Text('Log In',style:TextStyle(fontWeight:FontWeight.bold,),),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}