import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/const.dart';
import '../widget/freelanceerSheet.dart';
import '../widget/listView.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int _index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: buttonColor,
        onPressed: () {},
        child: const Icon(
          Icons.add_outlined,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          inactiveColor: Colors.white.withOpacity(0.7),
          activeColor: Colors.white,
          backgroundColor: forground,
          icons: const [
            Icons.home_outlined,
            Icons.folder_outlined,
            Icons.settings_outlined,
            CupertinoIcons.person
          ],
          notchSmoothness: NotchSmoothness.defaultEdge,
          gapLocation: GapLocation.center,
          activeIndex: _index,
          onTap: (index) {
            setState(() {
              _index = index;
              print('in$index');
            });
          }),
      body: SafeArea(
        // child: Container(color:Colors.white,
        child: SingleChildScrollView(
          child: Stack(children: [
            Image.asset('asset/homeground.jpeg'),
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: forground.withOpacity(0.8),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 32, top: 49, left: 52),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Home',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                                color: Colors.white),
                          ),
                          Image.asset('asset/pngAsset/noti.png')
                          //  )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34, right: 31),
                      child: SizedBox(
                          height: 39.h,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Search',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(21)),
                                fillColor: Colors.white,
                                filled: true,
                                suffixIcon: Container(
                                    width: 40.w,
                                    decoration: BoxDecoration(
                                        color: buttonColor,
                                        borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(21),
                                            bottomRight: Radius.circular(21))),
                                    child: const Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ))),
                          )),
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 141),
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 34, top: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 34),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Product',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 30,
                              ),
                              // )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Newest',
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
                            child: ListView.separated(
                                separatorBuilder: (context, index) => SizedBox(
                                      width: 16.w,
                                    ),
                                scrollDirection: Axis.horizontal,
                                itemCount: 8,
                                itemBuilder: (context, index) => rectangleItem(

                                    name: 'special banner',
                                    price: '50\$',
                                    icon: 'asset/pngAsset/person.png'

                                    ))),
                        SizedBox(
                          height: 38.h,
                        ),
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
                            child: ListView.separated(
                                separatorBuilder: (context, index) => SizedBox(
                                      width: 16.w,
                                    ),
                                scrollDirection: Axis.horizontal,
                                itemCount: 8,
                                itemBuilder: (context, index) => rectangleItem(

                                    name: 'special banner',
                                    price: '50\$',
                                    icon: 'asset/pngAsset/person.png'
                                    //  color: Colors.white,
                                    ))),
                        SizedBox(
                          height: 38.h,
                        ),
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Category',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: forgetColor,
                                  fontSize: 16),
                            )),
                        SizedBox(
                          height: 12.h,
                        ),
                        Container(
                            height: 75.h,
                            child: ListView.separated(
                                separatorBuilder: (context, index) => SizedBox(
                                      width: 16.w,
                                    ),
                                scrollDirection: Axis.horizontal,
                                itemCount: 8,
                                itemBuilder: (context, index) => circleItem(
                                    name: "special"))),
                        SizedBox(
                          height: 10.h,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 110.h,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(156, 153, 153, 0.16),
                          spreadRadius: 2.0,
                          blurRadius: 0.2)
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 34, top: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(
                      onPressed: () => showMBsheet(context),
                      child: Row(
                        children: const [
                          Text(
                            'Freelancer',
                            style: TextStyle(
                                color: forgetColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: forgetColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
      // ),
    );
  }
}
