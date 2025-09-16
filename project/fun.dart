import 'dart:io';
import 'dart:math';

void printGameBanner(){
  print(r"""
   ________  __________________    __  _____  __   ____  ___   __________    _________    __  _________
  / ____/ / / / ____/ ___/ ___/   /  |/  /\ \/ /  / __ \/   | / ___/ ___/   / ____/   |  /  |/  / ____/
 / / __/ / / / __/  \__ \\__ \   / /|_/ /  \  /  / /_/ / /| | \__ \\__ \   / / __/ /| | / /|_/ / __/   
/ /_/ / /_/ / /___ ___/ /__/ /  / /  / /   / /  / ____/ ___ |___/ /__/ /  / /_/ / ___ |/ /  / / /___   
\____/\____/_____//____/____/  /_/  /_/   /_/  /_/   /_/  |_/____/____/   \____/_/  |_/_/  /_/_____/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
""");
}

List<int> generatePassword() {
  List<int> numbers = [];
  for (int i = 0; i < 6; i++) {
    int start = i * 20;
    int end = start + 20;
    int value = Random().nextInt(end - start) + start;
    numbers.add(value);
  }
  return numbers;
}



void handleGuess(String guess, int target, List<int> numbers){
  int? number=int.tryParse(guess);
  if(guess.toLowerCase()=="exit"){
    print("You quit the game. The number was $numbers");
    print("Exiting program...");
    exit(0);
  }
  else if(number == null){
    print("❌ Please enter a valid number.");
    return;
  }
  else if(number==target){
    print("🎉 Correct! You found $target.");
    return;
  }
  else{
    check(number, target);
  }
}



int check(int number,int target){
  int dis =(number - target).abs();
  String di = number < target ? "⬆️ higher" : "⬇️ lower";
  if(dis <=2){
    print("🔥 Very close! Try $di.");
  }
  else if(dis<=6){
    print("👀 Close. Try $di.");
  }
  else{
    print("🚀 Far inside the range. Try $di.");
  }
  return dis;
}