import 'dart:io';

// void main(){
//   // BakeCake DevilsCake = BakeCake();
//   //
//   // DevilsCake.preHeatOven();
//   // DevilsCake.putFlourInBettyCrockerMix();
//   // DevilsCake.putInOven();
//
//   Dog dog = Dog("Snati");
//   Bird bird = Bird("Tító fugl");
//   dog.poop();
//   bird.poop();
//   dog.makeSound();
//   bird.makeSound();
//
//
// }

// INTERFACE ?? SAY WHAAT???
// abstract class CakeRecipe {
//   void putFlourInBettyCrockerMix();
//
//   void putInOven ();
//
//   void preHeatOven();
//
// }
//
// class BakeCake implements CakeRecipe{
//
//   @override
//   void preHeatOven() {
//     sleep(Duration(milliseconds: 1000));
//     print("* Turning the oven on 200 degrees celcius, fan mode!* ");
//   }
//
//   @override
//   void putFlourInBettyCrockerMix() {
//     sleep(Duration(milliseconds: 1000));
//     print("* Poring the pot of flour into the betty crocker mix... *");
//   }
//
//   @override
//   void putInOven() {
//     sleep(Duration(milliseconds: 1000));
//     print("* Opens the oven and accidentally touches the tray... OUCH okay then proceeding to put cake in oven! *");
//   }
//
// }


// Animal class
abstract class Animal {

  void makeSound();
  void sleep();
  void poop();

}

abstract class canFly{
  void fly();
}

abstract class canSwim{
  void swim();
}

// some animal implements it

class Dog implements Animal, canSwim{
  String name;

  Dog(this.name);

  @override
  void makeSound() {
    print("$name says Wruff! Wruff!");
  }

  @override
  void poop() {
    print("$name poops...");

  }

  @override
  void sleep() {
    print("$name sleeps zzZZzZzzZz...");
  }

  @override
  void swim() {
    // TODO: implement swim
  }

}

class Duck implements Animal, canSwim, canFly{



  @override
  void poop() {
    // TODO: implement poop
  }

  @override
  void sleep() {
    // TODO: implement sleep
  }

  @override
  void fly() {
    // TODO: implement fly
  }

  @override
  void swim() {
    // TODO: implement swim
  }

  @override
  void makeSound() {
    // TODO: implement makeSound
  }

}

class Bird implements Animal{
  String name;

  Bird(this.name);


  @override
  void makeSound() {
    print("$name says TWEEET TWEEET!");
  }

  @override
  void poop() {
    print("$name poops bird poop....");
  }

  @override
  void sleep() {
    print("$name sleeps zzZZZzzZZzzz...");
  }

}

  // * VERKEFNI *

 // GERA EINHVERN ABSTRACT CLASS OG IMPLEMENTA HANN Í CLASS'A!






// GENERICS, WHAT IS THAT ??

// TYPES
// String, int, List, Object, enum..
// Generic type <T>

// class UsersBox<T> {
//   List<T> users;
//
//   UsersBox(this.users);
// }
//
// void main(){
//   UsersBox<int> box = UsersBox([1,2]);
//   UsersBox<String> stringBox = UsersBox(["Hello", "world"]);
// }



// VEHICLE FACTORY ?? WHAAAT GREAT

abstract class Vehicle {
  void start();
  void stop();
}

class Car implements Vehicle{
  @override
  void start() {
    print("Car is starting...");
  }

  @override
  void stop() {
    print("Car is stopping...");
  }

}

class Bicycle implements Vehicle{
  @override
  void start() {
    print("Bicycle is starting...");

  }

  @override
  void stop() {
    print("Bicycle is stopping...");
  }

}

class Truck implements Vehicle{
  @override
  void start() {
    print("Truck is starting...");

  }

  @override
  void stop() {
    print("Truck is stopping...");

  }

}

class Garage{

  List<Vehicle> vehicles = [];

  void addVehicle(vehicle){
    vehicles.add(vehicle);
    print("$vehicle has been added to the garage!");
  }

  void startAll (){
    for(Vehicle vehicle in vehicles){
      vehicle.start();
    }
  }

}

// void main(){
//   // Create vehicles from their respective classes
//   Truck truck = Truck();
//   Car car = Car();
//   Bicycle bike = Bicycle();
//
//   // Create a garage to hold the vehicles
//   Garage myGarage = Garage();
//
//   // Call vehicle methods
//   myGarage.addVehicle(truck);
//   myGarage.addVehicle(car);
//   myGarage.addVehicle(bike);
//
//   // Call the defined method that works for all vehicles in the garage
//   myGarage.startAll();
//
// }

class Product<T> {
  T name;
  Product(this.name);

}

class CarParts<T> {
  T name;
  CarParts(this.name);
}

class Inventory<T> {
  List<T> items = [];

  void addItem(T item) {
    items.add(item);
  }

  void showItems() {
    print("------ INVENTORY ------");
    for (T item in items) {
      print(item);
    }
    print("-----------------------");
  }


}

void main(){
  Inventory<Product<String>> productInventory = Inventory();
  Inventory<CarParts<String>> carPartsInventory = Inventory();

  productInventory.addItem(Product("Apple"));


  carPartsInventory.addItem(CarParts("alternator"));


  carPartsInventory.showItems();
  productInventory.showItems();

}

// -- SUMMARY --
// GENERICS HJÁLPAR OKKUR AÐ DÍLA VIÐ TÝPUR SEM VIÐ VITUM EKKI FYRIRFRAM
// INTERFACE | IMPLEMENTS HJÁLPAR OKKUR AÐ SKIPULEGGJA OG SKILGREINA VIRKNI


