import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/const.dart';
import 'listView.dart';


Future showMBsheet(BuildContext context) {

  return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(21), topRight: Radius.circular(21))),
      isScrollControlled: true,
      context: context,
      builder: (context) => SizedBox(
            height: MediaQuery.of(context).size.height / 1.2,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 34,bottom: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 34, right: 34),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          const Text(
                            'Product',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),

                          IconButton(onPressed:(){Navigator.pop(context);},
                            icon: const Icon(
                              Icons.keyboard_arrow_down,
                              size: 30,
                            ),
                          ),
                          // )
                        ],
                      ),
                    ), SizedBox(height: 33.h,),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Higher rating',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: forgetColor,
                            fontSize: 16),
                      ),
                    ),
                     SizedBox(
                      height: 12.h,
                    ),
                    SizedBox(
                        height: 116.h,
                        width: MediaQuery.of(context).size.width,
                        child:
                        ListView.separated(
                          separatorBuilder: (context, index) =>  SizedBox(
                            width: 8.w,
                          ),
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          itemBuilder: (context, index) =>freeLancerRectangleItem(name: 'special', price:" 4.5", icon: 'asset/pngAsset/stare.png')
                        )  ),
                       SizedBox(height: 33.h,),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'More complete projects',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: forgetColor,
                            fontSize: 16),
                      ),
                    ),
                     SizedBox(
                      height: 12.h,
                    ),
                    Container(
                        height: 116.h,
                        child:
                        ListView.separated(
                            separatorBuilder: (context, index) =>  SizedBox(
                              width: 8.w,
                            ),
                            scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            itemBuilder: (context, index) =>freeLancerRectangleItem(name: 'special', price:" 4.5", icon: 'asset/pngAsset/true.png')
                        )  ),


                    SizedBox(height: 33.h,),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Category',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: forgetColor,
                            fontSize: 16),
                      ),
                    ),
                     SizedBox(
                      height: 12.h,
                    ),
                    SizedBox(
                        height: 75.h,
                        child:
                        ListView.separated(
                            separatorBuilder: (context, index) =>  SizedBox(
                              width: 8.w,
                            ),
                            scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            itemBuilder: (context, index) =>circleItem(name: 'special'
                        )  ),


                           )
                  ],
                ),
              ),
            ),
          ));
}

 Widget freeLancerRectangleItem({
   required String name,
   required String price,
   required String icon}  ) {

  return SizedBox(
            height: 116.h,
            width: 78.w,
            //color: Colors.red,
            child: Column(children: [
              SizedBox(
                width: 78.w,
                height: 78.h,
                child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset('asset/item.png')),
              ),
              Text(name,
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: forgetColor)),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(icon),
                   SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.w400,
                        color: forground),
                  )
                ],
              )
            ]),
          );
}
