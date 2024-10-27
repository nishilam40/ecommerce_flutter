import 'package:ecommerce_flutter/utlis/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 9,
            color: ColorConstants.BLACK.withOpacity(.1)
          )
        ]
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderSide: BorderSide.none,
          
            
          ),
          suffixIcon: Icon(Icons.mic_none,
          color: ColorConstants.GREYSHADE6,),
          prefixIcon: Icon(Icons.search,
          color: ColorConstants.GREYSHADE6,),
          hintText: "Search any product...",
          hintStyle: GoogleFonts.montserrat(
            fontSize:14,color:ColorConstants.GREYSHADE6
          )
        ),
      ),
    );
  }
}