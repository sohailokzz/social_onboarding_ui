import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_onboarding_ui/widgets/onboarding_design.dart';
import '../data/onboarding_data.dart';

class OnboardingPages extends StatefulWidget {
  const OnboardingPages({Key? key}) : super(key: key);

  @override
  State<OnboardingPages> createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  final SwiperController _controller = SwiperController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Swiper(
            loop: false,
            index: _currentIndex,
            onIndexChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            controller: _controller,
            itemCount: 3,
            itemBuilder: (context, index) {
              return OnboardingDesign(
                title: titles[index],
                subtitle: subtitles[index],
                imageUrl: introImagePath[index],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              bottom: 20,
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12.0),
                  ),
                  color: Color(0xFFFF9963),
                ),
                child: _currentIndex == 2
                    ? Container(
                        height: 50,
                        width: 157,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(12.0),
                          ),
                          color: Color(0xFFFF9963),
                        ),
                        child: Center(
                          child: Text(
                            'Get Started',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    : IconButton(
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 18,
                        ),
                        onPressed: () {
                          if (_currentIndex != 2) {
                            _controller.next();
                          } else {}
                        },
                      ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              bottom: 20,
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Skip',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0XFF7D8496),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
