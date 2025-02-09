import 'package:caixa_eletronico/caixaEletronico.dart';
import 'conta.dart';

class SistemaBancario {
	final String _nomeInstituicao;
	final List<Conta> _contas;
	final List<CaixaEletronico> _caixas = [];

	SistemaBancario({
		required String nomeInstituicao,
		required List<Conta> contas,
	}) : _nomeInstituicao = nomeInstituicao,
		 _contas = contas;

	String get nomeInstituicao => _nomeInstituicao;

  List<Conta> get contas => _contas; 

	void addConta(Conta novaConta) {
		_contas.add(novaConta);
	}

	void removeConta(int numeroConta) {
		_contas.removeWhere((conta) => conta.numeroConta == numeroConta);
	}

	void addCaixaEletronico(CaixaEletronico novoCaixa) {
		_caixas.add(novoCaixa);
	}

	void removeCaixaEletronico(int numeroSerie) {
		_caixas.removeWhere((caixa) => caixa.numeroSerie == numeroSerie);
	}

	Conta? buscarConta(int numeroConta) {
		try {
			return _contas.firstWhere((conta) => conta.numeroConta == numeroConta);
		} catch (e) {
			return null;
		}
	}

	bool validaAcesso(int numeroConta, String senhaConta) {
		Conta? conta = buscarConta(numeroConta);
		return conta != null && conta.senhaConta == senhaConta;
	}

}