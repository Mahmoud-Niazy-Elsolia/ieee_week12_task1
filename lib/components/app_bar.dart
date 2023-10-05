import 'package:flutter/material.dart';
import 'icon_button.dart';

class CustomAppBar extends StatelessWidget{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .38,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF6AB6CF),
                Color(0xFF3CE6BC),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: CustomIconButton(
            onPressed: () {},
            icon: Icons.menu,
          ),
        ),
      ],
    );
  }
}