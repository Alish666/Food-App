import 'package:flutter/material.dart';

class SelectedFavList {
  String id;
  bool isSelected;
  IconData iconData;

  SelectedFavList(this.id,
      {this.isSelected = false, this.iconData = Icons.star_border});
}
