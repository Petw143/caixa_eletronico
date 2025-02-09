class DispenserDinheiro {
	int _dinheiroDisponivel;

	DispenserDinheiro([int dinheiroDisponivel = 0]) : _dinheiroDisponivel = dinheiroDisponivel;

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