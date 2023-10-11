import 'dart:ui' show Offset;

import 'package:area_polygon/area_polygon.dart';

void main() {
  const List<Offset> points = [
    // your points here, e.g. a 4x4 square:
    Offset(0, 0),
    Offset(0, 4),
    Offset(4, 4),
    Offset(4, 0),
  ];
  final double area = calculateArea(points); // 16
  print('Area: $area');
}
