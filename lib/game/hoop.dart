// hoop.dart

import 'dart:math';

class BasketballHoop {
  final double height;
  final double diameter;
  final double distanceFromBackboard;

  BasketballHoop({this.height = 3.05, this.diameter = 0.4572, this.distanceFromBackboard = 1.2});

  bool isBallThroughHoop(double ballDiameter, double ballPositionY) {
    // Check if the ball is through the hoop
    return ballPositionY >= height - (diameter / 2) && ballPositionY <= height + (ballDiameter / 2);
  }
}

void main() {
  BasketballHoop hoop = BasketballHoop();
  print('Hoop Height: ${hoop.height} meters');
  print('Hoop Diameter: ${hoop.diameter} meters');

  // Example usage
  double ballPositionY = 3.0; // Example position of the ball in height
  double ballDiameter = 0.24; // Standard basketball diameter

  if (hoop.isBallThroughHoop(ballDiameter, ballPositionY)) {
    print('The ball is through the hoop!');
  } else {
    print('The ball is not through the hoop.');
  }
}