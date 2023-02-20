import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> with SingleTickerProviderStateMixin {
  Duration duration = const Duration(milliseconds: 1000);
  bool isAnimate = false;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  );

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 300)).then((value) {
      setState(() {
        isAnimate = true;
      });
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double smallSize = 100;
    double largeSize = MediaQuery.of(context).size.width;
    final Size screenSize = Size(
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, cons) {
            return Center(
              child: Container(
                height: cons.maxHeight * 0.75,
                width: cons.maxWidth,
                margin: const EdgeInsets.symmetric(horizontal: 10),
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
                          // Positioned(
                          //   top: 150,
                          //   left: 0,
                          //   child: FadeIn(
                          //     animate: true,
                          //     duration: const Duration(milliseconds: 2000),
                          //     child: Image.asset(
                          //       'assets/images/star_left_center.png',
                          //       width: 75,
                          //       height: 225,
                          //     ),
                          //   ),
                          // ),
                          // Positioned(
                          //   top: 120,
                          //   left: 30,
                          //   child: SlideInDown(
                          //     animate: true,
                          //     duration: const Duration(milliseconds: 2000),
                          //     child: Image.asset(
                          //       'assets/images/star_top_left.png',
                          //       width: 100,
                          //     ),
                          //   ),
                          // ),
                          // Positioned(
                          //   top: 30,
                          //   right: -75,
                          //   child: SlideInLeft(
                          //     animate: true,
                          //     duration: const Duration(milliseconds: 2000),
                          //     child: Image.asset(
                          //       'assets/images/star_top_right.png',
                          //       height: 200,
                          //       width: 200,
                          //     ),
                          //   ),
                          // ),
                          // Positioned(
                          //   top: 220,
                          //   right: -75,
                          //   child: FadeIn(
                          //     animate: true,
                          //     duration: const Duration(milliseconds: 2000),
                          //     child: Image.asset(
                          //       'assets/images/star_right_center.png',
                          //       height: 200,
                          //       width: 200,
                          //     ),
                          //   ),
                          // ),
                          Positioned(
                            bottom: constrait.maxHeight * 0.80,
                            left: 0,
                            right: 0,
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50),
                              alignment: Alignment.center,
                              child: FadeIn(
                                animate: true,
                                duration: const Duration(milliseconds: 5000),
                                child: const Text(
                                  'GET CHANCE TO \nWIN MACBOOK AIR',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: constrait.maxHeight * 0.45,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: SlideInUp(
                                animate: true,
                                duration: const Duration(milliseconds: 2000),
                                child: ZoomIn(
                                  animate: true,
                                  duration: const Duration(milliseconds: 2000),
                                  child: Image.asset(
                                    'assets/images/computer.png',
                                    height: 200,
                                    width: 200,
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
                                    child: const Text(
                                      'Enter the code given \nin academic kitbox',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
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
                                duration: const Duration(milliseconds: 1000),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 60,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xffFFFFFF)
                                        .withOpacity(0.5),
                                  ),
                                  child: Text(
                                    '000 000 000',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: constrait.maxHeight * 0.24,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: FadeInUp(
                                animate: true,
                                duration: const Duration(milliseconds: 1000),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
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
                              'assets/images/gift_bottom_part.png',
                            ),
                          ),
                          PositionedTransition(
                            rect: RelativeRectTween(
                              begin: RelativeRect.fromSize(
                                  Rect.fromLTWH(0, 0, smallSize, smallSize),
                                  screenSize),
                              end: RelativeRect.fromSize(
                                  Rect.fromLTWH(
                                      0, screenSize.height / 2, largeSize, 100),
                                  screenSize),
                            ).animate(
                              CurvedAnimation(
                                parent: _controller,
                                curve: Curves.elasticInOut,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/gift_top_part.png',
                                  height: 300,
                                ),
                                Positioned.fill(
                                  bottom: 25,
                                  child: Center(
                                    child: FadeIn(
                                      animate: true,
                                      duration:
                                          const Duration(milliseconds: 1000),
                                      child: Image.asset(
                                        'assets/images/sitting_men.png',
                                        height: 150,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
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
    );
  }
}
