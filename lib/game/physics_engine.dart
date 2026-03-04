// physics_engine.dart

class PhysicsEngine {
    static const double gravity = 9.81; // Acceleration due to gravity (m/s²)

    /// Calculate the trajectory of a projectile.
    /// [initialVelocity] is the speed at which the object is thrown in m/s.
    /// [angle] is the angle of projection in degrees.
    static void calculateTrajectory(double initialVelocity, double angle) {
        double radianAngle = angle * (3.14159265359 / 180);
        double timeOfFlight = (2 * initialVelocity * sin(radianAngle)) / gravity;
        double range = (initialVelocity * cos(radianAngle)) * timeOfFlight;

        // Output time of flight and range
        print('Time of Flight: \\$timeOfFlight seconds');
        print('Range: \\$range meters');
    }

    /// Calculate the height of the projectile at a given time.
    static double calculateHeight(double initialVelocity, double angle, double time) {
        double radianAngle = angle * (3.14159265359 / 180);
        return (initialVelocity * sin(radianAngle) * time) - (0.5 * gravity * time * time);
    }

    /// Calculate the velocity of the projectile at a given time.
    static double calculateVelocity(double initialVelocity, double angle, double time) {
        double radianAngle = angle * (3.14159265359 / 180);
        double vx = initialVelocity * cos(radianAngle);
        double vy = (initialVelocity * sin(radianAngle)) - (gravity * time);
        return Math.sqrt(vx * vx + vy * vy);
    }
}