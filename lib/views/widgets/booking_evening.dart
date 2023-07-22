import 'package:flutter/material.dart';

import 'dropdown_flight_times.dart';

class BookingEvening extends StatelessWidget {
  const BookingEvening({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "اوقات الرحل",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        DropdownFlightTimes()
      ],
    );
  }
}
