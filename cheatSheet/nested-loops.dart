import 'dart:io';

void main(){

  // bool isTrue = false;
  //
  // while(isTrue == true){
  //   print("HELLO MY FRIEND!!");
  // }
  //
  // do{
  //
  //   print("HELLO MY FRIEND!!");
  //
  // } while (isTrue == true);

  // List animalsList = [["Fiskur", "Froskur"], ["hundur", "köttur"]];
  //
  //
  // for(int i = 0; i < animalsList.length; i++) {
  //
  //   for(int j = 0; j < animalsList[i].length; j++){
  //     print(animalsList[j][i]);
  //   }
  //
  // }


  // // FYRIR HVERT SET AF ANIMALSLIST
  // for(List animalsSet in animalsList){
  //
  //   // FYRIR HVERT ANIMAL Í ANIMALSSET
  //   for(String animal in animalsSet){
  //     print(animal);
  //   }

  // }


  // ** TÍMAVERKEFNI **

  // PRENTA ÚT STJÖRNURNAR

  // *
  // **
  // ***
  // ****
  // *****

  // -- SVAR --

//   for(int i = 1; i <= 5; i++){
//   print("OUTER LOOP: $i")
// ;    for(int j = 1; j <= i; j++){
//   print("INNER LOOP: $j");
//       stdout.write("*");
//     }
//
//     print('');
//   }

  // ** BÓNUS CHALLENGE **
  // email validator, prentið út öll email sem eru valid emails
  List<String> emails = [
    'example1@gmail.com',
    "donkey.is",
    'example2@hotmail.com',
    "atli.yahoo.is",
    'example3@yahoo.com',
    'hello@world.com',
    "shrek123.com",
    'user@dart.com',
  ];

  // -- SVAR --

  // List validEmails = [];
  // List invalidEmails = [];
  //
  //
  // for(int i = 0; i < emails.length; i++){
  //   if(emails[i].contains("@") && emails[i].contains(".com")){
  //     validEmails.add(emails[i]);
  //     } else {
  //     invalidEmails.add(emails[i]);
  //   }
  // }
  //
  // print("VALID EMAILS: $validEmails");
  //
  // print("INVALID EMAILS: $invalidEmails");

  // TÍMAVERKEFNI

  // Nota nested loops til að prenta út:

  // *****
  // *****
  // *****
  // *****
  // *****

  //     *
  //    **
  //   ***
  //  ****
  // *****

  // 1
  // 121
  // 12321
  // 1234321

  //   *
  //  ***
  // *****
  //  ***
  //   *


}

