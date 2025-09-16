import 'dart:io';
import 'fun.dart';
void main() {
  printGameBanner();
  List<int> numbers = generatePassword();
  print("I Made A 6-Digit Password from 0 to 120 Try To Guess Them one by one:");
  for(int i =0 ; i<numbers.length;i++){
    int start= i*20;
    int end=start+20;
    int target=numbers[i];
    print("Guess Number${i+1} In Range {$start-$end}");
    while(true){
      print("Enter your Guess :");
      String guess=stdin.readLineSync()!;
      handleGuess( guess, target,  numbers);
      if (int.tryParse(guess) == target) {
        break;
      }
    }
  }
  print("\n👏 You guessed ALL numbers! {$numbers}");
}



//   number.add(Random().nextInt(20));         // 0 → 19
//   number.add(Random().nextInt(20) + 20);    // 20 → 39
//   number.add(Random().nextInt(20) + 40);    // 40 → 59
//   number.add(Random().nextInt(20) + 60);    // 60 → 79
//   number.add(Random().nextInt(20) + 80);    // 80 → 99
//   number.add(Random().nextInt(20) + 100);   // 100 → 119