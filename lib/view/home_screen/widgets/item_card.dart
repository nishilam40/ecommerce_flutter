import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:ecommerce_flutter/utlis/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomItemCard extends StatelessWidget {
  const CustomItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.network(
            fit: BoxFit.cover,
            height: 124,width: 170,
            "https://images.pexels.com/photos/1462637/pexels-photo-1462637.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        ),
        SizedBox(height: 
        8),
        Text("Women pictured kurta",
        textAlign: TextAlign.start,
        style: GoogleFonts.montserrat(
                color:ColorConstants.BLACK,
                fontWeight:FontWeight.w600,
                fontSize:12
              ),
              ),
        SizedBox(height: 
        4),
         Text("Women pictured kurta",
         textAlign: TextAlign.start,
         style: GoogleFonts.montserrat(
                color:ColorConstants.BLACK,
                fontWeight:FontWeight.normal,
                fontSize:10
              ),),
         SizedBox(height: 
        4),
          Text("098876",style: GoogleFonts.montserrat(
                color:ColorConstants.BLACK,
                fontWeight:FontWeight.w500,
                fontSize:12
              ),),
          
          
          Row(
            children: [
              Text("4553",style: GoogleFonts.montserrat(
                color:ColorConstants.GREYSHADE6,decoration:TextDecoration.lineThrough,
                decorationColor:ColorConstants.GREYSHADE6,
               
                fontSize:12
              ),
              
              ),SizedBox(width: 4,),
              Text("40%Off",style: GoogleFonts.montserrat(
                color:ColorConstants.ORANGE,decoration:TextDecoration.lineThrough,
                decorationColor:ColorConstants.ORANGE,
               
                fontSize:12
              ),
              )
            ],
          ),SizedBox(height: 4,),
           Row(
            children: [
              RatingBar.readOnly(
                size: 14,
  filledIcon: Icons.star, 
  emptyIcon: Icons.star_border,
  initialRating: 4,
  maxRating: 5,
),
             Text("53678",
              style: GoogleFonts.montserrat(
                color:ColorConstants.GREYSHADE6,
                fontSize:10
              )
              )
            ],
           )
         
      ],
      ),
    );
  }
}


 