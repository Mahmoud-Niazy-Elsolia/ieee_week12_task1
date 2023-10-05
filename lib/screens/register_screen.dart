import 'package:flutter/material.dart';
import 'package:ieee_week12_task1/components/app_bar.dart';
import 'package:ieee_week12_task1/components/form_field.dart';
import 'package:ieee_week12_task1/components/material_button.dart';
import 'package:ieee_week12_task1/constant.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                height: 20,
              ),
              const Text(
                'REGISTER',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomFormField(
                label: 'Email',
                inputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 17,
              ),
              const CustomFormField(
                label: 'Password',
                isPassword: true,
              ),
              const SizedBox(
                height: 17,
              ),
              const CustomFormField(
                label: 'Confirm Password',
                isPassword: true,
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CustomMaterialButton(
                    onPressed: () {},
                    label: 'Sign Up',
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              CustomMaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                label: 'Login',
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
