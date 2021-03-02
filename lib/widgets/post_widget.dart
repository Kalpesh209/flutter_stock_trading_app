import 'package:flutter/material.dart';
import 'package:flutter_stock_trading_app_ui/common/color_constants.dart';


/* 
Title: PostWidget,
Purpose:PostWidget,
Created Date:27 Feb 2021,
Created By:Kalpesh Khandla
*/

class PostWidget extends StatelessWidget {
  final String nameTxt;
  final String timeTxt;
  final String descriptionTxt;
  final String likeNo;
  final String commentNo;

  PostWidget({
    Key key,
    this.nameTxt,
    this.timeTxt,
    this.descriptionTxt,
    this.likeNo,
    this.commentNo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.kScreenBackColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40 / 2),
                    image: DecorationImage(
                      image: ExactAssetImage(
                        "assets/images/profile.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nameTxt,
                      style: Theme.of(context).textTheme.caption.copyWith(
                            fontSize: 12,
                            color: ColorConstants.kWhiteColor,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Nunito-Regular",
                          ),
                    ),
                    Text(
                      timeTxt,
                      style: Theme.of(context).textTheme.caption.copyWith(
                            fontSize: 12,
                            color: ColorConstants.kGreyColor,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Nunito-Regular",
                          ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              descriptionTxt,
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 16,
                    color: ColorConstants.kGreyColor,
                    fontFamily: "Nunito-Regular",
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.favorite,
                  size: 15,
                  color: ColorConstants.kPrimaryColor,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  likeNo,
                  style: Theme.of(context).textTheme.caption.copyWith(
                        fontSize: 16,
                        color: ColorConstants.kPrimaryColor,
                        fontFamily: "Nunito-Regular",
                      ),
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/images/comment.png",
                  height: 15,
                  color: ColorConstants.kWhiteColor,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  commentNo,
                  style: Theme.of(context).textTheme.caption.copyWith(
                        fontSize: 12,
                        color: ColorConstants.kWhiteColor,
                        fontFamily: "Nunito-Regular",
                      ),
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/images/forward.png",
                  height: 15,
                  color: ColorConstants.kWhiteColor,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
