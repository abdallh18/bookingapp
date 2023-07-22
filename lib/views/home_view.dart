import 'package:bookingapp/constant.dart';
import 'package:bookingapp/views/widgets/body_home_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: KPrimaryBack,
      body: BodyHomeView(),
    );
  }
}




