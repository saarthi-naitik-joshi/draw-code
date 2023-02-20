import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  Duration duration = const Duration(milliseconds: 1000);
  bool isAnimate = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 300)).then((value) {
      setState(() {
        isAnimate = true;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (context, cons) {
                return Center(
                  child: Container(
                    height: cons.maxHeight * 0.95,
                    width: cons.maxWidth,
                    margin:
                        const EdgeInsets.only(left: 10, right: 10, top: 100),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/bg.png'),
                          fit: BoxFit.cover),
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xff314196), Color(0xffD3559E)]),
                    ),
                    child: LayoutBuilder(
                      builder: (context, constrait) {
                        return Center(
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                top: constrait.maxHeight * 0.45,
                                left: 25,
                                child: FadeIn(
                                  animate: true,
                                  duration: const Duration(milliseconds: 2000),
                                  child: Image.asset(
                                    'assets/images/sparkler.png',
                                    height: 6.h,
                                    width: 6.w,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: constrait.maxHeight * 0.40,
                                left: 35,
                                child: FadeIn(
                                  animate: true,
                                  duration: const Duration(milliseconds: 2000),
                                  child: Image.asset(
                                    'assets/images/sparkler.png',
                                    height: 4.h,
                                    width: 4.w,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: constrait.maxHeight * 0.30,
                                left: 25,
                                child: FadeIn(
                                  animate: true,
                                  duration: const Duration(milliseconds: 2000),
                                  child: Image.asset(
                                    'assets/images/sparkler.png',
                                    height: 4.h,
                                    width: 4.w,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: constrait.maxHeight * 0.22,
                                left: 50,
                                child: SlideInDown(
                                  animate: true,
                                  duration: const Duration(milliseconds: 2000),
                                  child: Image.asset(
                                    'assets/images/star.png',
                                    height: 10.h,
                                    width: 10.w,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: constrait.maxHeight * 0.62,
                                right: 25,
                                child: SlideInDown(
                                  animate: true,
                                  duration: const Duration(milliseconds: 2000),
                                  child: Image.asset(
                                    'assets/images/sparkler.png',
                                    height: 4.h,
                                    width: 4.w,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: constrait.maxHeight * 0.50,
                                right: 10,
                                child: SlideInDown(
                                  animate: true,
                                  duration: const Duration(milliseconds: 2000),
                                  child: Image.asset(
                                    'assets/images/sparkler.png',
                                    height: 6.h,
                                    width: 6.w,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: constrait.maxHeight * 0.25,
                                right: 15,
                                child: SlideInLeft(
                                  animate: true,
                                  duration: const Duration(milliseconds: 2000),
                                  child: Image.asset(
                                    'assets/images/sparkler.png',
                                    height: 10.h,
                                    width: 10.w,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: constrait.maxHeight * 0.10,
                                right: 35,
                                child: SlideInLeft(
                                  animate: true,
                                  duration: const Duration(milliseconds: 2000),
                                  child: Image.asset(
                                    'assets/images/sparkler.png',
                                    height: 7.h,
                                    width: 7.w,
                                  ),
                                ),
                              ),
                              Positioned(
                                //bottom: constrait.maxHeight * 0.78,
                                top: constrait.maxHeight * 0.12,
                                left: 0,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50),
                                  alignment: Alignment.center,
                                  child: FadeIn(
                                    animate: true,
                                    duration:
                                        const Duration(milliseconds: 5000),
                                    child: Text(
                                      'GET CHANCE TO \nWIN MACBOOK AIR',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: constrait.maxHeight * 0.40,
                                left: 0,
                                right: 0,
                                child: Center(
                                  child: SlideInUp(
                                    animate: true,
                                    duration:
                                        const Duration(milliseconds: 2000),
                                    child: ZoomIn(
                                      animate: true,
                                      duration:
                                          const Duration(milliseconds: 2000),
                                      child: Image.asset(
                                        'assets/images/computer.png',
                                        height: constrait.maxHeight / 2,
                                        width: constrait.maxWidth / 2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              isAnimate
                                  ? Positioned(
                                      bottom: constrait.maxHeight * 0.45,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 50),
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Enter the code given \nin academic kitbox',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    )
                                  : const SizedBox(),
                              Positioned(
                                bottom: constrait.maxHeight * 0.35,
                                left: 0,
                                right: 0,
                                child: Center(
                                  child: FadeInDown(
                                    animate: true,
                                    duration:
                                        const Duration(milliseconds: 1000),
                                    child: SizedBox(
                                      width: 225,
                                      height: 40,
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                              vertical: 10.0,
                                              horizontal: 10,
                                            ),
                                            filled: true,
                                            fillColor: const Color(0xFFFFFFFF)
                                                .withOpacity(0.5),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: BorderSide.none,
                                            ),
                                            hintText: '0000 0000 0000',
                                            hintStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            labelStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                //top: constrait.maxHeight * 0.68,
                                bottom: constrait.maxHeight * 0.24,
                                child: Center(
                                  child: FadeInUp(
                                    animate: true,
                                    duration:
                                        const Duration(milliseconds: 1000),
                                    child: InkWell(
                                      onTap: () {
                                        createSnackBar(
                                            'UNLOCK MY CHANCE', context);
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: const Color(0xff8DE050)),
                                        child: Text(
                                          'UNLOCK MY CHANCE >>',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Image.asset('assets/images/cloud.png'),
                              ),
                              Positioned(
                                bottom: constrait.maxHeight * 0.03,
                                left: 30,
                                right: 30,
                                child: Image.asset(
                                  'assets/images/gift_bottom_part_3.png',
                                ),
                              ),
                              AnimatedPositioned(
                                duration: duration,
                                // bottom: isAnimate == true
                                //     ? constrait.maxHeight * 0.75
                                //     : constrait.maxHeight * 0.10,
                                top: isAnimate == true
                                    ? -constrait.maxHeight * 0.30
                                    : constrait.maxHeight * 0.30,

                                left: 0,
                                right: 0,
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/gift_top_part.png',
                                      height: constrait.maxHeight / 2,
                                    ),
                                    Positioned.fill(
                                      bottom: 25,
                                      child: Center(
                                        child: FadeIn(
                                          animate: true,
                                          duration: const Duration(
                                              milliseconds: 1000),
                                          child: Image.asset(
                                            'assets/images/sitting_men.png',
                                            height: constrait.maxHeight / 3,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeIn(
                  animate: true,
                  duration: const Duration(milliseconds: 1000),
                  child: InkWell(
                    onTap: () {
                      createSnackBar('I Don’t Have A code', context);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 5, right: 3, top: 3, bottom: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color(0xffD55DA2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'I Don’t Have A code',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Image.asset(
                            'assets/images/i_dont_have_code.png',
                            height: 30,
                            width: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                FadeIn(
                  animate: true,
                  duration: const Duration(milliseconds: 1000),
                  child: InkWell(
                    onTap: () {
                      createSnackBar('Enter Code Next Time', context);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 5, right: 3, top: 3, bottom: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color(0xffD55DA2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Enter code next time',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Image.asset(
                            'assets/images/enter_code_next_time.png',
                            height: 30,
                            width: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  void createSnackBar(String message, BuildContext context) {
    var snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
