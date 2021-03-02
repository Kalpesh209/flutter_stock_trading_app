import 'package:flutter/material.dart';
import 'package:flutter_stock_trading_app_ui/common/color_constants.dart';
import 'package:flutter_stock_trading_app_ui/widgets/post_widget.dart';


/* s
Title: ProfileScreen,
Purpose:ProfileScreen,
Created Date:27 Feb 2021,
Created By:Kalpesh Khandla
*/

class ProfileScreen extends StatefulWidget {
  ProfileScreen({
    Key key,
  }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double height, width;
  final nameArray = [
    "John Edwards",
    "Anna Shumaher",
    "Robert Murphy",
  ];

  final timeArray = [
    "5 min ago",
    "12 hours ago",
    "4 days ago",
  ];

  final descriptionArray = [
    "Bought \$300 of Apple",
    "Study says buying a winning stock is easy:Just find a cool ticker symbol",
    "Study says buying a winning stock is easy:Just find a cool ticker symbo",
  ];

  final commentArray = [
    "31",
    "57",
    "60",
  ];

  final likeArray = [
    "12",
    "12",
    "14",
  ];
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorConstants.kCardBackColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorConstants.kCardBackColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.caption.copyWith(
                fontSize: 18,
                color: ColorConstants.kWhiteColor,
                fontWeight: FontWeight.w700,
                fontFamily: "Nunito-Regular",
              ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 15,
          ),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100 / 2),
                    image: DecorationImage(
                      image: ExactAssetImage(
                        "assets/images/profile.png",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "John Edwards",
                style: Theme.of(context).textTheme.caption.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.kWhiteColor,
                      fontFamily: "Nunito-Regular",
                    ),
              ),
              Text(
                "@marvin_ed",
                style: Theme.of(context).textTheme.caption.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.kGreyColor,
                      fontFamily: "Nunito-Regular",
                    ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    height: height * 0.13,
                    width: width * 0.27,
                    decoration: BoxDecoration(
                      color: ColorConstants.kGreenBackColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "32",
                          style: Theme.of(context).textTheme.caption.copyWith(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: ColorConstants.kBlackColor,
                                fontFamily: "Nunito-Regular",
                              ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Posts",
                          style: Theme.of(context).textTheme.caption.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: ColorConstants.kBlackColor,
                                fontFamily: "Nunito-Regular",
                              ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: height * 0.13,
                    width: width * 0.27,
                    decoration: BoxDecoration(
                      color: ColorConstants.kScreenBackColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "26354",
                          style: Theme.of(context).textTheme.caption.copyWith(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: ColorConstants.kWhiteColor,
                                fontFamily: "Nunito-Regular",
                              ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Followers",
                          style: Theme.of(context).textTheme.caption.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: ColorConstants.kGreyColor,
                                fontFamily: "Nunito-Regular",
                              ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: height * 0.13,
                    width: width * 0.27,
                    decoration: BoxDecoration(
                      color: ColorConstants.kScreenBackColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "256",
                          style: Theme.of(context).textTheme.caption.copyWith(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: ColorConstants.kWhiteColor,
                                fontFamily: "Nunito-Regular",
                              ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Subscriptions",
                          style: Theme.of(context).textTheme.caption.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: ColorConstants.kGreyColor,
                                fontFamily: "Nunito-Regular",
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Posts",
                    style: Theme.of(context).textTheme.caption.copyWith(
                          fontSize: 24,
                          color: ColorConstants.kWhiteColor,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Nunito-SemiBold",
                        ),
                  ),
                  Text(
                    "Sorting",
                    style: Theme.of(context).textTheme.caption.copyWith(
                          fontSize: 14,
                          color: ColorConstants.kPrimaryColor,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Nunito-SemiBold",
                        ),
                  )
                ],
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: nameArray.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: PostWidget(
                        nameTxt: nameArray[index],
                        timeTxt: timeArray[index],
                        descriptionTxt: descriptionArray[index],
                        likeNo: commentArray[index],
                        commentNo: commentArray[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
