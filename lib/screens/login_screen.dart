import 'package:flutter/material.dart';
import 'package:ieee_week12_task1/components/app_bar.dart';
import 'package:ieee_week12_task1/components/form_field.dart';
import 'package:ieee_week12_task1/components/material_button.dart';
import 'package:ieee_week12_task1/components/text_button.dart';
import 'package:ieee_week12_task1/constant.dart';
import 'package:ieee_week12_task1/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 70,
              ),
              const Text(
                'LOGIN',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomFormField(
                label: 'Email',
                inputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomFormField(
                label: 'Password',
                isPassword: true,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextButton(
                      onPressed: () {},
                      text: 'Forget Password ?',
                    ),
                    CustomMaterialButton(
                      onPressed: () {},
                      label: 'Login',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomMaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const RegisterScreen(),
                    ),
                  );
                },
                label: 'Sign Up',
                width: double.infinity,
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
