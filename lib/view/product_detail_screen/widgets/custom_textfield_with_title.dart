import 'package:ecommerce_flutter/utlis/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextfieldWithTitle extends StatelessWidget {
  const CustomTextfieldWithTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("title",
        style: GoogleFonts.montserrat(
            color:ColorConstants.BLACK,
            fontWeight:FontWeight.w500,
            fontSize:12
          ),
          
              ),
              SizedBox(height: 15,),
              TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),


                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.green),


                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.red),


                ),
              ),
              )
      ],
    );
  }
}