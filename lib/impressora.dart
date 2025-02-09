import 'package:caixa_eletronico/caixaEletronico.dart';

class Impressora {
  int _qtdTinta = 100;
  int _qtdPapel = 100;
  CaixaEletronico _caixaEletronico;

  Impressora(CaixaEletronico caixaEletronico) : _caixaEletronico = caixaEletronico;

  int get qtdTinta => _qtdTinta;

  int get qtdPapel => _qtdPapel;

  void imprimirRecibo(double qtdDinheiro) {
    if(_caixaEletronico.verificarSaldo() != -1) {
        print("Recibo!");
      } else {
        print("Saldo Insuficiente!");
      }
  }

}