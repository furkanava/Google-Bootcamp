import 'package:chaboo/features/authentication/screens/signup/email_verification.dart';
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

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = CBHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CBSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///title
              Text(CBTexts.signUpTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: CBSizes.spaceBtwSections),

              ///form
              Form(child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.user),
                            labelText: CBTexts.firstName,
                          ),
                        ),
                      ),
                      const SizedBox(width: CBSizes.spaceBtwInputFields),
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.user),
                            labelText: CBTexts.lastName,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: CBSizes.spaceBtwInputFields),

                  /// username
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user_edit),
                      labelText: CBTexts.username,
                    ),
                  ),
                  const SizedBox(height: CBSizes.spaceBtwInputFields),

                  /// email
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.direct),
                      labelText: CBTexts.email,
                    ),
                  ),
                  const SizedBox(height: CBSizes.spaceBtwInputFields),

                  /// phone number
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.call),
                      labelText: CBTexts.phoneNumber,
                    ),
                  ),
                  const SizedBox(height: CBSizes.spaceBtwInputFields),

                  /// password
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.password_check),
                      labelText: CBTexts.password,
                      suffixIcon: Icon(Iconsax.eye_slash)
                    ),
                  ),
                  const SizedBox(height: CBSizes.spaceBtwSections),

                  /// terms&conditions checkbox
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(value: true, onChanged: (value) {}),
                      ),
                      const SizedBox(width: CBSizes.spaceBtwItems),
                      Expanded(
                        child: Wrap(
                          children: [
                            Text(
                              '${CBTexts.privacyPolicy} ',
                              style: Theme.of(context).textTheme.bodyMedium!.apply(
                                color: dark ? CBColors.white : CBColors.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: dark ? CBColors.white : CBColors.primary,
                              ),
                            ),
                            Text('${CBTexts.and} ', style: Theme.of(context).textTheme.bodySmall),
                            Text(
                              CBTexts.termsOfUse,
                              style: Theme.of(context).textTheme.bodyMedium!.apply(
                                color: dark ? CBColors.white : CBColors.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: dark ? CBColors.white : CBColors.primary,
                              ),
                            ),
                            Text('${CBTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),

                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: CBSizes.spaceBtwSections),

                  /// sign up button
                  SizedBox(width: double.infinity, child: ElevatedButton(
                    onPressed: () => Get.to(() => const VerifyEmailScreen()),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CBColors.primary,
                      foregroundColor: CBColors.textWhite,
                      side: const BorderSide(color: CBColors.primary),// Buton metin rengi
                    ),
                    child: const Text(CBTexts.createAccount),
                  )
                  ),

                ],
              ),
              ),
              const SizedBox(height: CBSizes.spaceBtwSections),

              ///divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(child: Divider(color: dark ? CBColors.darkGrey : CBColors.black, thickness: 0.5, indent: 60, endIndent: 5)),
                  Text(CBTexts.signInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium),
                  Flexible(child: Divider(color: dark ? CBColors.darkGrey : CBColors.black, thickness: 0.5, indent: 5, endIndent: 60)),

                ],
              ),
              const SizedBox(height: CBSizes.spaceBtwSections),

              ///footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: CBColors.greyColor),borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: (){},
                      icon: const Image(
                          width: CBSizes.iconMd,
                          height: CBSizes.iconMd,
                          image: AssetImage(CBImages.google)),
                    ),
                  ),
                  const SizedBox(width: CBSizes.spaceBtwItems),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: CBColors.greyColor),borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: (){},
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
