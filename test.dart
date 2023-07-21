void main(){

  List <Map<String,dynamic>> usersData = [
{"id": "001",
    "username": "ali",
    "password": "123",
    "accountData": {
      "accountName": "Syed Ali Raza Jafri",
      "availableBalance": "1000",
      "accountType": "Current Account",
      "accountNumber":"03132269475",
      "IBAN": "PK45SADA0000003132269475"
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
      "accountNumber":"03341317406",
      "IBAN": "PK45SADA0000003341317406"
    }
    },
];

for(int i = 0; i < usersData.length ; i++ ){
  // print(usersData[i]['accountData']['accountName']);
}

print(usersData[1]['accountData']['accountName']);

}