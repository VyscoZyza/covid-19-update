import 'package:flutter/material.dart';

class CardProvince {
  final Color colorBox;
  final String image;
  final Function onTap;

  CardProvince({@required this.colorBox, @required this.image, this.onTap});
}

class CardSource {
  List tempList = [];

  List<CardProvince> listCardProvince = <CardProvince>[
    CardProvince(
        colorBox: Colors.blue[300], image: 'src/img/chart.png', onTap: () {}),
    CardProvince(colorBox: Colors.cyan[300], image: 'src/img/chart.png'),
    CardProvince(colorBox: Colors.lightBlue[300], image: 'src/img/chart.png'),
  ];

  int getIndexValue(int index) {
    tempList.add(index);
    if (tempList.length == 3) tempList = [];

    return tempList.length;
  }
}
