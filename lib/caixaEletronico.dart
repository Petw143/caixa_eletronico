import 'dart:math';
import 'package:caixa_eletronico/sistemaBancario.dart';
import 'conta.dart';

class CaixaEletronico {
	int _numeroSerie;
	Conta? _contaAtual;
	SistemaBancario _sistemaBancario;

	CaixaEletronico({
		required SistemaBancario sistemaBancario 
	}) : _sistemaBancario = sistemaBancario,
		 _numeroSerie = Random().nextInt(1000000000);

	Conta? get contaAtual => _contaAtual;

	int get numeroSerie => _numeroSerie;

	bool acessar(int numeroConta, String senhaConta) {
		_contaAtual = _sistemaBancario.buscarConta(numeroConta);
		if(_contaAtual != null && _sistemaBancario.validaAcesso(numeroConta, senhaConta)) {
			return true;
		} else {
			_contaAtual = null;
			return false;
		}
	}

	void deslogar() {
		_contaAtual = null;
	}

	double verificarSaldo() {
		if(_contaAtual != null) {
			return _contaAtual!.saldo;
		} else {
			return -1;
		}
	}

}