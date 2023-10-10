import 'dart:ui';

/// Calculate the area of a simple 2D polygon given its vertices.
///
/// The [points] must trace the edge of the polygon.
/// The last point is assumed to be connected to the first point.
///
/// If [signed] is true, this will return the signed area.
/// This is helpful to determine the orientation of [points].
///
/// Signed area is positive if the [points] are counter-clockwise,
/// or negative if the [points] are clockwise.
double calculateArea(
  List<Offset> points, {
  bool signed = false,
}) {
  double det = 0;

  if (points.first != points.last) {
    points = List.from(points)..add(points.first);
  }

  for (int i = 0; i < points.length - 1; ++i) {
    det += points[i].dx * points[i + 1].dy - points[i].dy * points[i + 1].dx;
  }

  if (signed) {
    return det / 2;
  } else {
    return det.abs() / 2;
  }
}
