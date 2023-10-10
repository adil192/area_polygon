import 'package:flutter_test/flutter_test.dart';

import 'package:area_polygon/area_polygon.dart';

void main() {
  group('Calculate area of', () {
    test('1x1 square', () {
      const polygon = [
        Offset(0, 0),
        Offset(0, 1),
        Offset(1, 1),
        Offset(1, 0),
      ];
      expect(calculateArea(polygon), 1);
    });

    test('1x1 square (reverse)', () {
      const polygon = [
        Offset(1, 0),
        Offset(1, 1),
        Offset(0, 1),
        Offset(0, 0),
      ];
      expect(calculateArea(polygon), 1);
    });

    test('2x4 rectangle', () {
      const polygon = [
        Offset(0, 0),
        Offset(2, 0),
        Offset(2, 4),
        Offset(0, 4),
      ];
      expect(calculateArea(polygon), 8);
    });

    test('3x4 right triangle', () {
      const polygon = [
        Offset(0, 0),
        Offset(3, 0),
        Offset(3, 4),
      ];
      expect(calculateArea(polygon), 6);
    });

    test('anti-clockwise concave polygon (signed)', () {
      const polygon = [
        Offset(2, 4),
        Offset(7, 0),
        Offset(18, 9),
        Offset(16, 13),
        Offset(14, 10),
        Offset(11, 8),
        Offset(8, 11),
        Offset(7, 15),
        Offset(4, 11),
        Offset(2, 4),
      ];
      expect(calculateArea(polygon, signed: true), 108);
    });

    test('clockwise concave polygon (signed)', () {
      const polygon = [
        Offset(2, 4),
        Offset(4, 11),
        Offset(7, 15),
        Offset(8, 11),
        Offset(11, 8),
        Offset(14, 10),
        Offset(16, 13),
        Offset(18, 9),
        Offset(7, 0),
        Offset(2, 4),
      ];
      expect(calculateArea(polygon, signed: true), -108);
    });

    test('clockwise concave polygon (unsigned)', () {
      const polygon = [
        Offset(2, 4),
        Offset(4, 11),
        Offset(7, 15),
        Offset(8, 11),
        Offset(11, 8),
        Offset(14, 10),
        Offset(16, 13),
        Offset(18, 9),
        Offset(7, 0),
        Offset(2, 4),
      ];
      expect(calculateArea(polygon, signed: false), 108);
    });
  });
}
