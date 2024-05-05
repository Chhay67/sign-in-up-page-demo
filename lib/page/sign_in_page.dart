import 'package:flutter/material.dart';
import 'package:sign_in_up_demo/page/sign_up_page.dart';
import 'package:sign_in_up_demo/widgets/auth_text_from_field.dart';
import 'package:sign_in_up_demo/widgets/remeber_me_widget.dart';
import 'package:sign_in_up_demo/widgets/title_widget.dart';

import '../widgets/app_banner_logo.dart';
import '../widgets/auth_button.dart';
import '../widgets/have_any_account.dart';
import '../widgets/sub_title_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// bannner logo
          const AppBannerLogo(),

          /// title welcome
          const TitleWidget(
            title: 'Welcome Back',
          ),

          /// sub title
          const SubTitleWidget(
            subTitle: 'Please sign in to start the journey',
          ),

          /// email textformfield
          const AuthTextFromField(
            label: 'Email',
            hintText: 'flutter with kim',
          ),

          /// password textfromfield
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

          /// remember me
          RemeberMeWidget(),

          /// auth button
          AuthButton(
            title: 'Sign in',
            onTap: () {},
          ),

          /// dont have account
          HaveAnyAccount(
            title: 'Don\'t have any account?',
            btnText: 'Sign up',
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SignUpPage(),
              ));
            },
          )
        ],
      ),
    );
  }
}
