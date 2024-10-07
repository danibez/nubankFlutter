import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

Future<List<Map<String, dynamic>>> databaseGetAll() async{
  late List<Map<String, dynamic>> result = [];
  QueryBuilder<ParseObject> queryUsers =
      QueryBuilder<ParseObject>(ParseObject('transactions'))
      ..orderByDescending("transDate");

  final ParseResponse parseResponse = await queryUsers.query();

  if (parseResponse.success && parseResponse.results != null) {
    final object = parseResponse.results!;
    
    for (var element in object) {
      result.add({
        'transType': element.get<String>('transType'),
        'value': element.get<double>('value').toString(),
        'transDate': element.get<DateTime>('transDate').toString(),
        'name': element.get<String>('name'),
        'remoteUser': element.get<String>('remoteUser')
      });
    }
  }
  return result;
}

void databaseInsert() async {
  
  var parseObject = ParseObject('transactions')
    ..set('transType', 'Transferência enviada')
    ..set('value', 135.50)
    ..set('transDate', DateTime(2024, 9, 25))
    ..set('name', 'Pix')
    ..set('remoteUser', 'Maria');
  final ParseResponse parseResponse = await parseObject.save();
  
  if (parseResponse.success) {
    var objectId = (parseResponse.results!.first as ParseObject).objectId!;
    print('Object created: $objectId');
  } else {
    print('Object created with failed: ${parseResponse.error.toString()}');
  }
}