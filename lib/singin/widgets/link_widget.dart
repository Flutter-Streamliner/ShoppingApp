import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/const/colors.dart';

class LinkWidget extends StatelessWidget {
  const LinkWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260.w,
      height: 44.h,
      child: GestureDetector(
        onTap: () {

        },
        child: Text(
          'Forgot Password',
          style: TextStyle(
            color: AppColors.primaryText,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.primaryText,
            fontSize: 12.sp,
          ),
        ),
      ),
    );
  }
}
