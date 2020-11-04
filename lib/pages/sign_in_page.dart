import 'package:flutter/material.dart';
import 'package:realapp/pages/signup_page.dart';
import 'package:realapp/pages/home_page.dart';
class SignInPage extends StatefulWidget{
  static final String id="sign_in_page";
  @override
  _SignInPageState createState()=>_SignInPageState();
}
class _SignInPageState extends State<SignInPage>{
  TextEditingController _emailController=new TextEditingController();
  TextEditingController _passwordController=new TextEditingController();
  _doSignIn(){
    String email=_emailController.text;
    String password=_passwordController.text;
    if(email.isNotEmpty && password.isNotEmpty){
    Navigator.pushReplacementNamed(context,HomePage.id);
    }else{}
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
              Text('Instagram',style:TextStyle(fontFamily:'Billabong',fontSize:45),),
              Container(
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
              ),
              Container(
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
              ),
              Container(
                height:48,
                margin:EdgeInsets.only(left: 20,right: 20,top:15,),
                width:double.infinity,
                child:FlatButton(
                  onPressed: (){_doSignIn();},
                  color:Colors.blue,
                  child:Text('sign in',style:TextStyle(fontSize:16,color:Colors.white,),),
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(5),
                  ),
                ),
              ),
              Container(
                height: 48,
                margin: EdgeInsets.only(left: 20,right: 20,top:15,),
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children:[
                    Text('Don\'t have an account?',style:TextStyle(color:Colors.grey),),
                    SizedBox(width: 10,),
                   GestureDetector(
                     onTap:(){
                       Navigator.pushReplacementNamed(context,SignUpPage.id);
                     },
                     child:Text('Sign Up',style:TextStyle(fontWeight:FontWeight.bold,),),
                   ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}