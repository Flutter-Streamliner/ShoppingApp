import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialIcon extends StatelessWidget {

  final String iconName;

  const SocialIcon({
    Key? key,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: SizedBox(
        width: 40.w,
        height: 40.h,
        child: Image.asset('assets/icons/$iconName.png'),
      ),
    );
  }
}
