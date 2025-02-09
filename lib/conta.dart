import 'sistemaBancario.dart';

class Conta {
  int _numeroConta;
  String _senhaConta;
  DateTime _dataAbertura;
  double _saldo;
  SistemaBancario? _sistemaBancario;

  Conta({
    required int numeroConta,
    required String senhaConta,
    double saldo = 0,
    SistemaBancario? sistemaBancario
  })  : _numeroConta = numeroConta,
        _senhaConta = senhaConta,
        _dataAbertura = DateTime.now(),
        _saldo = saldo,
        _sistemaBancario = sistemaBancario;

  int get numeroConta => _numeroConta;

  String get senhaConta => _senhaConta;

  DateTime get dataAbertura => _dataAbertura;

  double get saldo => _saldo;

  void alteraSenha(int numeroConta, String senhaConta, String novaSenha) {
    if (_sistemaBancario?.validaAcesso(numeroConta, senhaConta) == true) {
      _senhaConta = novaSenha;
      print("Senha alterada com sucesso!");
    } else {
      print("Número da conta ou senha incorretos!");
    }
  }
}