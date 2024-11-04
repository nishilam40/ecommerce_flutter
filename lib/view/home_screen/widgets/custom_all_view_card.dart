import 'package:ecommerce_flutter/utlis/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customViewAllCard extends StatelessWidget {
   Color  backgroundcolor;
  String title;
  IconData icon;
  String subtext;
   customViewAllCard({
    super.key,
    required this.backgroundcolor,required this.icon,required this.subtext,required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(
      
    
    
      padding: EdgeInsets.only(right: 12,left: 8,top: 8,bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
         color:backgroundcolor
    
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
              style: GoogleFonts.montserrat(
                color:ColorConstants.WHITE,
                fontWeight:FontWeight.w600,
                fontSize:16
              ),
              
              
              ),
              SizedBox(height: 8,),
              Row(
                children: [
                  Icon(icon,color: ColorConstants.WHITE,),
                  SizedBox(width: 5.5,),
                  Text(subtext,
                  style: GoogleFonts.montserrat(
                color:ColorConstants.WHITE,
                fontWeight:FontWeight.normal,
                fontSize:12
              ),
                  )
                ],
              )
            ],
          ),
          Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6,),
      decoration: BoxDecoration(
        border: Border.all(color:ColorConstants.WHITE,width: 1),
        borderRadius: BorderRadius.circular(4)
         
    
      ),
      child: Row(
        
        children: [
          Text("View All",
          style: GoogleFonts.montserrat(
            color:ColorConstants.WHITE,
            fontWeight:FontWeight.w600,
            fontSize:12
          ),
          ),
          Icon(Icons.arrow_forward_outlined,
           color:ColorConstants.WHITE,
          )
        ]
    )
    
    
            
                     
    
                     )
    
                    
        ]
      )
    )
    );
  }
}

