import 'package:ecommerce_flutter/utlis/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputField extends StatelessWidget {

  String? hintText;
  IconData? prefixIcon;
  IconData?suffixIcon;
  
   CustomInputField({
   this.hintText,this.prefixIcon, this.suffixIcon


  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorConstants.GREYSHADE4,
       hintText: hintText,
       hintStyle: GoogleFonts.montserrat(
        color:ColorConstants.GREYSHADE5,
        fontWeight:FontWeight.w600,
        fontSize:12
       ),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: Icon(suffixIcon),
        
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: ColorConstants.GREYSHADE1)
        ),

        
        
        
      ),
    );
  }
}