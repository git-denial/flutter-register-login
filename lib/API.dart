import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Map<String,dynamic>> login(String email, String password) async {
  var res =  await http.post(
    Uri.parse('https://reqres.in/api/login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': email,
      'password': password
    }),
  ).catchError((e){
    debugPrint(e);
  });

  if(res.statusCode == 200)
    return jsonDecode(res.body);
  else
    return jsonDecode('{"error":"Failed"}');
}