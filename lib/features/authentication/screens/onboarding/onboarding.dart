import 'package:chaboo/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:chaboo/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:chaboo/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:chaboo/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';

import 'package:chaboo/utils/constants/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/onboarding.dart';

class OnboardingScreen extends StatelessWidget{
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context){
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: 'assets/images/onboarding_images/Animation1.json',
                title: CBTexts.onboardingTitle1,
                subtitle: CBTexts.onboardingSubTitle1,
              ),
              OnboardingPage(
                image: 'assets/images/onboarding_images/Animation2.json',
                title: CBTexts.onboardingTitle2,
                subtitle: CBTexts.onboardingSubTitle2,
              ),
              OnboardingPage(
                image: 'assets/images/onboarding_images/Animation3.json',
                title: CBTexts.onboardingTitle3,
                subtitle: CBTexts.onboardingSubTitle3,
              ),
              OnboardingPage(
                image: 'assets/images/onboarding_images/Animation4.json',
                title: CBTexts.onboardingTitle1,
                subtitle: CBTexts.onboardingSubTitle1,
              ),
              OnboardingPage(
                image: 'assets/images/onboarding_images/Animation5.json',
                title: CBTexts.onboardingTitle1,
                subtitle: CBTexts.onboardingSubTitle1,
              ),
              OnboardingPage(
                image: 'assets/images/onboarding_images/Animation6.json',
                title: CBTexts.onboardingTitle1,
                subtitle: CBTexts.onboardingSubTitle1,
              ),
            ],
          ),

          /// skip button
          const OnboardingSkip(),

          /// dot navigation SmoothPageIndicator
          const OnboardingDotNavigation(),

          /// circular button
          const OnboardingNextButton()
      ],
      ),
    );
  }
}








