import 'package:bookingapp/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookingApp());
}

class BookingApp extends StatelessWidget {
  const BookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
       routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
    );
  }
}
