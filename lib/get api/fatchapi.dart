import 'dart:convert';

import 'package:api_request/get%20api/model.dart';
import 'package:http/http.dart'as http;


List<Welcome> dataList=[];
late Welcome welcome;


 Future fatchData()async{

    var  url="https://jsonplaceholder.typicode.com/posts";

    var respons= await http.get(Uri.parse(url));

    // print("fetch data print ${respons.body}");

    if(respons.statusCode==200){
      var data=jsonDecode(respons.body);
      for(var item in data){
        welcome=Welcome.fromJson(item);
        dataList.add(welcome);
      }
      return dataList;
    }




  }
