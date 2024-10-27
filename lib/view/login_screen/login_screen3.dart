import 'package:ecommerce_flutter/utlis/color_constants.dart';
import 'package:ecommerce_flutter/view/get_start_screen/get_start_screen.dart';
import 'package:ecommerce_flutter/view/global_widgets/custom_button.dart';
import 'package:ecommerce_flutter/view/global_widgets/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen3 extends StatelessWidget {
  const LoginScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:
    Padding(
      padding: const EdgeInsets.all(20),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 19,horizontal: 17),
          child: Column(
            children: [
              Text("Forgot Password?",style: GoogleFonts.montserrat(
                color:ColorConstants.BLACK,
                fontWeight:FontWeight.w700,
                fontSize:36
              ),),

              SizedBox(height: 30,),
                            CustomInputField(hintText: "Enter your email address",
                prefixIcon:Icons.email,  
                            ),
                            SizedBox(height: 30,),

                            Text("We Will send you a message to set or reset your new password  ",
                            style: GoogleFonts.montserrat(fontSize:12,color:ColorConstants.GREYSHADE5),
                            ),
                        
                        SizedBox(
                  height: 30,
                ),
                
                 CustomButton(buttonText: "Submit",
                onButtonPressed: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>GetStartScreen()
                  ), (route) =>false );
                },
                
                ),

            ]
          )
        )
      )
    )
    );
  }
}