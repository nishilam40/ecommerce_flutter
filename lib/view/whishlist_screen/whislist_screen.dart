import 'package:ecommerce_flutter/dummy_db.dart';
import 'package:ecommerce_flutter/utlis/color_constants.dart';
import 'package:ecommerce_flutter/utlis/image_constants.dart';
import 'package:ecommerce_flutter/view/global_widgets/customtextfield.dart';
import 'package:ecommerce_flutter/view/whishlist_screen/widgets/whishlist.items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class WhislistScreen extends StatelessWidget {
  const WhislistScreen({
    super.key,
  
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        
        leading:
         Padding(
           padding: const EdgeInsets.all(12.0),
           child: CircleAvatar(
             child: Icon(
              Icons.menu,size: 24,),
           ),
         ),
         title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(ImageConstants.MyAPPLOGO,
            height: 31,
            width: 38,
            fit: BoxFit.fill,
            ),
            SizedBox(width: 9,),
            Text("stylish",style: 
            GoogleFonts.libreCaslonText(

           
              color: ColorConstants.PRIMARY,
              fontSize: 18,
              fontWeight: FontWeight.bold

            ),
            )
          ],
         ),
         actions: [
          CircleAvatar(
            radius: 20,
          backgroundImage: NetworkImage("https://images.pexels.com/photos/11336784/pexels-photo-11336784.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
          )
         ],
      ),
      body: SingleChildScrollView(
        
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: CustomTextField(),
            ),
            // section2
        
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Row(
                    children: [
                      Text("52,082+ Items ",style: GoogleFonts.montserrat(fontSize:18,fontWeight:FontWeight.w600),),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration( color: ColorConstants.WHITE,borderRadius:BorderRadius.circular(6) ),
                        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                        child: Row(
                          children: [Text("sort",style: GoogleFonts.montserrat(fontSize:12,fontWeight:FontWeight.w600),),Icon(Icons.swap_vert)],
                  
                        ),
                      ),
                      SizedBox(width: 12,),
                      Container(
                      
                         decoration: BoxDecoration( color: ColorConstants.WHITE,borderRadius:BorderRadius.circular(6) ),
                        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                        child: Row(
                          children: [
                            Text("filter"),
                            Icon(Icons.filter_alt_off_outlined)
                          ],
                        ),
                        
                      )
                    ],
                  ),
                ),
              ]
            ),

            SizedBox(height: 16,),
            MasonryGridView.builder(
              itemCount: Dummydb.wishListItems.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) => 
              WhislistItemCard(
               imageUrl: Dummydb.wishListItems[index]["imageUrl"], 
                 des: Dummydb.wishListItems[index]["des"], 
                  price: Dummydb.wishListItems[index]["rate"], 
                 ratings: Dummydb.wishListItems[index]["rating"], 
                 ratingCount: Dummydb.wishListItems[index]["rating_count"], 
                 title: Dummydb.wishListItems[index]["title"], 

              )
              // Container(
              //   height: index.isEven ?300:200,
              //   color: Colors.green,
              // ),

             )
            
          ]
        )
        )
    );
  }
}