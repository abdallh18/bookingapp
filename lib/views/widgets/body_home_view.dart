import 'package:flutter/material.dart';

import '../../constant.dart';
import 'booking_evening.dart';
import 'booking_morning_view.dart';

class BodyHomeView extends StatefulWidget {
  const BodyHomeView({super.key});

  @override
  State<BodyHomeView> createState() => _BodyHomeViewState();
}

class _BodyHomeViewState extends State<BodyHomeView> {
  bool colorBootom = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: KPrimaryColor,
          ),
          height: 250,
          width: double.infinity,
          child: const Center(
            child: Text(
              "Boking Now",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SizedBox(
              height: 50,
              width: 300,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    colorBootom = true;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: colorBootom ? KPrimaryColor : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  "صباحا",
                  style: TextStyle(
                    color: colorBootom ? Colors.white : KPrimaryColor,
                    fontSize: 20,
                  ),
                ),
              ),
            )),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SizedBox(
              height: 50,
              width: 300,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    colorBootom = false;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: colorBootom ? Colors.white : KPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  "العودة",
                  style: TextStyle(
                    color: colorBootom ? KPrimaryColor : Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            )),
        colorBootom ? const BoogingMorning() : const BookingEvening(),
      ],
    );
  }
}
