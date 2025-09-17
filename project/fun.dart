import 'dart:io';
import 'dart:math';

/// create a Banner function
void printGameBanner(){
  print(r"""
   ________  __________________    __  _____  __   ____  ___   __________    _________    __  _________
  / ____/ / / / ____/ ___/ ___/   /  |/  /\ \/ /  / __ \/   | / ___/ ___/   / ____/   |  /  |/  / ____/
 / / __/ / / / __/  \__ \\__ \   / /|_/ /  \  /  / /_/ / /| | \__ \\__ \   / / __/ /| | / /|_/ / __/   
/ /_/ / /_/ / /___ ___/ /__/ /  / /  / /   / /  / ____/ ___ |___/ /__/ /  / /_/ / ___ |/ /  / / /___   
\____/\____/_____//____/____/  /_/  /_/   /_/  /_/   /_/  |_/____/____/   \____/_/  |_/_/  /_/_____/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
""");
}

/// Generates a 6-digit password where each number is chosen randomly
/// from a distinct range of size 20 (0–19, 20–39, ..., 100–119).
/// Returns: A List<int> containing 6 random numbers, one from each range.
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

/// Handles a  guess number from user user.
/// Parameters:
///   - guess: input from user (string)
///   - target: the number that the user is try to guess
///   - numbers: the full list of number generate by (generatePassword)
///
/// How it works:
///   - if the user types "exit" → ends the game
///   - if the input is not a number → shows (❌ Please enter a valid number)
///   - if the guess == the target → (🎉 Correct! You found $target).
///   - else → calls check() to give hints (Very close!/close/far).

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

/// Compares the user's guess with the target number and give a hint
///
/// Parameters:
///   - number: from user
///   - target: from list
///
/// How it works:
///   - Calculates the distance between guess and target by  (dis =(number - target).abs()).
///   - Determines the direction:
///        if guess is smaller needs ⬆️ higher
///        if guess is larger needs ⬇️ lower
///   - Print a hint depending on :
///       ≤ 2   → Very close  if the guess is 2 numbers away or less from the target
///       ≤ 6   → Close       if the guess is 6 numbers away or less from the target
///       > 6   → Far         if the guess is more than 6 numbers away from the target
///
/// Return: The distance (dis) between guess and target.


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