class Cliente{
	String _nome = "";
	int _cpf = 0;
  List<Contas>

	Cliente({String nome = "", int cpf = 0}){
		_nome = nome;
		_cpf= cpf;
	}

	String get nome{
		return _nome;
	}

	set nome(String nome){
		_nome = nome;
	}

	String get cpf{
		return _cpf;
	}

	set cpf(String cpf){
		_cpf = cpf;
	}

}