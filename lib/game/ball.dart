class Ball {
  double x; // Horizontal position
  double y; // Vertical position
  double radius; // Ball radius
  double speedX; // Horizontal speed
  double speedY; // Vertical speed
  double gravity; // Gravity effect

  Ball({required this.x, required this.y, required this.radius, this.speedX = 0.0, this.speedY = 0.0, this.gravity = 9.8});

  // Update the position based on speed
  void updatePosition(double timeDelta) {
    // Update position based on speed
    x += speedX * timeDelta;
    y += speedY * timeDelta;
    // Apply gravity to vertical speed
    speedY -= gravity * timeDelta;
  }

  // Bounce the ball off the ground
  void bounce() {
    speedY = -speedY * 0.8; // Reverse the vertical speed and reduce it by 20%
  }

  // Check if the ball is on the ground
  bool isOnGround(double groundLevel) {
    return y - radius <= groundLevel;
  }
}