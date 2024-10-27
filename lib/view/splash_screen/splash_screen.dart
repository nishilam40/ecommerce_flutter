import 'dart:async';

import 'package:ecommerce_flutter/utlis/color_constants.dart';
import 'package:ecommerce_flutter/utlis/image_constants.dart';
import 'package:ecommerce_flutter/view/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
   Timer(Duration(seconds: 2), () { 
    Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()));
    
   });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
       
            Image.asset(ImageConstants.MyAPPLOGO,
            height: 100,
            width: 125,
            fit: BoxFit.fill,
            )  ,
            SizedBox(width: 9,),
            Text("stylish",style: 
            GoogleFonts.libreCaslonText(

           
              color: ColorConstants.PRIMARY,
              fontSize: 40,
              fontWeight: FontWeight.bold

            ),
            ),
           
          ],
        ),
      ),
    );
  }
}