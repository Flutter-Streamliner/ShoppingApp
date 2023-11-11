import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/singin/widgets/social_icon.dart';

class SocialSignInWidget extends StatelessWidget {
  const SocialSignInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 40.h,
        bottom: 20.h,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SocialIcon(iconName: 'google'),
          SocialIcon(iconName: 'apple'),
          SocialIcon(iconName: 'facebook'),
        ],
      ),
    );
  }
}
