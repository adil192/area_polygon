Calculate the area of a simple 2D polygon given its vertices.

This is a port of the [math-utils/area-polygon](https://github.com/math-utils/area-polygon)
library written in JavaScript.

## Usage

```dart
List<Offset> points = [
    // your points here, e.g. a 4x4 square:
    Offset(0, 0),
    Offset(0, 4),
    Offset(4, 4),
    Offset(4, 0),
];
double area = calculateArea(points); // 16
print('Area: $area');
```

The `points` must also trace the edge of the polygon.
The last point is assumed to be connected to the first point.

If `signed` is true, this will return the signed area.
This is helpful to determine the orientation of `points`.

Signed area is positive if the `points` are counter-clockwise,
or negative if the `points` are clockwise.
