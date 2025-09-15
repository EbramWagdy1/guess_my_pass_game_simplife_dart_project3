import 'dart:math';
import 'fun.dart';

void main() {
  printGameBanner();

  List<int> number = [];

  for(int i=0; i<6 ; i++){
    int start= i*20;
    int end=start+20;
    int value = Random().nextInt(end-start)+start;
    number.add(value);
  }

  print(number);


}



//   number.add(Random().nextInt(20));         // 0 → 19
//   number.add(Random().nextInt(20) + 20);    // 20 → 39
//   number.add(Random().nextInt(20) + 40);    // 40 → 59
//   number.add(Random().nextInt(20) + 60);    // 60 → 79
//   number.add(Random().nextInt(20) + 80);    // 80 → 99
//   number.add(Random().nextInt(20) + 100);   // 100 → 119