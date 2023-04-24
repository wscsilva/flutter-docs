// Tratando data no Model
jsonDados['dataCadastro'] = dataCadastro != null ? DateFormat('yyyy-MM-ddT00:00:00').format(dataCadastro!) : null;

// Tratando uma lista no Model T2Ti
List<AtividadePrincipal> listaAtividadePrincipal = [];
listaAtividadePrincipal = (jsonDados['atividade_principal'] as Iterable?)?.map((m) => AtividadePrincipal.fromJson(m)).toList() ?? [];
// Tratamento atual
 itens: List<OrderItemModel>.from(map['itens']?.map((x) => OrderItemModel.fromMap(x)) ?? const [])