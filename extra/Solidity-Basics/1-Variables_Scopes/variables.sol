//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Variables{
    // Fixed-Size Types - Sabit Boyutlu değişkenler
    bool isTure = false; // (default değeri false tır)
    // değişken isimlendirirken  =>. type-name; type-name =değer;


    // Dynamic-Size Types - Boyutunu Tanımlaya bildiğimiz değişkenler
    int number = 12; //default = int256 => aralığı  => -2^256 to 2^256
    int8 number1 = 12;// 2^8 e kadar max değer alır değer aralığını değiştirebiliriz.
    uint number2 = 12;// 0 to 2^256 ya kadar gider.

    address myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // boyut = 20 byte
    bytes32 name1 = "itu blockchain";//1-32 arası değişken alır

    string name2 = "itu blockchain";
    bytes name3 = "itu blockchain";

    //array

    uint[] array=[1,2,3,4,5];
    mapping(uint => string) list;
    list[3] = "alim";

    mapping(uint => address) list2;
    list2[4] = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // User Defined Values Types - Kullanıcı tarafından oluşturulabilen değişkenler

    struct Human {
        uint ID;
        string name;
        uint age;
    }
    mapping(uint => Human) list2;
    Human person1;
    person1.ID = 23123213123;
    person1.name = "ulaş";
    person1.age = 20;
    person1.addresss = 0x5B38Da6a701c5685454CfcB03FcB875f56beddC4;


    enum trafficlight{
        RED,
        YELLOW,
        GREEN
    }

    // trafficLight.GREEN;

    // Conditions

    // if(number == 12){
    // }

    1 wei = 1;
    1 ether = 10^18 wei;
    1 gwei = 10^9 wei;

    1 = 1 second;
    1 minutes = 60 seconds;
    1 hour = 60 minutes = 3600 seconds;
    1 days
    1 weeks

    // Verilerin Kapsam Alanları

}