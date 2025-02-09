import 'caixaEletronico.dart';

class Estabelecimento{
	String _nome = "";
	String _endereco = "";
	final List<CaixaEletronico> _caixas = [];

	Estabelecimento({String nome = "", String endereco = ""}){
		_nome = nome;
		_endereco = endereco;
	}

	String get nome{
		return _nome;
	}

	set nome(String nome){
		_nome = nome;
	}

	String get endereco{
		return _endereco;
	}

	set endereco(String endereco){
		_endereco = endereco;
	}

	List<CaixaEletronico> get caixas{
		return _caixas;
	}

	set caixas(List<CaixaEletronico> caixas){
		_endereco = endereco;
	}
}