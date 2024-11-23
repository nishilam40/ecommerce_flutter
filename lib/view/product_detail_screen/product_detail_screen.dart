import 'dart:ui';

import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:ecommerce_flutter/utlis/color_constants.dart';
import 'package:ecommerce_flutter/utlis/image_constants.dart';
import 'package:ecommerce_flutter/view/product_detail_screen/widgets/custom_id_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Productdetailscreen extends StatefulWidget {
  const Productdetailscreen({super.key});

  @override
  State<Productdetailscreen> createState() => _ProductdetailscreenState();
}

class _ProductdetailscreenState extends State<Productdetailscreen> {
  final controller=PageController();
  int clickedIndex=0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_left)),
        actions: [
          CircleAvatar(
            child: Icon(Icons.shopping_cart_rounded),
          ),
          SizedBox(width: 20,)
        ],
            
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 235,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: PageView.builder(
                    controller: PageController(),
                    itemCount: 10,
                  
                    itemBuilder:(context,index) =>
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(16),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: NetworkImage(ImageConstants.PRODUCT) 
                                                  
                                                  )
                                                  
                                                ),
                                ),
                              )
                              ),
                ),
              Positioned(
                top: 0,
                right: 28,
                bottom: 0,
        
                
                child: 
              
              InkWell(
                onTap: () {
                   controller.nextPage(duration: Duration(milliseconds: 8000), curve: Curves.bounceIn);
                  
                },
                child: CircleAvatar(
                  backgroundColor: ColorConstants.GREYSHADE1.withOpacity(.5),
                  child: Icon(Icons.arrow_forward_ios_outlined),
                  
                ),
              )
              ),
              Positioned(
                top: 0,
                left: 28,
                bottom: 0,
        
                
                child: 
              
              InkWell(
                onTap: () {
                  controller.previousPage(duration: Duration(milliseconds: 8000), curve: Curves.ease);
                  
                },
                child: CircleAvatar(
                  backgroundColor: ColorConstants.GREYSHADE1.withOpacity(.5),
                  child: Icon(Icons.arrow_back_ios_new_outlined),
                  
                ),
              )
              ),
              
        
              ]
            ),
            
            ),
            SmoothPageIndicator(controller: PageController(), count: 3,
            effect: ScrollingDotsEffect(
              activeDotScale: 1.4,
              maxVisibleDots: 5,
              radius: 10,
              spacing: 10,
              dotHeight: 9,
              dotWidth: 9
            ),
            ),
        
            // section 2
        
            SizedBox(height: 16,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Size 7uk",style: GoogleFonts.montserrat(
              color:ColorConstants.BLACK,
              fontWeight:FontWeight.w600,
              fontSize:16
            ),
            ),
                ),
                SizedBox(height: 22,),
                
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: List.generate(10, (index) => 
                        Padding(
                          padding:  EdgeInsets.only(right: index == 9 ? 0 :10),
                          child: InkWell(
                            onTap: (){
                                clickedIndex=index;
                            },
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color:clickedIndex==index? 
                                ColorConstants.PRIMARY
                                : ColorConstants.WHITE,
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(width: 1.5,color: ColorConstants.PRIMARY),
                                
                              ),
                              child: Text(
                                "${index + 1} Uk",
                                
                              style: GoogleFonts.montserrat(
                                fontSize:14,
                                fontWeight:FontWeight.w500,
                                color:clickedIndex==index? 
                                ColorConstants.WHITE
                                : ColorConstants.PRIMARY
                              ),),
                            ),
                          ),
                        )
                        ),
                      ),
                    ),
                  ),
                ),
        // section 3
        
               SizedBox(height: 16,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 16),
                 child: Column(
                  
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                 Text
                 ("NIke Sneakers",style: GoogleFonts.montserrat(
                             color:ColorConstants.BLACK,
                             fontWeight:FontWeight.w600,
                             fontSize:20
                           ),
                           
                           ),SizedBox(height: 16,),
                 
                   Text
                                ("Vision Alta Men’s Shoes Size (All Colours)",style: GoogleFonts.montserrat(
                               color:ColorConstants.BLACK,
                               fontWeight:FontWeight.w400,
                               fontSize:14
                             ),
                                ),
                   SizedBox(height: 16,),
                    Row(
                             children: [
                  RatingBar.readOnly(
                    size: 18,
                   filledIcon: Icons.star, 
                   emptyIcon: Icons.star_border,
                   initialRating: 4,
                   maxRating: 5,
                 ),
                 SizedBox(width: 14,),
                              Text("56,890",
                               style: GoogleFonts.montserrat(
                                 color:ColorConstants.GREYSHADE6,
                                 fontSize:14
                               )
                               )
                             ],
                            ),
                            SizedBox(height: 16,),
        
                           Row(
              children: [
                Text("₹2,999",style: GoogleFonts.montserrat(
                  color:ColorConstants.GREYSHADE6,decoration:TextDecoration.lineThrough,
                  decorationColor:ColorConstants.GREYSHADE6,
                 
                  fontSize:14
                ),
                
                ),
                SizedBox(width: 8,),
                Text("₹1,500",style: GoogleFonts.montserrat(
                  color:ColorConstants.BLACK,
                  decorationColor:ColorConstants.BLACK,
                  fontWeight:FontWeight.w600,
                 
                  fontSize:14
                ),
        
        
                ),
                SizedBox(width: 8,),
                Text("50% Off",style: GoogleFonts.montserrat(
                  color:ColorConstants.PINK2,
                  decorationColor:ColorConstants.PINK2,
                  fontWeight:FontWeight.w600,
                 
                  fontSize:14
                ),
        
        
                
                )
              ],
            ),
            SizedBox(height: 16,),
            Text("Product Details",
                               style: GoogleFonts.montserrat(
                                 color:ColorConstants.BLACK,
                                 fontSize:14,
                                  fontWeight:FontWeight.w600,
        
                               )
                               ),
                               SizedBox(height: 8,),
            Text("Perhaps the most iconic sneaker of all-time, this original Chicago? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More",
                               style: GoogleFonts.montserrat(
                                 color:ColorConstants.BLACK,
                                 fontSize:12,
                                  fontWeight:FontWeight.w400,
        
                               )
                               ),
                               SizedBox(height: 16,),
                               Row(
                                children: [
                                  Container(
                                    height: 24,
                                    width:110 ,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: ColorConstants.GREYSHADE7),
                                      borderRadius: BorderRadius.circular(4),
                                     
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.location_on,color: ColorConstants.GREYSHADE3,),
                                        SizedBox(width: 3,),
                                         Text("Nearest Store",
                               style: GoogleFonts.montserrat(
                                 color:ColorConstants.GREYSHADE7,
                                 fontSize:10,
                                  fontWeight:FontWeight.w600,
        
                               )
                               ),
                              

                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                   Container(
                                    height: 24,
                                    width:46 ,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: ColorConstants.GREYSHADE7),
                                      borderRadius: BorderRadius.circular(4),
                                     
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.lock,size: 16,
                                        color: 
                                         ColorConstants.GREYSHADE3,),
                                        SizedBox(width: 3,),
                                         Text("VIP",
                               style: GoogleFonts.montserrat(
                                 color:ColorConstants.GREYSHADE7,
                                 fontSize:10,
                                  fontWeight:FontWeight.w600,
        
                               )
                               ),
                              

                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                   Container(
                                    height: 24,
                                    width:96 ,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: ColorConstants.GREYSHADE7),
                                      borderRadius: BorderRadius.circular(4),
                                     
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.lock,size: 16,
                                        color: 
                                         ColorConstants.GREYSHADE3,),
                                        SizedBox(width: 3,),
                                         Text("Return policy",
                               style: GoogleFonts.montserrat(
                                 color:ColorConstants.GREYSHADE7,
                                 fontSize:10,
                                  fontWeight:FontWeight.w600,
        
                               )
                               ),
                              

                                      ],
                                    ),
                                  ),

                                ],
                               )
                               
        
                   
                 
                             ],
                           ),


               ),

              //  section 3
              SizedBox(height: 30,),
              Row(
children: [
              
              CustomIdCard(icon:Icons.shopping_cart, text: "Go To Cart", color1: ColorConstants.LINEAR,color2: ColorConstants.LIGHTBLUE ,
              ),
             
              CustomIdCard(icon:Icons.touch_app, text: "Buy Now", color1: ColorConstants.GREEN,color2: ColorConstants.LIGHTGREEN ,
              ),
]
              )
          ],
        ),
          ]
        ),
      )
    );
  }
}