import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LlamadaAAWSCall {
  static Future<ApiCallResponse> call({
    int? vp1Cdc,
    int? vp2Libre,
    int? vp3Pinu,
    int? vp4Lib,
    int? vp5Nac,
    int? vp6Nulos,
    int? totalvotos,
    int? vp7Blancos,
    int? jrv,
    String? fecha = '',
    String? revision = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id_act": "${jrv}",
  "fecha": "2025-08-25T17:59:20.392Z",
  "revision": "${revision}",
  "votos_dc": ${vp1Cdc},
  "votos_libre": ${vp2Libre},
  "votos_pinu": ${vp3Pinu},
  "votos_liberal": ${vp4Lib},
  "votos_nacional": ${vp5Nac},
  "votos_blancos": ${vp7Blancos},
  "votos_nulos": ${vp6Nulos},
  "JRV_id_jrv": "${jrv}",
  "RESP_id_res": 1,
  "RESP_EMP_id_cia": 4
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Llamada a AWS',
      apiUrl: 'http://3.17.205.81:8000/actas/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegistrarResponsableCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "dni": 0,
  "nombre": "string",
  "telefono": 0,
  "email": "string",
  "password": "string",
  "fecha_creacion": "2025-08-25T15:30:44.006Z",
  "EMP_id_cia": 4
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Registrar responsable',
      apiUrl: 'http://3.17.205.81:8000/responsables/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
