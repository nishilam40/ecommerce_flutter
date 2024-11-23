import 'package:ecommerce_flutter/utlis/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomIdCard extends StatelessWidget {
  const CustomIdCard({super.key, required this.icon, required this.text, required this.color1, required this.color2});
  final IconData icon;
  final String text;
  final Color color1;
   final Color color2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
         children: [
          SizedBox(width: 140,),
         
          Positioned(
            right: 0,
            top: 2,
            bottom: 2,
      
            child: Container(
              padding: EdgeInsets.only(right: 8,left: 28),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    color1,
                   color2
                  ]
                 ),
                 color: Colors.black,
                 borderRadius: BorderRadius.circular(8)
              ),
           width: 120,
           alignment: Alignment.center,
           child: Text(text,style: GoogleFonts.montserrat(
            color:ColorConstants.WHITE,
            fontWeight:FontWeight.w700,
           
          ),
          

           ),
           
          ), ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  color1,
                  color2

                ]
              )


            ),
            child: Icon(icon,color: Colors.white,),
          )
          
         ],
      ),
    );
  }
}