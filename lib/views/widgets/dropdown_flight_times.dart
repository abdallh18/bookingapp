import 'package:flutter/material.dart';

import '../../constant.dart';

class DropdownFlightTimes extends StatefulWidget {
  const DropdownFlightTimes({super.key});

  @override
  State<DropdownFlightTimes> createState() => _DropdownFlightTimesState();
}

class _DropdownFlightTimesState extends State<DropdownFlightTimes> {
  List<String> listTimes = ["12:30", "2:20", "4:30"];
  String? selectedItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: KPrimaryColor, width: 2),
                  borderRadius: BorderRadius.circular(16)),
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: DropdownButton<String>(
                underline: const SizedBox(),
                hint: const Text("أختر وقت الرحلة"),
                onChanged: (value) {
                  setState(() {
                    selectedItems = value;
                  });
                },
                value: selectedItems,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: KPrimaryColor,
                ),
                style: const TextStyle(
                  color: KPrimaryColor,
                  fontSize: 22,
                ),
                isExpanded: true,
                iconSize: 36,
                items: listTimes
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(
                            e,
                          ),
                        ))
                    .toList(),
              ),
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
                  setState(() {});
                },
                style: TextButton.styleFrom(
                  backgroundColor: KPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text(
                  "حجز",
                  style: TextStyle(
                    color: Colors.white,
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
                  setState(() {});
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
    );
  }
}
