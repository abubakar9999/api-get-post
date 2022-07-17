// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));



class Welcome {
    Welcome({
        this.userId,
        this.id,
        this.title,
        this.body,
    });

    int? userId;
    int ?id;
    String ?title;
    String ?body;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

 
}
