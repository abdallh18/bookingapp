import 'package:bookingapp/constant.dart';
import 'package:bookingapp/views/widgets/custom_botton.dart';
import 'package:bookingapp/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/app_router.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyLoginView(),
    );
  }
}

class BodyLoginView extends StatelessWidget {
  const BodyLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          const Text(
            "Online Boking",
            style: TextStyle(
              fontSize: 40,
              color: KPrimaryColor,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          const CustomTextField(
            text: "email",
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomTextField(
            text: "password",
          ),
          const SizedBox(
            height: 50,
          ),
          CustomBooton(
              text: "login",
              onPressed: () {
                GoRouter.of(context).push(AppRouter.KHomeView);
              }),
        ],
      ),
    );
  }
}
