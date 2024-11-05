import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:ecommerce_flutter/utlis/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhislistItemCard extends StatelessWidget {
  const WhislistItemCard({
    super.key,
    required this.imageUrl,
  required this.title,
  required this.ratings,
  required this.ratingCount,
  required this.des,
   required this.price,
  });
  final String imageUrl;
final String title;
final double ratings;
final int ratingCount;
final double price;
final String des;

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
          
            imageUrl),
        ),
        SizedBox(height: 
        8),
        Text(title,
        textAlign: TextAlign.start,
        style: GoogleFonts.montserrat(
                color:ColorConstants.BLACK,
                fontWeight:FontWeight.w600,
                fontSize:12
              ),
              ),
        SizedBox(height: 
        4),
         Text(des,
         textAlign: TextAlign.start,
         style: GoogleFonts.montserrat(
                color:ColorConstants.BLACK,
                fontWeight:FontWeight.normal,
                fontSize:10
              ),),
         SizedBox(height: 
        4),
          Text(price.toString()
          ,style: GoogleFonts.montserrat(
                color:ColorConstants.BLACK,
                fontWeight:FontWeight.w500,
                fontSize:12
              ),),
          
          
          
          SizedBox(height: 4,),
           Row(
            children: [
              RatingBar.readOnly(
                size: 14,
  filledIcon: Icons.star, 
  emptyIcon: Icons.star_border,
  initialRating: 4,
  maxRating: 5,
),
             Text("($ratingCount)",
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


 