part of 'onboard_imports.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return Scaffold(
      backgroundColor: AppColors.lightModeBackground,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                //Show App Logo at top page center
                Image.asset(Appassets.appLogo, height: 100, width: 100),

                PageView(
                  controller: pageController,
                  children: [
                    OnboardWidget(
                      onboard:
                          "Discover, engage and read the latest artciels well as share your own where ideas with share by the world.",
                      imgUrl: Appassets.onBoard1,
                    ),
                    OnboardWidget(
                      onboard:
                          "Discover, engage and read the latest artciels well as share your own where ideas with share by the world.",
                      imgUrl: Appassets.onBoard2,
                    ),
                    OnboardWidget(
                      onboard:
                          "Discover, engage and read the latest artciels well as share your own where ideas with share by the world.",
                      imgUrl: Appassets.onBoard3,
                    ),
                  ],
                ).expand(),
                //Show App Button for getting started
                Appbtn(
                  text: "Get Started",

                  textColor: AppColors.lightModeBackground,
                  onPressed: () {},
                ),
                SizedBox(height: 60),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: AppText(
                        text: "Skip",
                        style: appTextStyle(
                          size: 18,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: pageController,
                      count: 3,
                      axisDirection: Axis.horizontal,
                      effect: const ExpandingDotsEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        activeDotColor: AppColors.primaryColor,
                        dotColor: AppColors.lightModeTextColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed('authchoice');
                      },
                      child: AppText(
                        text: "Next",
                        style: appTextStyle(
                          size: 18,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
