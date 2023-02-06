import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/const.dart';

Widget rectangleItem(
    {
    required String name,
    required String price,
    required String icon}) {
  return SizedBox(
    height: 116.h,
    width: 100.w,
    child: Column(
      children: [
        SizedBox(
          width: 100.w,
          height: 90.h,
          child: Image.asset('asset/item.png'),
        ),
        SizedBox(
          height: 2.h,
        ),
        Row(
          children: [
            Image.asset(icon),
            SizedBox(
              width: 5.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: const TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                        color: forgetColor)),
                Text(
                  price,
                  style: const TextStyle(
                      fontSize: 7,
                      fontWeight: FontWeight.w400,
                      color: forground),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}

circleItem(
    { required String name}) {
  return SizedBox(
    height: 75.h,
    width: 58.w,
    child: Column(
      children: [
        Container(
            //color: Colors.cyanAccent,
            width: 58.w,
            height: 58.h,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('asset/item.png')))),
        SizedBox(
          height: 2.h,
        ),
        Text(name,
            style: const TextStyle(
                fontSize: 9, fontWeight: FontWeight.w400, color: forgetColor)),
      ],
    ),
  );
}
