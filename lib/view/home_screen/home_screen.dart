import 'package:ecommerce_flutter/utlis/color_constants.dart';
import 'package:ecommerce_flutter/utlis/image_constants.dart';
import 'package:ecommerce_flutter/view/global_widgets/customtextfield.dart';
import 'package:flutter/material.dart';
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
          )
         ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: CustomTextField(),
          ),
          // section2

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("All Featured",style: GoogleFonts.montserrat(fontSize:18,fontWeight:FontWeight.w600),),
                    Spacer(),
                    Container(
                      child: Row(
                        children: [Text("sort",style: GoogleFonts.montserrat(fontSize:12,fontWeight:FontWeight.w600),),Icon(Icons.swap_vert)],
                
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text("flutter"),
                          Icon(Icons.filter_alt_off_outlined)
                        ],
                      ),
                      
                    )
                  ],
                ),
              ),
              SizedBox(height: 16,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                  children:List.generate(10, (index) => Column(
                    children: [
                      CircleAvatar(
                        radius: 30,

                      ),
                      SizedBox(height: 30,),
                      Text("All Featured")
                    ],
                  ))
                ) ,
              )
            ],
          )
        ],
      ),

    );
  }
 
}


 