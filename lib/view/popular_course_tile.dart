import 'package:flutter/material.dart';
import 'package:studiess_app/theme.dart';

class PopularCourseTile extends StatelessWidget {
  final String popularImage;
  final String titlePopular;
  final String ratePopular;

  const PopularCourseTile(
      {required this.popularImage,
      required this.titlePopular,
      required this.ratePopular});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        color: Colors.white,
      ),
      width: 205.0,
      height: 180.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(popularImage, height: 100.0, width: 180.0,),
          Text('Free', style: lightToscaTextStyle.copyWith(fontSize: 12.0),),
          SizedBox(height: 5.0,),
          Text(titlePopular, style: darkBlueTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w600),),
          Row(
            children: [
              Image.asset('assets/images/star.png', height: 16.0, width: 80.0,),
              SizedBox(width: 5.0,),
              Text(ratePopular, style: greyTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w400),),
            ],
          )
        ],
      ),
    );
  }
}
