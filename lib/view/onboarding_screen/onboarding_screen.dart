import 'package:ecommerce_flutter/utlis/color_constants.dart';
import 'package:ecommerce_flutter/utlis/image_constants.dart';
import 'package:ecommerce_flutter/view/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        Padding(
          padding: const EdgeInsets.only(left: 17),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("1",
              style: GoogleFonts.montserrat(
                color:ColorConstants.BLACK,
                fontWeight:FontWeight.w600,
                fontSize:18
                
              ),
              
              ),
          
               Text("/3",
              style: GoogleFonts.montserrat(
                color:ColorConstants.GREYSHADE3,
                fontWeight:FontWeight.w600,
                fontSize:18
                
              ),
              
              ),
              
            ],
          ),
        ) ,
        actions: [

          InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
              LoginScreen()
              ));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 17),
              child: Text("Skip",style: GoogleFonts.montserrat(
                 color:ColorConstants.BLACK,
                  fontWeight:FontWeight.w600,
                  fontSize:18
              ),),
            ),
          )
        ],

        
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImageConstants.FASHIONSHOP,
              height: 300,
              width: 300,
             
              ),
          
              SizedBox(height: 15),
               Text("Choose Product",style:  GoogleFonts.montserrat(
                 color:ColorConstants.BLACK,
                  fontWeight:FontWeight.w900,
                  fontSize:28
          
               
              )),
               SizedBox(height: 10,),
               Text("Amet minim mollit non desert ullomco est sit aliqua dolor do amet sint.velit officia consequent duis enim velit  ",
               textAlign: TextAlign.center,
               style:  GoogleFonts.montserrat(
                 color:ColorConstants.GREYSHADE1,
                  fontWeight:FontWeight.w600,
                  fontSize:14,
               ),
              
               
               ),
               
          
               
              
            ],
            
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 19,left: 24),
            child: Text("Next",
            style:  GoogleFonts.montserrat(
                 color:ColorConstants.PRIMARY,
                  fontWeight:FontWeight.w600,
                  fontSize:18
            
            
            )
            ),
          )
        ],
      ),
    );
  }
}