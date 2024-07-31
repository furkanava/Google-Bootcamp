import 'package:chaboo/common/styles/spacing_styles.dart';
import 'package:chaboo/features/authentication/screens/signup/signup.dart';
import 'package:chaboo/utils/constants/colors.dart';
import 'package:chaboo/utils/constants/image_strings.dart';
import 'package:chaboo/utils/constants/sizes.dart';
import 'package:chaboo/utils/constants/texts.dart';
import 'package:chaboo/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:chaboo/features/authentication/screens/homepage/home_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = CBHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CBSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// logo title - subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    height: 200,
                    image: AssetImage(
                        dark ? CBImages.lightAppLogo : CBImages.darkAppLogo),
                  ),
                  Text(CBTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: CBSizes.sm),
                  Text(CBTexts.loginSubtitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),

              /// form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: CBSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      ///email
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: CBTexts.email,
                        ),
                      ),

                      const SizedBox(height: CBSizes.spaceBtwInputFields),

                      ///password
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: CBTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),

                      const SizedBox(height: CBSizes.spaceBtwInputFields / 2),

                      ///remember me - forget pssword
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///remember me
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                                activeColor: CBColors
                                    .primary, // Checkbox işaretli olduğunda kullanılan renk
                                checkColor: Colors
                                    .white, // Checkbox içindeki işaretin rengi
                                side: const BorderSide(
                                    color: CBColors
                                        .primary), // Checkbox kenarlık rengi ve genişliği
                              ),
                              const Text(CBTexts.rememberMe),
                            ],
                          ),

                          ///forget password
                          TextButton(
                              onPressed: () {},
                              child: const Text(CBTexts.forgotPassword)),
                        ],
                      ),
                      const SizedBox(height: CBSizes.spaceBtwSections),

                      ///sign in method
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigate to HomePage
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              );
                            },
                            child: Text(CBTexts.signIn),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: CBColors.primary,
                              foregroundColor: CBColors.textWhite,
                              side: BorderSide(
                                  color: CBColors.primary), // Buton metin rengi
                            ),
                          )),
                      const SizedBox(height: CBSizes.spaceBtwItems),

                      ///create account button
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () => Get.to(() => const SignupScreen()),
                            child: Text(CBTexts.createAccount),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color:
                                      CBColors.primary), // Buton kenarlık rengi
                            ),
                          )),
                    ],
                  ),
                ),
              ),

              ///divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                          color: dark ? CBColors.darkGrey : CBColors.black,
                          thickness: 0.5,
                          indent: 60,
                          endIndent: 5)),
                  Text(CBTexts.signInWith.capitalize!,
                      style: Theme.of(context).textTheme.labelMedium),
                  Flexible(
                      child: Divider(
                          color: dark ? CBColors.darkGrey : CBColors.black,
                          thickness: 0.5,
                          indent: 5,
                          endIndent: 60)),
                ],
              ),
              const SizedBox(height: CBSizes.spaceBtwSections),

              ///footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: CBColors.greyColor),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                          width: CBSizes.iconMd,
                          height: CBSizes.iconMd,
                          image: AssetImage(CBImages.google)),
                    ),
                  ),
                  const SizedBox(width: CBSizes.spaceBtwItems),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: CBColors.greyColor),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                          width: CBSizes.iconMd,
                          height: CBSizes.iconMd,
                          image: AssetImage(CBImages.google)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
