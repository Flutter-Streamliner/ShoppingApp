import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/singin/widgets/description_text.dart';
import 'package:shop_app/singin/widgets/input_field.dart';
import 'package:shop_app/singin/widgets/link_widget.dart';
import 'package:shop_app/singin/widgets/signin_button.dart';
import 'package:shop_app/singin/widgets/sing_in_app_bar.dart';
import 'package:shop_app/singin/widgets/social_signin_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const SignInAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SocialSignInWidget(),
              const Center(child: DescriptionText(text: 'Or use your email account to sign in')),
              Container(
                margin: EdgeInsets.only(top: 66.h),
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DescriptionText(text: 'Email'),
                    SizedBox(height: 5),
                    InputField(
                      iconName: 'user',
                      hintText: "Enter your email address",
                    ),
                    SizedBox(height: 20),
                    DescriptionText(text: 'Password'),
                    SizedBox(height: 5),
                    InputField(
                      iconName: 'lock',
                      hintText: "Enter your password",
                      isObscureText: true,
                    ),
                    SizedBox(height: 40),
                    LinkWidget(),
                    SignInButton(title: 'Sign In'),
                    SizedBox(height: 20),
                    SignInButton(title: 'Sign Up'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
