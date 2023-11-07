import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/pages/welcome/widgets/onboarding_page.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 34.h),
          width: 375.w,
          child: Stack(
            children: [
              PageView(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
