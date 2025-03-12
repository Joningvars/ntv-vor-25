
  // CLASSES

  import 'dart:io';

class Person {

    String name;
    int age;
    String? gender;
    String? enemy;

    Person({required this.name,required this.age, this.gender = "unknown", this.enemy = "Gunnar"});

    void introduce(){
      print("Hi, I am $name and I am a $age year old $gender.");
    }

    void curseEnemy(){
      print("Damn you $enemy!!");
    }


  }

  // VEHICLE CLASS
/*
  class Vehicle {
  String brand;
  int year;

  Vehicle( this.brand, this.year);

  void displayInfo(){
    print("$brand - $year");
  }

  }

  // CAR CLASS WICH INHERITS VEHICLE

  class Car extends Vehicle{
  int doors;
  String type;
  int mileage;

  Car({
    required this.doors,
    required this.type,
    required this.mileage,
    required String brand,
    required int year,
  }) : super(brand, year);

  void showMoreInfo(){
    print("Doors: $doors - Type: $type - Mileage: $mileage");
  }

  }
*/

  void main(){

 // Car car1 = Car(doors: 5, type: "Avensis", mileage: 120000, brand: "Toyota", year: 1991);

  //car1.displayInfo();
  //car1.showMoreInfo();



  // Biðja um nafn
  print("Enter your name please");
  String? name = stdin.readLineSync();

  // Biðja um aldur
  print("Enter your age please");
  int? age = int.parse(stdin.readLineSync()!);

  // Biðja um gender
  print("Enter your gender * OPTIONAL *");
  String? gender = validateInput(stdin.readLineSync()!);

  // Biðja um gender
  print("Who is your enemy!?!?");
  String? enemy = validateInput(stdin.readLineSync()!);

  Person user = Person(name: name!, age: age, gender: gender, enemy: enemy);

  user.introduce();
  user.curseEnemy();







  }

  String validateInput(String input){
    if(input == null || input.trim().isEmpty){
      print("Input cannot be empty or whitespace");
      return "Invalid";
    }
    return input;
  }