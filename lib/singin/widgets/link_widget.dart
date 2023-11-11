import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            color: Colors.black,
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue,
            fontSize: 12.sp,
          ),
        ),
      ),
    );
  }
}
