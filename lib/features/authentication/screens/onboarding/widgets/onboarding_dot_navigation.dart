import 'package:chaboo/features/authentication/controllers/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utilty.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = CBHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: CBDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: CBSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 4,
          effect: ExpandingDotsEffect(activeDotColor: dark? CBColors.light: CBColors.dark, dotHeight: 6),
        )
    );
  }
}