import 'package:api_request/post%20api/registaion.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart'as http;

class AnotherApi extends StatefulWidget {
   AnotherApi({Key? key}) : super(key: key);

  @override
  State<AnotherApi> createState() => _AnotherApiState();
  TextEditingController emailcontrolar=TextEditingController();
  TextEditingController passwordcontrolar=TextEditingController();

  
}

class _AnotherApiState extends State<AnotherApi> {
  @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   emailController.dispose();
  //   passwordController.dispose();
  // }
  void login(String email,password)async{
    try {
      http.Response response =await http.post(Uri.parse("https://reqres.in/api/register"),
      body:{
        "email":email,
        "password":password

      }
      
      ,);
      if(response.statusCode==200){
         Fluttertoast.showToast(
        msg: "Your Registaion is Successfull",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.yellowAccent,
        textColor: Colors.white,
        fontSize: 16.0);
        
      }else{
         Fluttertoast.showToast(
        msg: "Your Registaion is faild",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
      }
      
    } catch (e) {
      print(e);
      
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign in "),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "enter your email"
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "enter your password"
              ),
           
            ), SizedBox(height: 40,),

            MaterialButton(onPressed: (){
              login(emailController.text, passwordController.text);
            },child:Text("submit")),

          ],
        ),
      ),
    );
  }
}