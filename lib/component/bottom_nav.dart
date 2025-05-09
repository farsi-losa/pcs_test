import 'package:flutter/material.dart';
import 'package:pcs_test/component/button_nav.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  String standardSelected = "0";

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shadowColor: Colors.grey,
      elevation: 30,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              SizedBox(width: 10),
              IconTextButton(
                isSelected: standardSelected == "0",
                icon: Icons.home,
                label: 'Home',
                onTap:
                    () => setState(() {
                      standardSelected = "0";
                    }),
                spacing: 2, // Atur jarak menjadi 2 pixel
                color: Colors.redAccent,
              ),
              SizedBox(width: 30),
              IconTextButton(
                isSelected: standardSelected == "1",
                icon: Icons.event_available,
                label: 'Attendance',
                onTap:
                    () => setState(() {
                      standardSelected = "1";
                    }),
                spacing: 2, // Atur jarak menjadi 2 pixel
                color: Colors.redAccent,
              ),
            ],
          ),
          Row(
            children: [
              IconTextButton(
                isSelected: standardSelected == "2",
                icon: Icons.description,
                label: 'Form',
                onTap:
                    () => setState(() {
                      standardSelected = "2";
                    }),
                spacing: 2, // Atur jarak menjadi 2 pixel
                color: Colors.redAccent,
              ),
              SizedBox(width: 30),
              IconTextButton(
                isSelected: standardSelected == "3",
                icon: Icons.settings,
                label: 'Setting',
                onTap:
                    () => setState(() {
                      standardSelected = "3";
                    }),
                spacing: 2, // Atur jarak menjadi 2 pixel
                color: Colors.redAccent,
              ),
              SizedBox(width: 10),
            ],
          ),
        ],
      ),
    );
  }
}
