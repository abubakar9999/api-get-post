import 'package:api_request/get%20api/fatchapi.dart';
import 'package:api_request/get%20api/model.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:api_request/get%20api/model.dart';
import 'package:http/http.dart'as http;

// List<Welcome> dataList =[];
class GetData extends StatefulWidget {
  
  const GetData({Key? key}) : super(key: key);

  @override
  State<GetData> createState() => _GetDataState();
  
}


class _GetDataState extends State<GetData> {

  
 Future fatchData()async{

    var  url="https://jsonplaceholder.typicode.com/posts";

    var respons= await http.get(Uri.parse(url));

    // print("fetch data print ${respons.body}");

    if(respons.statusCode==200){
      var data=jsonDecode(respons.body);
      for(var item in data){
        welcome=Welcome.fromJson(item);
        setState(() {
          dataList.add(welcome);
        });
      }
      return dataList;
    }




  }






  var data;
  
  @override
  void initState() {
    super.initState();
    fatchData();
    print("init data print ");
  }

  
  

  @override
  Widget build(BuildContext context) {
    print(data);
    return Scaffold(
      appBar: AppBar(
        title: Text("Get data"),
      ),
      body:
      // dataList.isEmpty?Center(child: CircularProgressIndicator()):
      
       Column(
        children: <Widget>[
          Expanded(
          
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: dataList.length,
              itemBuilder: (context,index) {
                data=  dataList[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Center(
                        child: Text(data.id.toString()),
                      ),
                    ),
                
                    title: Text(data.title.toString()),
                    subtitle: Text(data.body.toString()),
                  ),
                );
                
              }),
          )
        ],
      ),
    );
  }
}