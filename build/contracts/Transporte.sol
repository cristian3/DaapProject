pragma solidity ^0.4.4;
/// contrato transporte
contract Transporte {
  uint private idTransporte; /// identificador del transporte
  uint private numeroAsientos; ///Numero de asientos que tendra el transporte
  Asiento[] private asientos; ///Array de asientos

  /// Constructor
  function Transporte(uint _idTransporte, uint _numeroAsientos){
    idTransporte = _idTranporte;
    numeroAsientos = _numeroAsientos;
    inicializarAsientos();
  }
  ///Representacion de un asiento
  struct Asiento {
    address addressPersona; ///Representacion de la persona que contrata el viaje
    uint256 pagoTransporte;
    bool seguroContratado;
  }

  function getIdTransporte() public constant return (uint){
    return idTransporte;
  }

  function getNumeroAsientos() public constant return (uint){
    return numerAsientos;
  }

  function getAsientos() public constant return (Asiento[]){
    return asientos;
  }
 ///Funcion que inicializa todos los asientos del transporte
  function inicializarAsientos() private {
    for (uint i = 0; i < numeroAsientos; i++) {
      asientos.push(Asiento(
        {
          persona: 0x0000000000000000000000000000000000000000,
          pagoTranspote: 0,
          seguroContratado: false
        }));
    }
  }
  /// Funcion que modifica un asiento.
  ///Asigna a una "persona" un asiento
  ///param uint _numerAsiento
  function modificarAsiento(uint _numeroAsiento, bool _seguroContratado) payable return (bool) {
    require(_numeroAsiento >= 0 && _numeroAsiento < numeroAsientos);
    require(asientos[_numeroAsiento].addressPersona == 0x0000000000000000000000000000000000000000);
    asientos[_numeroAsiento].addressPersona = msg.sender;
    asientos[_numeroAsiento]. = msg.value;
    asientos[_numeroAsiento]. = _seguroCOntratado;
    return true
  }

}
