import 'package:ecommerce_flutter/utlis/color_constants.dart';
import 'package:ecommerce_flutter/utlis/image_constants.dart';
import 'package:ecommerce_flutter/view/global_widgets/custom_button.dart';
import 'package:ecommerce_flutter/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(ImageConstants.GETSTARTED))
          
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70,bottom:34 ,left: 37,right: 37),
              child: Container(
               
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      ColorConstants.BLACK.withOpacity(0),
                      ColorConstants.BLACK.withOpacity(.6),
                      ColorConstants.BLACK.withOpacity(.7),
                      ColorConstants.BLACK.withOpacity(1),
                    ]
                  )
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("You want Authentic, here you go!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(color:ColorConstants.WHITE,
                  fontSize:32,
                  fontWeight:FontWeight.w600
                  ),
                  
                  ),
                  SizedBox(height: 14,),
                   Text("You want Authentic, here you go!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(color:ColorConstants.WHITE,
                  fontSize:14,
                  fontWeight:FontWeight.w600
                  ),
                  
                  ),
                  SizedBox(height: 44,),
                  CustomButton(buttonText: "Get Started",
                  onButtonPressed: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeScreen()
                  ), (route) =>false );
                },
                  )

                  ],
                  
                ),
              
              ),
            )
          ],
        ),
      )
    );
  }
}