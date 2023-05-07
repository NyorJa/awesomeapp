import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert' as convert;

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {
    Uri uri = Uri.https('jsonplaceholder.typicode.com', '/todos/1');
    Response response = await get(uri);
    if(response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
      print(jsonResponse);
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}
