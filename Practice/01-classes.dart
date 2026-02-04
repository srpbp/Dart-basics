void main() {

  var car1 = Car('Toyota', 'Camry', 2020);
  car1.startEngine();
  car1.accelerate(10.0);
  car1.brake(5.0);
  car1.showInfo();
  
}

class Car {
  // Add your fields here
  String brand;
  String model;
  int year;
  double currentSpeed;
  bool isRunning;

  // Constructor goes here
  Car(this.brand, this.model, this.year) : 
    currentSpeed = 0.0, 
    isRunning = false;

  // Methods go here:
  void startEngine() {
    isRunning = true;
    print('Engine started');
  }

  void stopEngine() {
    isRunning = false;
    print('Engine stopped');
  }

  void accelerate(double amount) {
    if (isRunning == true) {
      currentSpeed += amount;
      print('Accelerating by $amount mph');
    }
  }

  void brake(double amount) {
    if (isRunning == true) {
      currentSpeed -= amount;
      print('Braking by $amount mph');
      if (currentSpeed < 0.0) {
        currentSpeed = 0.0;
      }
    }
  }

  void showInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Year: $year');
    print('Current Speed: $currentSpeed mph');
    print('Is Running: $isRunning');
  }
}
