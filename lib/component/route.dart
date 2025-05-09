import 'package:flutter/material.dart';
import 'package:pcs_test/notif_page.dart';

Route createRouteToPage() {
  return PageRouteBuilder(
    pageBuilder:
        (context, animation, secondaryAnimation) => DynamicListViewPage(),
    transitionDuration: Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      animation = CurvedAnimation(parent: animation, curve: Curves.easeInCubic);
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
