## SERIALIZATIONS

#### Convertendo um ``` List<OrderModel>``` p/ uma string JSON
```dart
  convertOrderToJson(List<OrderModel> orders) {
    final teste = orders.map((e) => e.toMap()).toList();
    log('message', error: json.encode(teste));
  }
```

#### Map <String, Object>
```dart
    final js = {
      'orc_codigo': 1,
      'loj_codigo': 1,
      'cli_codigo': 30, 
      'orc_dat_emissao': DateTime.now().toString(),
      'status': "F",
      'plp_codigo': "01",
      'tip_codigo': 5,
      'item': [],
    };
log('MapJs', error: js);
```
1. #### Convert Map to Object (OrderModel)
```dart 
final order = OrderModel.fromMap(js);
log('Object', error: order);
```
2. #### Attach a List<OrderItemModel> in OrderModel
```dart
order.itens = products;
```
3. #### Convert Object OrderModel to Map<String, dynamic>
```dart
final orderMap = order.toMap();
log('MAP', error: orderMap);
```
4. #### Convert Map<String, dynamic> to String Json
```dart
final orderJson = json.encode(orderMap);
log('JSON', error: orderJson);
```
5. #### Convert String Json to Map
```dart
final orderMap2 = json.decode(orderJson);
log('MAP2', error: orderMap2);
```
#### Convert Map to Object
```dart
final order2 = OrderModel.fromMap(orderMap2);
log('Objetc2', error: order2.itens.toString());
```

### OrdeModel contain List<OrderItemModel>
```dart

class OrderModel {
  int orc_codigo;
  int loj_codigo;
  int cli_codigo;
  String orc_dat_emissao;
  String plp_codigo;
  int tip_codigo;
  String status;
  double? orc_val_gerado;
  double? orc_frete;
  double? orc_desconto;
  double? orc_val_total;
  List<OrderItemModel>? itens;
  int? vend_codigo;
  OrderModel({
    required this.orc_codigo,
    required this.loj_codigo,
    required this.cli_codigo,
    required this.orc_dat_emissao,
    required this.status,
    this.orc_val_gerado,
    this.orc_frete,
    this.orc_desconto,
    this.orc_val_total,
    required this.plp_codigo,
    required this.tip_codigo,
    this.itens,
    this.vend_codigo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orc_codigo': orc_codigo,
      'loj_codigo': loj_codigo,
      'cli_codigo': cli_codigo,
      'orc_dat_emissao': orc_dat_emissao,
      'plp_codigo': plp_codigo,
      'tip_codigo': tip_codigo,
      'status': status,
      'orc_val_gerado': orc_val_gerado,
      'orc_frete': orc_frete,
      'orc_desconto': orc_desconto,
      'orc_val_total': orc_val_total,
      'itens': itens?.map((x) => x.toMap()).toList(),
      'vend_codigo': vend_codigo,
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      orc_codigo: map['orc_codigo'] as int,
      loj_codigo: map['loj_codigo'] as int,
      cli_codigo: map['cli_codigo'] as int,
      orc_dat_emissao: map['orc_dat_emissao'] as String,
      plp_codigo: map['plp_codigo'] as String,
      tip_codigo: map['tip_codigo'] as int,
      status: map['status'] as String,
      orc_val_gerado: map['orc_val_gerado'] != null
          ? map['orc_val_gerado'] as double
          : null,
      orc_frete: map['orc_frete'] != null ? map['orc_frete'] as double : null,
      orc_desconto:
          map['orc_desconto'] != null ? map['orc_desconto'] as double : null,
      orc_val_total:
          map['orc_val_total'] != null ? map['orc_val_total'] as double : null,
      itens: List<OrderItemModel>.from(
          map['itens']?.map((x) => OrderItemModel.fromMap(x)) ?? const []),
      vend_codigo:
          map['vend_codigo'] != null ? map['vend_codigo'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderModel.fromJson(String source) =>
      OrderModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'OrderModel(orc_codigo: $orc_codigo, loj_codigo: $loj_codigo, cli_codigo: $cli_codigo, orc_dat_emissao: $orc_dat_emissao, plp_codigo: $plp_codigo, tip_codigo: $tip_codigo, status: $status, orc_val_gerado: $orc_val_gerado, orc_frete: $orc_frete, orc_desconto: $orc_desconto, orc_val_total: $orc_val_total, itens: $itens, vend_codigo: $vend_codigo)';
  }
}
```

### OrderItemModel
```dart

class OrderItemModel {
  double ito_qtde;
  ProductModel product;

  OrderItemModel({
    required this.ito_qtde,
    required this.product,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ito_qtde': ito_qtde,
      'product': product.toMap(),
    };
  }

  factory OrderItemModel.fromMap(Map<String, dynamic> map) {
    return OrderItemModel(
      ito_qtde: map['ito_qtde'] as double,
      product: ProductModel.fromMap(map['product'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderItemModel.fromJson(String source) =>
      OrderItemModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'OrderItemModel(ito_qtde: $ito_qtde, product: $product)';

  OrderItemModel copyWith({
    double? ito_qtde,
    ProductModel? product,
  }) {
    return OrderItemModel(
      ito_qtde: ito_qtde ?? this.ito_qtde,
      product: product ?? this.product,
    );
  }
}
```