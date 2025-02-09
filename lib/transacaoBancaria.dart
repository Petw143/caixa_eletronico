import 'conta.dart';

class TransacaoBancaria {
	final String _descricao;
	final DateTime _data;
	final double _valor;
	final Conta _conta;

	TransacaoBancaria({
		required String descricao,
		required double valor,
		required Conta conta
	}) : _descricao = descricao,
		 _valor = valor,
		 _conta = conta,
		 _data = DateTime.now(); 
					
  String get descricao {
    return _descricao;
  }


  DateTime get data {
    return _data;
  }


  double get valor {
    return _valor;
  }


  Conta get conta {
    return _conta;
  }

}