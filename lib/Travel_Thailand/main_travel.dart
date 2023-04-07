import 'package:finally_eiei/Travel_Thailand/travell_page_body.dart';
import 'package:finally_eiei/utils/color.dart';
import 'package:finally_eiei/utils/dimensions.dart';
import 'package:finally_eiei/widgets/big_text.dart';
import 'package:finally_eiei/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainTravel extends StatefulWidget {
  const MainTravel({Key? key}) : super(key: key);

  @override
  State<MainTravel> createState() => _MainTravelState();
}

class _MainTravelState extends State<MainTravel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          //showing the header
          Container(

      child: Container(
        margin : EdgeInsets.only(top: Dimensions.height45,bottom: Dimensions.height15),
        padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
              BigText(text:"Travelling", color :AppColors.mainColor, size: 30),
               Row(
                 children: [
                   SmallText(text: "for tourist",color: Colors.black54),
                   Icon(Icons.arrow_drop_down_rounded)
                 ],
               )
              ],
            ),
            Center(
              child: Container(
               width: Dimensions.height45,
                height: Dimensions.height45,
                child: Icon(Icons.search,color: Colors.white,size: Dimensions.iconSize24,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  color: AppColors.mainColor,
                ),
              ),
            )
          ],
        ),
      ),
          ),
          //showing the body
         Expanded(child: SingleChildScrollView(
         child: TravellPageBody(),
         )),
   ],
    ),
    );
}
}


