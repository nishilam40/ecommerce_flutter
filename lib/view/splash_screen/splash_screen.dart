import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
       
            Image.asset("assests/images/app_logo.png",
            height: 100,
            width: 125,
            fit: BoxFit.fill,
            )  ,
            SizedBox(width: 9,),
            Text("stylish",style: TextStyle(
              color: Color(0xffF83758),
              fontSize: 40,
              fontWeight: FontWeight.bold

            ),)
           
          ],
        ),
      ),
    );
  }
}