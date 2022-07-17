import 'dart:convert';

import 'package:api_request/post%20api/registaion.dart';
import 'package:api_request/post%20api/token.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

getRegistaion() async {
  var map = Map<dynamic, String>();
  map["name"] = nameController.text.toString();
  map["email"] = emailController.text.toString();
  map["password"] = passwordController.text.toString();
  map["password_confirmation"] = confromPassword.text.toString();

  var respons = await http.post(
      Uri.parse("https://apihomechef.antopolis.xyz/api/admin/create/new/admin"),
      headers: CustomHttpRequest.defaultHeader,
      body: map);

  print(respons.body);

  var data = jsonDecode(respons.body);
  if (respons.statusCode == 200) {
    Fluttertoast.showToast(
        msg: "Your Registaion is Successfull",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  } else {
    Fluttertoast.showToast(
        msg: "Your Registaion faild",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
