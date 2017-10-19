pragma solidity ^0.4.4;

import "./Transporte.sol";

contract Empresa {

  Transporte[] private transportes; ///Array de transportes
  uint256 private balanceEmpresa;
  bytes32 private nombreEmpresa;

  ///Constructor
  function Empresa (bytes32 _nombreEmpresa){
    nombreEmpresa = _nombreEmpresa;
  }

  ///Funcion Crear Transporte crea un trasporte y te devuelte la direccion
  /// del contrato creado
  function crearTrasporte (uint _idTransporte, uint _numeroAsientos) public return (bool) {
      transportes.push(new Transporte(_idTransporte, _numeroAsientos));
      return true;
  }

  function modificarAsientoTransporte(uint _idTransporte, uint _numeroAsiento, bool _seguroContratado) public payable return (bool) {
     return buscarTransporte(_idTransporte).modificarAsiento(_numeroAsiento, _seguroContratado);
  }

  function buscarTransporte(uint _idTransporte) private return (Transporte){
    uint numeroTransportes = transportes.length;
    for (uint i = 0; i < numeroTransportes; i++) {
      if(transportes[i].getIdTransporte() == _idTransporte){
        return trasportes[i];
      }
    }
  }

  function indemnizarPasajero(uint _idTransporte, uint _numeroAsiento, bool _seguroContratado) public return (bool) {
    return buscarTransporte(_idTransporte).devolver(_numeroAsiento, _seguroContratado);
  }
}
