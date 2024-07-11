import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../signup/signup.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// Email
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields / 2),

          /// Remember Me & Forget Password
          Row(
            children: [
              /// Remember Me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberMe),
                ],
              ),

              /// Forget Password
              TextButton(
                  onPressed: () {},
                  child: const Text(TTexts.forgetPassword)),
            ],
          ),
          const SizedBox(height: TSizes.defaultSpace),

          /// Sign in Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () =>Get.to(const NavigationMenu()),
                child: const Text(TTexts.signIn)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          /// Create Account
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () =>Get.to(const SignupScreen()),
                child: const Text(TTexts.createAccount)),
          ),
        ],
      ),
    );
  }
}