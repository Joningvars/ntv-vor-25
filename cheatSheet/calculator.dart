import 'dart:io';

void main() {
  for (int i = 1; i <= 5; i++) {  // Ytri lykkja: hversu mörg lög
    for (int j = 1; j <= i; j++) {  // Innri lykkja: hversu margar stjörnur á hverju lagi
      print('*\n');  // Prenta stjörnu á sama línu
    }
  }
}
