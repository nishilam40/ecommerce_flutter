import 'package:ecommerce_flutter/utlis/image_constants.dart';
import 'package:ecommerce_flutter/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
void main(){
runApp(MyApp());


print(ImageConstants.MyAPPLOGO);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen() ,

    );
  }
}