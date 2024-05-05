import 'package:flutter/material.dart';
import 'package:sign_in_up_demo/widgets/app_banner_logo.dart';
import 'package:sign_in_up_demo/widgets/auth_button.dart';
import 'package:sign_in_up_demo/widgets/auth_text_from_field.dart';
import 'package:sign_in_up_demo/widgets/have_any_account.dart';
import 'package:sign_in_up_demo/widgets/remeber_me_widget.dart';
import 'package:sign_in_up_demo/widgets/social_button.dart';
import 'package:sign_in_up_demo/widgets/sub_title_widget.dart';
import 'package:sign_in_up_demo/widgets/title_widget.dart';

import '../widgets/custom_divider.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppBannerLogo(),
          TitleWidget(title: 'Welcome'),
          SubTitleWidget(subTitle: 'Please Sign up to start the journey'),
          AuthTextFromField(
            label: 'Full name',
            hintText: 'kim',
          ),
          AuthTextFromField(
            label: 'Email',
            hintText: 'kim@gmail.com',
          ),
          AuthTextFromField(
            label: 'Password',
            hintText: 'input password',
            obscureText: true,
            trialingLabel: InkWell(
              onTap: () {},
              child: const Text(
                'Forget password?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
            ),
            suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.remove_red_eye_rounded)),
          ),
          const RemeberMeWidget(),
          AuthButton(onTap: () {}, title: 'Sign up'),
          const CustomDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SocialButton(
                icon: Icons.facebook_outlined,
                onTap: () {},
              ),
              SocialButton(
                icon: Icons.g_mobiledata_outlined,
                onTap: () {},
              ),
              SocialButton(
                icon: Icons.apple_outlined,
                onTap: () {},
              ),
            ],
          ),
          HaveAnyAccount(
            btnText: 'Sign In',
            title: 'Already have account?',
            onTap: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
