import 'package:flutter/material.dart';
import 'package:flutter_advanced_example1/core/theming/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/svgs/dodoc_logo_low_opacity.svg',
          alignment: Alignment.center,
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.07, 0.5],
            ),
          ),
          child: Image.asset(
            'assets/images/docdoc_image.png',
          ),
        ),
        Positioned(
          bottom: 30,
          left: 10,
          right: 10,
          child: Text(
            style: TextStyles.font32BlueBold.copyWith(height: 1.4),
            textAlign: TextAlign.center,
            'Best Doctor Appointment App',
          ),
        ),
      ],
    );
  }
}
