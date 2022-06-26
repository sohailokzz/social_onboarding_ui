import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingDesign extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? imageUrl;

  const OnboardingDesign({
    Key? key,
    required this.title,
    this.subtitle,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFFF8F9FD),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            imageUrl!,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 24.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                if (subtitle != null) ...[
                  const SizedBox(height: 20.0),
                  Text(
                    subtitle!,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
