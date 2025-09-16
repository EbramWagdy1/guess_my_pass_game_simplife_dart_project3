# 🔐 Guess My Password – Dart Console Game

A fun **console-based guessing game** built with **Dart**.  
The program generates a **6-digit secret password** where each digit is hidden inside its own **20-number range**.  
Your mission is to **guess each number one by one** while the game gives you hints after every guess.

---

## ✨ Features
- 🎨 **ASCII Art Banner** – Stylish welcome screen for a cool retro vibe.  
- 🔢 **6-Digit Secret Password** – Each digit hidden in its own 20-number range (0–20, 20–40, … 100–120).  
- 💡 **Smart Hints System** – Tells you if your guess is *very close*, *close*, or *far away*.  
- 🚪 **Quit Anytime** – Exit the game instantly by typing `exit`.  
- 🎉 **Interactive Gameplay** – Guess one number at a time with immediate feedback.  


---

## 🚀 Getting Started

### 1️⃣ Install Dart
Make sure you have [Dart SDK](https://dart.dev/get-dart) installed.  

Check installation:
```bash
dart --version
```
2️⃣ Clone this repo
```bash
git clone https://github.com/EbramWagdy1/guess_my_pass_game_simplife_dart_project3.git
cd guess-my-password-dart
```

3️⃣ Run the game
```bash
dart run game.dart
```
---
## 📂 Project Structure

```
├── fun.dart    # Helper functions (banner, generatePassword, handleGuess, check)
├── game.dart   # Main game logic (entry point)
```


 ---
 ## 🎮 How to Play
1. The program secretly creates a **6-digit password**.  
   - Each digit is randomly generated from ranges like:  
     - `0–20`, `20–40`, `40–60`, `60–80`, `80–100`, `100–120`.
2. You’ll be asked to guess each number in order.
3. After every guess, you’ll get hints:
   - 🔥 **Very close!** → your guess is nearly correct.  
   - 🙂 **Close.** → not too far.  
   - ❄️ **Far.** → way off.  
4. Once you guess correctly, the game moves to the next number.

---
## 🚪 Quit Anytime
- To leave the game at any moment, just type:
```text
exit
```
The program will stop immediately.

---

 ## 🎮 Example Gameplay  
 ```bash
    ________  __________________    __  _____  __   ____  ___   __________    _________    __  _________
   / ____/ / / / ____/ ___/ ___/   /  |/  /\ \/ /  / __ \/   | / ___/ ___/   / ____/   |  /  |/  / ____/
  / / __/ / / / __/  \__ \\__ \   / /|_/ /  \  /  / /_/ / /| | \__ \\__ \   / / __/ /| | / /|_/ / __/   
/ /_/ / /_/ / /___ ___/ /__/ /  / /  / /   / /  / ____/ ___ |___/ /__/ /  / /_/ / ___ |/ /  / / /___   
\____/\____/_____//____/____/  /_/  /_/   /_/  /_/   /_/  |_/____/____/   \____/_/  |_/_/  /_/_____/  

I Made A 6-Digit Password from 0 to 120 Try To Guess Them one by one:
Guess Number1 In Range {0-20}
Enter your Guess :
10
❄️ Far inside the range. Try ⬇️ lower.
Enter your Guess :
5
🙂 Close. Try ⬇️ lower.
Enter your Guess :
3
🔥 Very close! Try ⬇️ lower.
Enter your Guess :
2
🎉 Correct! You found 2.
Guess Number2 In Range {20-40}
Enter your Guess :
rrrr
❌ Please enter a valid number.
Enter your Guess :
25
🙂 Close. Try ⬆️ higher.
Enter your Guess :
30
🎉 Correct! You found 30.
Guess Number3 In Range {40-60}
Enter your Guess :
exit
You quit the game. The number was [2, 30, 57, 78, 99, 119]
Exiting program...



```
## 🔮 Future Enhancements  
🌍 Multiplayer Mode – Allow two players to compete in guessing the password.

🧠 Difficulty Levels – Add Easy, Medium, Hard with different hint ranges and number intervals.

⏱️ Timer & Score System – Track how fast the player guesses and assign points.

💾 Save & Resume Game – Store progress and continue later.

🎶 Sound Effects – Add simple sound cues for correct/incorrect guesses.

📊 Statistics Dashboard – Show win rate, attempts history, and average guesses.

🌐 Mobile Version – Deploy as a playable mobile app with Dart + Flutter for broader access.
## 📜 License  
This project is open-source and free to use.
