import 'dart:js';
import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_flutter/dummy_db.dart';
import 'package:ecommerce_flutter/utlis/color_constants.dart';
import 'package:ecommerce_flutter/utlis/image_constants.dart';
import 'package:ecommerce_flutter/view/global_widgets/customtextfield.dart';
import 'package:ecommerce_flutter/view/home_screen/widgets/custom_all_view_card.dart';
import 'package:ecommerce_flutter/view/home_screen/widgets/item_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                      Text("All Featured",style: GoogleFonts.montserrat(fontSize:18,fontWeight:FontWeight.w600),),
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
                SizedBox(height: 16,),
                // section 3
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:Row(
                    
                    children:List.generate(
                      Dummydb.featuredItemList.length,
        
                       (index) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage: NetworkImage(Dummydb.featuredItemList[index]["imgeurl"]),
                          
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text(Dummydb.featuredItemList[index]["name"])
                      ],
                    ))
                  ) ,
                )
              ],
            ),
           
             SizedBox(height: 30,),
        // section 4
            _buildCaroselsection(),
         SizedBox(height: 16,),
        // section 5
        
        _buildDaySection(),
         SizedBox(height: 16,),
        

        // section 6

        _specialOfferssection(),
         SizedBox(height: 16,),


          _buildTrendingProductSection(),
            ]
        ),
      ),
    
     );
      }

        Widget _buildTrendingProductSection() {
       return  Column(
         children: [
           customViewAllCard(
              backgroundcolor:ColorConstants.ORANGE ,
              icon: Icons.calendar_month_rounded,
              subtext:"Last Date 29/02/22 " ,
              title:"Deal of the Day" ,
            ),
         ],
       );
        }
        
      Widget _specialOfferssection(){
         return Padding(
           padding: const EdgeInsets.symmetric(horizontal: 16),
           child: Column(
            children: [
              Container(padding: EdgeInsets.symmetric(horizontal: 8,vertical: 12),
                child: Row(children: [
                  Image.network(ImageConstants.OFFER,height: 60,width: 75,fit: BoxFit.cover,
           
                  ),
                  SizedBox(width: 24,),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Special Offers",style: GoogleFonts.montserrat(
                                color:ColorConstants.BLACK,
                                fontWeight:FontWeight.w600,
                                fontSize:16
                              ),
                              )
                          ],
                        ),
                        SizedBox(height: 8,),
                        Text("We make sure you get the offer you need at best prices",
                        maxLines: 2,
                        style: GoogleFonts.montserrat(
                                color:ColorConstants.BLACK,
                               
                                fontSize:16
                              ),
                              
                        )
                      ],
                    ),
                  )
                ],),
           
              ),
              Container(
           
              ),
            ],
           
           ),
         );
      }
// section 5
  Widget _buildDaySection() {
    return Column(
      children: [
        customViewAllCard(
          backgroundcolor:ColorConstants.SECONDARY ,
          icon: Icons.alarm,
          subtext:"22hr  45m  20sec remaining" ,
          title:"Deal of the Day" ,
        ),
        SizedBox(height: 16),
        SingleChildScrollView(
  scrollDirection: Axis.horizontal,
   child: Row(
    children: List.generate(7, (index) =>  CustomItemCard()),
   ),
 ),
 

 SizedBox(height:16 ,),
 
 
 
      ],
 );
      
      
    
  }
  

  
//  section 4 
  CarouselSlider _buildCaroselsection() {
    return CarouselSlider.builder(
          itemCount:Dummydb.featuredItemList.length,
         
 
 options: CarouselOptions(
  
  height: 200,
    
    
    viewportFraction: 1,
    initialPage: 0,
    enableInfiniteScroll: true,
    reverse: true,
    autoPlay: true,
    autoPlayInterval: Duration(seconds: 2),
    autoPlayAnimationDuration: Duration(milliseconds: 1000),
    autoPlayCurve: Curves.bounceIn,
    
    scrollDirection: Axis.horizontal,
 ),
 itemBuilder: (context, index, realIndex) => Padding(
   padding: const EdgeInsets.symmetric(horizontal: 16),
   child: Container(
    decoration: BoxDecoration(
      
      image: DecorationImage(image: NetworkImage(Dummydb.featuredItemList[index]["imgeurl"]),
       fit: BoxFit.fill,
      ),
      // color: Colors.blue,
      borderRadius: BorderRadius.circular(20)
    ),
    // child: Center(child: Text(index.toString())),
   ),
 ),
 
  
 );
  }
 
 }

