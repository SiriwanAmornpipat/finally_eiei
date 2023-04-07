import 'package:finally_eiei/utils/color.dart';
import 'package:finally_eiei/widgets/app_column.dart';
import 'package:finally_eiei/widgets/app_icon.dart';
import 'package:finally_eiei/widgets/big_text.dart';
import 'package:finally_eiei/widgets/icon_and_Text_widget.dart';
import 'package:finally_eiei/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class PopularTourDetail extends StatelessWidget {
  const PopularTourDetail({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
           width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit:BoxFit.cover,
                  image: AssetImage(

                  "assets/image/tungdokkhadart.jpg"
                  )
                  )
                ),
          )),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             AppIcon(icon: Icons.arrow_back_ios),
             ],
            ),
          ),
          Positioned(
            left: 0,
              right: 0,
              top: Dimensions.popularFoodImgSize-20,
              child: Container(
               padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.height20),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(
                     topRight:Radius.circular(Dimensions.radius20),
                     topLeft:Radius.circular(Dimensions.radius20)
                 ),
                 color: Colors.white
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children:[
                   AppColumn(text: "Interesting place",),
                   SizedBox(height: Dimensions.height20,),
                   BigText(text: "ที่มาที่ไป")
              ],
               )
              ))
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
          topLeft:Radius.circular(Dimensions.radius20*2),
          topRight: Radius.circular(Dimensions.radius20*2),
          )
        ),
        child: Row(
          children: [
           Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(Dimensions.radius20),
               color: Colors.white
             ),

           )
          ],
        ),
      ),
    );
  }
}
