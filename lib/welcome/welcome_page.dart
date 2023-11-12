import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/app_routes.dart';
import 'package:shop_app/const/colors.dart';
import 'package:shop_app/welcome/bloc/welcome_bloc.dart';
import 'package:shop_app/welcome/widgets/onboarding_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomeState();
}

class _WelcomeState extends State<WelcomePage> {

  final PageController _pageController = PageController(initialPage: 0);

  void _updatePageIndex({required int index}) =>
      context.read<WelcomeBloc>().add(UpdateWelcomePageEvent(page: index));

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: BlocBuilder<WelcomeBloc, WelcomeState>(
          builder: (context, state) {
            return Container(
              margin: EdgeInsets.only(top: 34.h),
              width: 375.w,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  PageView(
                    controller: _pageController,
                    onPageChanged: (index) => _updatePageIndex(index: index),
                    children: [
                      OnboardingPage(
                        index: 1,
                        imagePath: 'assets/images/reading.png',
                        title: 'First See Learning',
                        subtitle: 'Forget about a for of paper all knowledge in one learning!',
                        buttonName: 'Next',
                        onPressed: () => _pageController.animateToPage(1, duration: const Duration(milliseconds: 500), curve: Curves.easeIn),
                      ),
                      OnboardingPage(
                        index: 2,
                        imagePath: 'assets/images/boy.png',
                        title: 'Connect With Everyone',
                        subtitle: 'Always keep in touch with your tutor & friend. Let\'s get connected',
                        buttonName: 'Next',
                        onPressed: () => _pageController.animateToPage(2, duration: const Duration(milliseconds: 500), curve: Curves.easeIn),
                      ),
                      OnboardingPage(
                        index: 3,
                        imagePath: 'assets/images/man.png',
                        title: 'Always Fascinated Learning',
                        subtitle: 'Anywhere, anytime. The time is at our description so study whenever you want',
                        buttonName: 'Get Started',
                        onPressed: () => Navigator.pushNamedAndRemoveUntil(context, AppRoutes.signInPage, (route) => false),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 50.h,
                    child: DotsIndicator(
                      dotsCount: 3,
                      position: state.page,
                      mainAxisAlignment: MainAxisAlignment.center,
                      decorator: DotsDecorator(
                        color: AppColors.primaryThirdElementText,
                        activeColor: AppColors.primaryElement,
                        size: const Size.square(8.0),
                        activeSize: const Size(18.0, 8.0),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
