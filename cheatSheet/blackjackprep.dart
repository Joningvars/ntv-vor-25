

// Hvað er Object oriented programming (OOP)?
// Forritunarstíll sem byggir á því að að skipuleggja kóða í kringum
// "hluti / object". Þessir hlutir sameina gögn og
// aðgerðir í einingu sem auðvelt er að endurnýta.
// DRY: Dont Repeat Yourself. Reynum að gera allt eins re-useable og við getum.

// 4 ** lykilatriði OOP **

// 1.Klasi (class)
// 2. Hlutir (Object)
// 3. hjúpun (encaptulation)
// 4. Arfgengni (inheritence)

// DÆMI: Car class

class Car {
  // eiginleikar
  String brand;
  String model;
  int speed;

  // constructor
  Car(this.brand, this.model, this.speed);

  //aðferðir
  void drive(){
    print("$brand $model er að keyra á $speed km/h");
  }

  void brake(){
    this.speed = 0;
    print("$brand $model hefur stöðvast.");
  }

}

  // main function sem runnar file'inn
void main(){

  //búum til objectinn Car
  Car volvoXC90 = Car("Volvo", "XC90", 140);

  volvoXC90.drive();
  volvoXC90.brake();

  // Við getum notað classinn/blueprintið til að
  // búa til eins mara objects og við viljum.

  Car avensis = Car("Toyota", "Avensis", 65);
  avensis.drive();
  avensis.brake();

}

// ** VERKEFNI **
// Búa til class sem heitir Person
// Person er með nafn, aldur, starf
// Búum til method/aðferð sem: prentar út nafnið - Afmæli ár bætist við á aldurinn og prentar-
// svo út nýja aldurinn - Segja upp. Prentar út uppsögn eða bara ég hætti í $job takk fyrir mig.



