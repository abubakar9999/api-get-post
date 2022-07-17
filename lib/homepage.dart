import 'package:api_request/another%20post%20api/postapi.dart';
import 'package:api_request/get%20api/fatchapi.dart';
import 'package:api_request/get%20api/show_data.dart';
import 'package:api_request/post%20api/registaion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Api "),),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.blueGrey,
                
                onPressed: (){
             
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=> GetData()));
               
                },
              child: Text("Get Api"),
              ),
              MaterialButton(
                color: Colors.blueGrey,
                
                onPressed: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Registation()));},
              child: Text("post Api"),
              
              ),
              MaterialButton(
                color: Colors.blueGrey,
                
                onPressed: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AnotherApi()));},
              child: Text("Anathor post Api"),
              ),
              
            ],
          ),
        ),
      ),
    );
    
  }
}