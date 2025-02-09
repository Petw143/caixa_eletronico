import 'dart:math';
import 'package:caixa_eletronico/transacaoBancaria.dart';

import 'sistemaBancario.dart';

class Conta {
  int _numeroConta;
  String _senhaConta;
  DateTime _dataAbertura;
  double _saldo;
  SistemaBancario? _sistemaBancario;
  List<TransacaoBancaria> _transacoes; 

  Conta({
    required String senhaConta,
    double saldo = 0,
    SistemaBancario? sistemaBancario
  })  : _numeroConta = Random().nextInt(1000000),
        _senhaConta = senhaConta,
        _dataAbertura = DateTime.now(),
        _saldo = saldo,
        _sistemaBancario = sistemaBancario,
        _transacoes = [];

  int get numeroConta => _numeroConta;

  List<TransacaoBancaria> get transacoes => _transacoes;

  String get senhaConta => _senhaConta;

  DateTime get dataAbertura => _dataAbertura;

  double get saldo => _saldo;

  void addTransacoes(TransacaoBancaria transacao) {
    _transacoes.add(transacao);
  }

  void alteraSenha(int numeroConta, String senhaConta, String novaSenha) {
    if (_sistemaBancario?.validaAcesso(numeroConta, senhaConta) == true) {
      _senhaConta = novaSenha;
      print("Senha alterada com sucesso!");
    } else {
      print("Número da conta ou senha incorretos!");
    }
  }
}