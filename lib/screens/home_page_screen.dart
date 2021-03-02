import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stock_trading_app_ui/common/color_constants.dart';
import 'package:flutter_stock_trading_app_ui/screens/profile_screen.dart';
import 'package:flutter_stock_trading_app_ui/widgets/achivements_wdget.dart';
import 'package:flutter_stock_trading_app_ui/widgets/investment_portfolio_widget.dart';


/* 
Title: HomePageScreen,
Purpose:HomePageScreen,
Created Date:27 Feb 2021
Created By:Kalpesh Khandla
*/

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({
    Key key,
  }) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  double height, width;

  final achievementArray = [
    "1 week streak",
    "3 week streak",
    "7 week streak",
    "5 week streak",
  ];

  final imageArray = [
    "assets/images/bomb.png",
    "assets/images/dragon.png",
    "assets/images/strong.png",
    "assets/images/bomb.png",
  ];

  final colorArray = [
    ColorConstants.kPrimaryColor,
    ColorConstants.kGreenBackColor,
    ColorConstants.kBlueColor,
    ColorConstants.kPinkBackColor,
  ];

  final brandNameArray = [
    "Apple",
    "Activision Blizzard",
    "AMD",
    "Valve",
  ];

  final brandImageArray = [
    "assets/images/apple.png",
    "assets/images/a.png",
    "assets/images/amd.png",
    "assets/images/v.png",
  ];

  final amountArray = [
    "\$10.230(54.4 %)",
    "\$2.120(32.5 %)",
    "\$1.120(10.1 %)",
    "\$13.150(71.2 %)",
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: ColorConstants.kCardBackColor,
        statusBarBrightness: Brightness.light,
      ),
    );

    return Scaffold(
      backgroundColor: ColorConstants.kCardBackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/menu.png",
                height: 20,
                color: ColorConstants.kWhiteColor,
              ),
              SizedBox(
                height: height * 0.1 / 2,
              ),
              Text(
                "Hello,John",
                style: Theme.of(context).textTheme.caption.copyWith(
                      fontSize: 35,
                      color: ColorConstants.kWhiteColor,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Nunito-Regular",
                    ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: ColorConstants.kScreenBackColor,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(50 / 2),
                                      border: Border.all(
                                        color: ColorConstants.kWhiteColor,
                                        width: 2,
                                      ),
                                      image: DecorationImage(
                                        image: ExactAssetImage(
                                          "assets/images/profile.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: ColorConstants.kGreenColor,
                                        borderRadius:
                                            BorderRadius.circular(15 / 2),
                                        border: Border.all(
                                          color: ColorConstants.kWhiteColor,
                                          width: 2,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Your Balance",
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                          fontSize: 15,
                                          color: ColorConstants.kPrimaryColor,
                                          fontFamily: "Nunito-Regular",
                                        ),
                                  ),
                                  Text(
                                    "\$23,052.82",
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                          fontSize: 25,
                                          color: ColorConstants.kWhiteColor,
                                          fontFamily: "Nunito-Regular",
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 15,
                            color: ColorConstants.kWhiteColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Achievements",
                    style: Theme.of(context).textTheme.caption.copyWith(
                          fontSize: 24,
                          color: ColorConstants.kWhiteColor,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Nunito-SemiBold",
                        ),
                  ),
                  Text(
                    "See all",
                    style: Theme.of(context).textTheme.caption.copyWith(
                          fontSize: 14,
                          color: ColorConstants.kPrimaryColor,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Nunito-SemiBold",
                        ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: achievementArray.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: AchievementsWidget(
                        nameTxt: achievementArray[index],
                        profileImg: imageArray[index],
                        backColor: colorArray[index],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Investment Portfolio",
                    style: Theme.of(context).textTheme.caption.copyWith(
                          fontSize: 24,
                          color: ColorConstants.kWhiteColor,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Nunito-SemiBold",
                        ),
                  ),
                  Text(
                    "See all",
                    style: Theme.of(context).textTheme.caption.copyWith(
                          fontSize: 14,
                          color: ColorConstants.kPrimaryColor,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Nunito-SemiBold",
                        ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  children: List.generate(
                    4,
                    (index) {
                      return InvestmentPortfolioWidget(
                        nameTxt: brandNameArray[index],
                        amountTxt: amountArray[index],
                        brandImg: brandImageArray[index],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
