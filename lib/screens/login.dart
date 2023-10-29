import 'package:blog_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(children: [
      
          TextField(),
          SizedBox(height: 10,),
          TextField(),
          SizedBox(height: 10,),
          SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () {
            Get.to(Home());
          }, child: Text("Login"),))
        ],),
      ),
    );
  }
}