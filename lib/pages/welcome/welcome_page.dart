import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/pages/welcome/bloc/welcome_bloc.dart';
import 'package:shop_app/pages/welcome/widgets/onboarding_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomeState();
}

class _WelcomeState extends State<WelcomePage> {

  PageController pageController = PageController();

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
                    onPageChanged: (index) => _updatePageIndex(index: index),
                    children: const [
                      OnboardingPage(
                        index: 1,
                        imagePath: '',
                        title: 'First See Learning',
                        subtitle: 'Forget about a for of paper all knowledge in one learning!',
                        buttonName: 'Next',
                      ),
                      OnboardingPage(
                        index: 2,
                        imagePath: '',
                        title: 'Connect With Everyone',
                        subtitle: 'Always keep in touch with your tutor & friend. Let\'s get connected',
                        buttonName: 'Next',
                      ),
                      OnboardingPage(
                        index: 3,
                        imagePath: '',
                        title: 'Always Fascinated Learning',
                        subtitle: 'Anywhere, anytime. The time is at our description so study whenever you want',
                        buttonName: 'Get Started',
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
                        color: Colors.grey,
                        activeColor: Colors.blue,
                        size: const Size.square(8.0),
                        activeSize: const Size(10.0, 8.0),
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