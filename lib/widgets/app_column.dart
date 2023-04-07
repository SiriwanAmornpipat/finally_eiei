import 'package:finally_eiei/utils/color.dart';
import 'package:finally_eiei/utils/dimensions.dart';
import 'package:finally_eiei/widgets/big_text.dart';
import 'package:finally_eiei/widgets/icon_and_Text_widget.dart';
import 'package:finally_eiei/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key,required this.text}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text,size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10,),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return Icon(Icons.star, color: AppColors.mainColor,
                  size: 15,);
              }),
            ),
            SizedBox(width: 10,),
            SmallText(text: "4.7"),
            SizedBox(width: 10,),
            SmallText(text: "5286"),
            SizedBox(width: 10,),
            SmallText(text: "Comments")


          ],
        ),

        SizedBox(height: Dimensions.height20,),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween
            ,
            children: [
              IconAndTextWidget(icon: Icons.timelapse_outlined,
                  text: "8.00 AM-15.00 PM",
                  iconColor: AppColors.paraColor),
              IconAndTextWidget(icon: Icons.location_on,
                  text: "140 km",

                  iconColor: AppColors.mainColor),
              IconAndTextWidget(icon: Icons.access_alarm_rounded,
                text: "2.30hr",
                iconColor: AppColors.yellowColor,
              )

            ])
      ],
    );
  }
}
