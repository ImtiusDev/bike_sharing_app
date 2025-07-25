import 'package:flutter/material.dart';

class AppTextStyle{
  static TextStyle heading = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Color(0xFF222222),
  );


  static TextStyle subHeading = TextStyle(
    fontFamily: 'Inter',
    fontSize: 15,
    fontWeight: FontWeight.w300,
    color: Color(0xFF666666),
  );

  static TextStyle subHeadingDeepPurple = TextStyle(
    fontFamily: 'Inter',
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Color(0xFF584CF4),
  );

  static TextStyle miniSubText = TextStyle(
    fontFamily: 'Inter',
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: Color(0xFF888888),
  );

  static TextStyle miniSubTextWithLineThrough = TextStyle(
    fontFamily: 'Inter',
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: Color(0xFF888888),
    decoration: TextDecoration.lineThrough
  );

  static TextStyle miniSubTextDeepPurple = TextStyle(
    fontFamily: 'Inter',
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: Color(0xFF584CF4),
  );
}