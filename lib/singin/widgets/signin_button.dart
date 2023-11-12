import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/const/colors.dart';

class SignInButton extends StatelessWidget {

  final String title;
  final Function()? onPressed;
  final bool isAccent;

  const SignInButton({
    Key? key,
    required this.title,
    this.onPressed,
    this.isAccent = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 325.w,
        height: 50.h,
        decoration: BoxDecoration(
          color: isAccent ? AppColors.primaryBackground : AppColors.primaryElement,
          borderRadius: BorderRadius.circular(15.w),
          border: Border.all(
              color: isAccent ? AppColors.primaryFourthElementText : AppColors.transparent
          ),
          boxShadow: [
            BoxShadow(
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
              color: Colors.grey.withOpacity(0.1),
            )
          ]
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
              color: isAccent ? AppColors.primaryText : AppColors.primaryBackground,
            ),
          ),
        ),
      ),
    );
  }
}
