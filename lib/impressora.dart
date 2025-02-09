import 'package:caixa_eletronico/caixaEletronico.dart';
import 'package:caixa_eletronico/transacaoBancaria.dart';

class Impressora {
  int _qtdTinta = 100;
  int _qtdPapel = 100;
  final CaixaEletronico _caixaEletronico;

  Impressora(this._caixaEletronico);

  int get qtdTinta => _qtdTinta;

  int get qtdPapel => _qtdPapel;

  void imprimirRecibo(double qtdDinheiro) {
    if (_qtdPapel > 0 && _qtdTinta > 0) {
      if (_caixaEletronico.verificarSaldo() >= qtdDinheiro) {
        print("Recibo impresso: R\$${qtdDinheiro.toStringAsFixed(2)}");
        _qtdPapel--;
        _qtdTinta -= 2; // Supondo que a impressão de um recibo consuma 2 unidades de tinta
      } else {
        print("Saldo insuficiente para imprimir o recibo!");
      }
    } else {
      print("Sem papel ou tinta suficiente para imprimir o recibo!");
    }
  }

  void imprimirExtrato() {
    if (_qtdPapel >= 5 && _qtdTinta >= 5) {
      if (_caixaEletronico.contaAtual?.transacoes != null) {
        print("Extrato de Transações:\n");
        for (TransacaoBancaria transacao in _caixaEletronico.contaAtual!.transacoes!) {
          print("Data: ${transacao.data}, Valor: R\$${transacao.valor.toStringAsFixed(2)}, Descrição: ${transacao.descricao}");
        }
        _qtdPapel -= 5; // Supondo que a impressão de um extrato consuma 5 folhas de papel
        _qtdTinta -= 10; // Supondo que a impressão de um extrato consuma 10 unidades de tinta
      } else {
        print("Nenhuma transação encontrada!");
      }
    } else {
      print("Sem papel ou tinta suficiente para imprimir o extrato!");
    }
  }
}