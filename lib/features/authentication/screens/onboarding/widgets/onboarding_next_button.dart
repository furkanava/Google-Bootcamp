import 'package:chaboo/features/authentication/controllers/onboarding.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utilty.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final dark = CBHelperFunctions.isDarkMode(context);
    return Positioned(
      right: CBSizes.defaultSpace,
      bottom: CBDeviceUtils.getBottomNavigationBarHeight() ,
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: CBColors.primary,
          foregroundColor: dark ? Colors.black : Colors.white, // İkon rengi için foregroundColor ekleyin

        ),
        child: Icon(
          Icons.arrow_forward_ios_sharp,
          color: dark ? Colors.black : Colors.white, // İkon rengini belirti),
        ),
      ),
    );
  }
}