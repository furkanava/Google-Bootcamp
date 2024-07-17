import 'package:chaboo/common/widgets/success_screen/success_screen.dart';
import 'package:chaboo/features/authentication/screens/login/login.dart';
import 'package:chaboo/utils/constants/colors.dart';
import 'package:chaboo/utils/constants/image_strings.dart';
import 'package:chaboo/utils/constants/sizes.dart';
import 'package:chaboo/utils/constants/texts.dart';
import 'package:chaboo/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';


class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CBSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Lottie.asset(
                CBImages.sendMail,
                width: CBHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: CBSizes.spaceBtwSections),

              /// Title - Subtitle
              Text(CBTexts.verifyEmailTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: CBSizes.spaceBtwItems),
              Text("chaboo@gmail.com", style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: CBSizes.spaceBtwItems),
              Text(CBTexts.verifyEmailSubtitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: CBSizes.spaceBtwSections),

              ///  Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(
                onPressed: () => Get.to(()=> const SuccessScreen()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: CBColors.primary,
                  foregroundColor: CBColors.textWhite,
                  side: const BorderSide(color: CBColors.primary),// Buton metin rengi
                ),
                child: const Text(CBTexts.continuee),
              ),
              ),
              const SizedBox(height: CBSizes.spaceBtwItems),
              SizedBox(width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(CBTexts.resendEmailIn),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
