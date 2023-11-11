import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInAppBar extends StatelessWidget implements PreferredSizeWidget {

  const SignInAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Sign In',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.sp,
          fontWeight: FontWeight.normal,
        ),
      ),
      backgroundColor: Colors.white,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey.withOpacity(0.5),
          height: 1.0,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
