import 'package:flutter/material.dart';
import 'package:flutter_stock_trading_app_ui/common/color_constants.dart';


class InvestmentPortfolioWidget extends StatelessWidget {
  final String nameTxt;
  final String amountTxt;
  final String brandImg;

  InvestmentPortfolioWidget({
    Key key,
    this.nameTxt,
    this.amountTxt,
    this.brandImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height,width;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Container(
      height: height*0.2,
      width:width*0.3 ,
      decoration: BoxDecoration(
        color: ColorConstants.kScreenBackColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/images/dots.png",
                  height: 20,
                  color: ColorConstants.kGreyColor,
                )
              ],
            ),
            Image.asset(
              brandImg,
              height: 50,
              color: ColorConstants.kWhiteColor,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Text(
                nameTxt,
                style: Theme.of(context).textTheme.caption.copyWith(
                      fontSize: 18,
                      color: ColorConstants.kWhiteColor,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Nunito-SemiBold",
                    ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
               amountTxt,
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 12,
                    color: ColorConstants.kGreyColor,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Nunito-SemiBold",
                  ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 10,
              width: 250,
              decoration: BoxDecoration(
                color: ColorConstants.kBlackColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Container(
                    height: 10,
                    width: 100,
                    decoration: BoxDecoration(
                      color: ColorConstants.kPrimaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
