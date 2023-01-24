## SERIALIZATIONS
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
2. ### Attach a List<OrderItemModel> in OrderModel
```dart
order.itens = products;
```
3. ### Convert Object OrderModel to Map<String, dynamic>
```dart
final orderMap = order.toMap();
log('MAP', error: orderMap);
```
4. ### Convert Map<String, dynamic> to String Json
```dart
final orderJson = json.encode(orderMap);
log('JSON', error: orderJson);
```
5. ### Convert String Json to Map
```dart
final orderMap2 = json.decode(orderJson);
log('MAP2', error: orderMap2);
```
### Convert Map to Object
```dart
final order2 = OrderModel.fromMap(orderMap2);
log('Objetc2', error: order2.itens.toString());
```

