import 'conta.dart';

class Cliente {
	String _nome = "";
	int _cpf = 0;
  final List<Conta> _contas = [];

	Cliente({String nome = "", int cpf = 0}) {
		_nome = nome;
		_cpf= cpf;
	}

	String get nome {
		return _nome;
	}

	set nome(String nome) {
		_nome = nome;
	}

	int get cpf {
		return _cpf;
	}

	set cpf(int cpf) {
		_cpf = cpf;
	}

  List<Conta> get contas {
    return _contas;
  }
}