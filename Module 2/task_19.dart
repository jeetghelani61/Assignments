// task_19.dart
// Superclass
class Vehicle {
  String type;
  String fuelType;

  Vehicle(this.type, this.fuelType);

  void displayDetails() {
    print('Vehicle Type: $type');
    print('Fuel Type: $fuelType');
  }
}

// Subclass Car
class Car extends Vehicle {
  int maxSpeed;

  Car(String fuelType, this.maxSpeed) : super('Car', fuelType);

  @override
  void displayDetails() {
    super.displayDetails(); // Call parent method
    print('Max Speed: $maxSpeed km/h');
  }
}

// Subclass Bike
class Bike extends Vehicle {
  int maxSpeed;

  Bike(String fuelType, this.maxSpeed) : super('Bike', fuelType);

  @override
  void displayDetails() {
    super.displayDetails(); // Call parent method
    print('Max Speed: $maxSpeed km/h');
  }
}

void main() {
  Car myCar = Car('Petrol', 200);
  print('--- Car Details ---');
  myCar.displayDetails();
  
  print(''); // For spacing
  
  Bike myBike = Bike('Electric', 120);
  print('--- Bike Details ---');
  myBike.displayDetails();
}