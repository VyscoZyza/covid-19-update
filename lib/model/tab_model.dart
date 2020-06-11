import 'package:flutter/material.dart';

class Tabs {
  final IconData icon;
  final String title;
  final Color color;
  final Gradient gradient;

  Tabs(this.icon, this.title, this.color, this.gradient);
}

getGradient(Color color) {
  return LinearGradient(
      colors: [color.withOpacity(0.2), color.withOpacity(0.2)],
      stops: [0.0, 0.7]);
}

List<Tabs> tabs = [
  Tabs(
    Icons.home,
    "Local",
    Colors.blue[900],
    getGradient(Colors.lightBlue[300]),
  ),
  Tabs(Icons.pageview, "Global", Colors.blue[900],
      getGradient(Colors.lightBlue[300])),
];
