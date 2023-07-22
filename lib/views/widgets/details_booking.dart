import 'package:flutter/cupertino.dart';

class DetailsBooking extends StatelessWidget {
  const DetailsBooking({super.key, required this.bookingbotton});
  final bool bookingbotton;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        width: double.infinity,
        child: Column(
          children: [
            const Text(
              ":تفاصيل الحجز ",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "الاسم  : عمر السيد احمد \nالجامعة  : قاسيون الخاصة ",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            bookingbotton
                ? const Text(
                    "حالة الحجز  : تم الحجز  ",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : const Text(
                    "حالة الحجز  : لم يتم الحجز  ",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ],
        ));
  }
}
