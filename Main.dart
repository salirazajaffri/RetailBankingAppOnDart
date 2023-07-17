import 'dart:io';

void main() {
  bool runOrStop = true;
  while (runOrStop) {
    mainMenu();
  }
}

mainMenu() {
  print(" ");
  print(" ");
  print("=== Welcome To Saylani Internet Banking App ===");
  print(" ");
  print("---Press 1 for Login :");
  print("---Press 2 for Signup :");
  print(" ");

  String? userInput = stdin.readLineSync();

  if (userInput == "1") {
    print("~~~Login Successfully~~~");
  } else if (userInput == "2") {
    print("~~~Signup Successfully~~~");
  } else {
    print("~~~Invalid Input~~~");
  }

  print(" ");
  print("===============================================");
}
