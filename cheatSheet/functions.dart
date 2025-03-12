void howLongTill50(String age){
  int yearsTill50 = 50 - int.parse(age);
  print("In $yearsTill50 years you will turn 50!! ");
}

// positional
void positionalNameAndAge(String name, int age){
  print("My name is $name and i am $age years old");
}

// named
void namedNameAndAge({String name = "Jón", int age = 25}){
  print("My name is $name and i am $age years old");
}