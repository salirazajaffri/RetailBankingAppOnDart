import 'dart:io';

// String username = "aliraza";
// String password = "ali123";

// Map <String,String> usersData = {
//   {"capital":"Islamabad","currency" : "PKR" ,"language": "Urdu"},
// };

bool runOrStop = true;
Map<String, dynamic> usersDataGlobal = {};
List<Map<String, dynamic>> usersLoginData = [
  {
    "id": "001",
    "username": "ali",
    "password": "123",
  },
  {
    "id": "002",
    "username": "bilalrehman",
    "password": "bilal123",
  }
];

List<Map<String, dynamic>> usersData = [
  {
    "id": "001",
    "username": "ali",
    "password": "123",
    "accountData": {
      "accountName": "Syed Ali Raza Jafri",
      "availableBalance": "1000",
      "accountType": "Current Account",
      "accountNumber": "03132269475",
      "IBAN": "PK45SAYL0000003132269475",
      "bankImd": "001",
      "bank": "Saylani",
    }
  },
  {
    "id": "002",
    "username": "bilalrehman",
    "password": "bilal123",
    "accountData": {
      "accountName": "Bilal Rehman",
      "availableBalance": "10000",
      "accountType": "Saving Account",
      "accountNumber": "03341317406",
      "IBAN": "PK45SAYL0000003341317406",
      "bankImd": "001",
      "bank": "Saylani",
    }
  },
  {
    "id": "003",
    "username": "hashmi",
    "password": "123",
    "accountData": {
      "accountName": "Hassan Ur Rehman Hashmi",
      "availableBalance": "20000",
      "accountType": "Asan Account",
      "accountNumber": "03462546995",
      "IBAN": "PK45SAYL0000003462546995",
      "bankImd": "001",
      "bank": "Saylani",
    }
  }
];

void main() {
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
    alreadyUser();
  } else if (userInput == "2") {
    print("~~~Signup Successfully~~~");
  } else {
    print("~~~Invalid Input~~~");
  }

  print(" ");
  print("===============================================");
}

alreadyUser() {
  bool flag = false;
  print(" ");
  print("Enter Username:");
  print(" ");
  String? usernameInput = stdin.readLineSync();
  print(" ");
  print("Enter Password:");
  print(" ");
  String? passwordInput = stdin.readLineSync();
  print(" ");

  // bool login = doLogin(usernameInput, passwordInput);

  for (int i = 0; i < usersData.length; i++) {
    if (usernameInput == usersData[i]['username'] &&
        passwordInput == usersData[i]['password']) {
      // print("~~~Login Successfully~~~");
      flag = true;
      usersDataGlobal = usersData[i];
      showDashboard(usersData[i]);
      break;
    }
  }
  if (flag == false) {
    print("~~~Invalid username or password~~~");
  }
}

// doLogin( dynamic username,dynamic password) {
//   usersLoginData.forEach((element) {
//     // print(element['username']);

//     if (username == element['username'] && password == element['password'])
//     {;
//     }

//   });
//   return false;
// }

showDashboard(userData) {
// print(userData);
  print("===================Dashboard============================");
  print("");
  stdout.write("Name : ");
  stdout.write(userData['accountData']['accountName']);

  print("");
  stdout.write("Account Number : ");
  stdout.write(userData['accountData']['accountNumber']);

  print("");
  stdout.write("IBAN : ");
  stdout.write(userData['accountData']['IBAN']);

  print("");
  stdout.write("Account Type : ");
  stdout.write(userData['accountData']['accountType']);

  print("");
  stdout.write("Available Balance : ");
  stdout.write(userData['accountData']['availableBalance']);

  print(" ");
  print(" ");

  print("---Press 1 for Main Menu");
  print("---Press 0 for Exit");

  String? afterLoginInput = stdin.readLineSync();

  if (afterLoginInput == "1") {
    showMainMenu();
  } else if (afterLoginInput == "0") {
    runOrStop = false;
  } else {
    print("Invalid Input");
  }
}

showMainMenu() {
  print(" ");
  print(" ");
  print("===================Main Menu============================");
  print(" ");
  print("---Press 1 for Dashboard");
  print("---Press 2 for Transfer Money ");
  print("---Press 3 for Bill Payment");
  print("---Press 4 for Mobile Topup");
  print("---Press 5 for Setting");
  print("---Press 6 for Bill Payment");
  print("---Press 0 for Exit");
  print(" ");

  String? mainMenuInput = stdin.readLineSync();

  if (mainMenuInput == "1") {
    showDashboard(usersDataGlobal);
  } else if (mainMenuInput == "1") {
  } else if (mainMenuInput == "2") {
    transferModule();
  } else if (mainMenuInput == "3") {
  } else if (mainMenuInput == "4") {
  } else if (mainMenuInput == "5") {}
}

transferModule() {
  print(" ");
  print(" ");
  print("===================Transfer Module============================");
  print(" ");
  print("---Press 1 for Instant Transfer");
  print("---Press 2 for View All Beneficiary");
  print("---Press 3 for Latest Transaction");
  print("---Press 0 for Exit");
  print(" ");

  String? transferInput = stdin.readLineSync();

  if (transferInput == "1") {
    OneTimeTransfer();
  } else if (transferInput == "2") {
  } else if (transferInput == "3") {
  } else if (transferInput == "0") {}
}

OneTimeTransfer() {
  print(" ");
  print(" ");
  print("===================Instant Transfer============================");
  print(" ");
  print("---Press 1 Same Bank");
  print("---Press 2 Other Bank");
  print("---Press 0 for Exit");

  String? OneTimeTransferInput = stdin.readLineSync();

  if (OneTimeTransferInput == "1") {
    bool validSameBankAccNum = true;
    bool Accfound = false;
    while (validSameBankAccNum) {
      print(" ");
      print("Enter Same Bank Account Number (11 digits):");
      print(" ");
      String? sameBankAccountNumber = stdin.readLineSync();
      print(" ");

      if (sameBankAccountNumber != null) {

        if (sameBankAccountNumber.length < 11 || sameBankAccountNumber.length > 11) {
          
          print(" ");
          print("Invalid Account number");
          print(" ");

        } 
        else if (sameBankAccountNumber == usersDataGlobal['accountData']['accountNumber']) {
          print("Sender and Reciever can't be same");
        } 
        else {
          // validSameBankAccNum = false;
          // var fetchSearchData = usersData.where((element) => element['accountData']['accountNumber'] == sameBankAccountNumber);
          for(int i = 0; i< usersData.length;i++){
            if( sameBankAccountNumber == usersData[i]['accountData']['accountNumber']){
              validSameBankAccNum = false;
              Accfound = true;
              transferMoney(usersData[i]);
              break;
            }
          }
          if(Accfound == false){
            print("Account not found");
          }
        }
      } else {
        print(" ");
        print("Empty Data not Allowed");
        print(" ");
      }
    }
  } else if (OneTimeTransferInput == "2") {
  } else if (OneTimeTransferInput == "0") {}
}

transferMoney(userInfo){

print("=================== Payee Information ============================");
  print("");
  stdout.write("Name : ");
  stdout.write(userInfo['accountData']['accountName']);

  print("");
  stdout.write("Account Number : ");
  stdout.write(userInfo['accountData']['accountNumber']);

  print("");
  stdout.write("IBAN : ");
  stdout.write(userInfo['accountData']['IBAN']);


}
