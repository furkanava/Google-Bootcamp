import 'package:chaboo/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../utils/constants/sizes.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key, required this.image, required this.title, required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CBSizes.defaultSpace),
      child: Column(
        children: [
          Lottie.asset(
            image,
            width: CBHelperFunctions.screenWidth() * 0.8,
            height: CBHelperFunctions.screenHeight() * 0.6
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: CBSizes.spaceBtwItems),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}