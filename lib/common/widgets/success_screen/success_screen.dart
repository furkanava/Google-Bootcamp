import 'package:chaboo/common/styles/spacing_styles.dart';
import 'package:chaboo/features/authentication/screens/login/login.dart';
import 'package:chaboo/utils/constants/colors.dart';
import 'package:chaboo/utils/constants/image_strings.dart';
import 'package:chaboo/utils/constants/sizes.dart';
import 'package:chaboo/utils/constants/texts.dart';
import 'package:chaboo/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CBSpacingStyles.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              Lottie.asset(
                CBImages.successVerify,
                width: CBHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: CBSizes.spaceBtwSections),

              /// Title - Subtitle
              Text(CBTexts.yourAccountCreatedTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: CBSizes.spaceBtwItems),
              Text(CBTexts.yourAccountCreatedSubtitle, style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: CBSizes.spaceBtwSections),

              ///  Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(
                onPressed: () => Get.to(()=> const LoginScreen()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: CBColors.primary,
                  foregroundColor: CBColors.textWhite,
                  side: const BorderSide(color: CBColors.primary),// Buton metin rengi
                ),
                child: const Text(CBTexts.continuee),
              ),
              ),

            ],

        ),
        ),
      ),
    );
  }
}
