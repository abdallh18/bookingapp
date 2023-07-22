import 'package:flutter/cupertino.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.asset('assets/images/3240080-200.png'),
        ),
        const Text(
          'Bokking Student',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        )
      ],
    );
  }
}