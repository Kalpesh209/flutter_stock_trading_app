import 'package:flutter/material.dart';
import 'package:flutter_stock_trading_app_ui/common/color_constants.dart';



class AchievementsWidget extends StatelessWidget {
  final String profileImg;
  final String nameTxt;
  final Color backColor;
  const AchievementsWidget({
    Key key,
    this.profileImg,
    this.nameTxt,
    this.backColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height, width;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
   
      width: width*0.4,
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            profileImg,
            height: 50,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            nameTxt,
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontSize: 14,
                  color: ColorConstants.kBlackColor,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Nunito-SemiBold",
                ),
          ),
        ],
      ),
    );
  }
}
