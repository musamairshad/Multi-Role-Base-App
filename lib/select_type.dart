import 'package:flutter/material.dart';

const List<String> list = <String>['Admin', 'Teacher', 'Student'];

class SelectType extends StatefulWidget {
  const SelectType({super.key});

  @override
  State<SelectType> createState() => _SelectTypeState();
}

class _SelectTypeState extends State<SelectType> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(
        color: Colors.blue,
      ),
      underline: Container(
        height: 2,
        color: Colors.blue.shade100,
      ),
        onChanged: (String? value) {
          setState(() {
            dropdownValue = value!;
          });
        },
        value: dropdownValue,
        items: list.map((value) {
          return DropdownMenuItem(
            value: value,
            child: Text(value),
            );
        }).toList(),
        );
  }
}
