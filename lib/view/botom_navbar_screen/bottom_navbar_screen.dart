import 'package:ecommerce_flutter/utlis/color_constants.dart';
import 'package:ecommerce_flutter/view/home_screen/home_screen.dart';
import 'package:ecommerce_flutter/view/product_detail_screen/product_detail_screen.dart';
import 'package:ecommerce_flutter/view/whishlist_screen/whislist_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int selectedIndex=0;
  final List screens=[
    HomeScreen(),
   WhislistScreen(),
  //  Productdetailscreen(),
    Center(child: Text("Wish list"),),
    Center(child: Text("Search"),),
    Center(child: Text("Settings"),),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100)
      ),onPressed: () {
        
        
      },),
      body: screens[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: ColorConstants.PRIMARY,
        onTap: (value){
          setState(() {
            selectedIndex=value;
            print(selectedIndex);
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(
          
          icon: Icon(Icons.home,
          size: 20,
          color: ColorConstants.RED
          
          
          ), label: "home" ,
        
        ),
         BottomNavigationBarItem(icon: Icon(Icons.favorite,
         

         ), label: "Wislist"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
           BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
           
       
        
      ],),
    );
  }
}