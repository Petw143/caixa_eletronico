import 'package:caixa_eletronico/caixaEletronico.dart';

class DispenserDinheiro {
	int _dinheiroDisponivel;
  final CaixaEletronico _caixaEletronico;

	DispenserDinheiro({int dinheiroDisponivel = 0, required CaixaEletronico caixa}) : _dinheiroDisponivel = dinheiroDisponivel, _caixaEletronico = caixa;

	int get dinheiroDisponivel => _dinheiroDisponivel;

	void adicionarDinheiro(int quantidade) {
		if(quantidade > 0) {
			_dinheiroDisponivel += quantidade;
		} else {
			print("Quantidade inválida!");
		}
	}  

	int sacarDinheiro(int quantidade) {
		if(quantidade > 0 && _dinheiroDisponivel >= quantidade) {
			_dinheiroDisponivel -= quantidade;
			return quantidade;
		} else {
			print("Quantidade inválida!");
			return 0;
		}
	}  

}