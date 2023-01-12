//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Functions {
    uint256 luckyNumber = 7;

    function showNumber() public view returns (uint256) {
        return luckyNumber;
    }

    uint256 public luckyNumber2 = 8;

    function setNumber(uint256 newNumber) public {
        luckyNumber2 = newNumber;
    }

    function nothing()
        public
        pure
        returns (
            uint256,
            bool,
            bool
        )
    {
        return (5, true, false);
    }

    function nothing2()
        public
        pure
        returns (
            uint256 x,
            bool y,
            bool z
        )
    {
        x = 6;
        y = false;
        z = true;
    }

    // view => Sadece görüntüleme işlemi yapıyorsak yani değişiklik yapmıyorsak state üzerinde kullanırız
    // pure => Herhangi bir okuma yapılmıyorsa pure ile işaretlememiz gerekir

    uint256 public x = 3;

    function setX(uint256 newX) public {
        x = newX;
    }

    function add(uint256 a, uint256 b) public view returns (uint256) {
        return a + b + block.timestamp;
    }

    function add2(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // public => Bu fonksiyonu hem dışarıdan kullanıcılar çağırabilir hemde kontrat çağırabilir

    function publicKeyword() public pure returns (string memory) {
        return "bubir public fonksiyondur";
    }

    function callPublicKeyword() public pure returns (string memory) {
        return publicKeyword();
    }

    // private =>   Sadece bulunduğu kontrat ulaşabilir dışarıdan kimse erişemez
    uint256 private z;

    function privateKeyword() private pure returns (string memory) {
        return "Bu bir private fonksiyondur";
    }

    // function callPrivateKeyword() public pure returns(string memory){
    //     return privateKeyword();
    // }

    // internal => kontrat miras olarak alınırsa gözüksün ancak dışarıdan kullanıcı erişelemesin
    function internalKeyword() internal pure returns (string memory) {
        return "Bu bir internal fonksiyondur";
    }

    // function callInternalKeyword() public pure returns(string memory){
    //     return privateKeyword();
    // }

    // external => kullanıcalar çağırabilir ancak kontrat içerisinde çağrılamaz

    function externalKeyword() external pure returns (string memory) {
        return "Bu bir internal fonksiyondur";
    }
    // bu fonksiyon içeriden çağrılırsa hata alınır.
}
