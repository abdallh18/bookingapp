import 'package:flutter/material.dart';

import '../../constant.dart';
import 'details_booking.dart';

class BoogingMorning extends StatefulWidget {
  const BoogingMorning({super.key});

  @override
  State<BoogingMorning> createState() => _BoogingMorningState();
}

class _BoogingMorningState extends State<BoogingMorning> {
  bool bookingbotton = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DetailsBooking(bookingbotton: bookingbotton),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: SizedBox(
                    height: 50,
                    width: 300,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          bookingbotton = true;
                        });
                      },
                      style: TextButton.styleFrom(
                        backgroundColor:
                            bookingbotton ? KPrimaryColor : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Text(
                        "حجز",
                        style: TextStyle(
                          color: bookingbotton ? Colors.white : KPrimaryColor,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: SizedBox(
                    height: 50,
                    width: 300,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          bookingbotton = false;
                        });
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: const Text(
                        "الغاء الحجز ",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
