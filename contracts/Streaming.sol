pragma solidity ^0.4.19;

contract Streaming{
  ///Direcciones de los emisores y sus balances
  mapping(address => uint) private balances;

  /// Solicitar Reproduccion devuelve true cuando el ether que le pasa el receptor
  /// es igual al que le pide el emisor y este ether es añadido al balance
  /// del emisor.
  function solicitarReproduccion(address _emisor, uint _coste) payable returns (bool){
    require(_coste == msg.value);
    balances[_emisor] += msg.value;
    return true;
  }
  /// Get Balance Emisor Devuelve el balance conseguido.
  function getBalanceEmisor() returns (uint){
    return balances[msg.sender];
  }
  /// Solicitar Retiro envia al emisor el ether conseguido.
  function solicitarRetiro() returns (bool){
    uint balance = balances[msg.sender];
    require(msg.sender.send(balance));
    balances[msg.sender] -= balance;
  }
}
