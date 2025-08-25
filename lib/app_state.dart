import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _emailRes = await secureStorage.getString('ff_emailRes') ?? _emailRes;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _dataEnviada = false;
  bool get dataEnviada => _dataEnviada;
  set dataEnviada(bool value) {
    _dataEnviada = value;
  }

  String _DeptSeleccionado = '';
  String get DeptSeleccionado => _DeptSeleccionado;
  set DeptSeleccionado(String value) {
    _DeptSeleccionado = value;
  }

  String _MuniSeleccionado = '';
  String get MuniSeleccionado => _MuniSeleccionado;
  set MuniSeleccionado(String value) {
    _MuniSeleccionado = value;
  }

  String _edifSeleccionado = '';
  String get edifSeleccionado => _edifSeleccionado;
  set edifSeleccionado(String value) {
    _edifSeleccionado = value;
  }

  int _mesaSeleccionado = 0;
  int get mesaSeleccionado => _mesaSeleccionado;
  set mesaSeleccionado(int value) {
    _mesaSeleccionado = value;
  }

  String _ubiSeleccionada = '';
  String get ubiSeleccionada => _ubiSeleccionada;
  set ubiSeleccionada(String value) {
    _ubiSeleccionada = value;
  }

  String _emailRes = '';
  String get emailRes => _emailRes;
  set emailRes(String value) {
    _emailRes = value;
    secureStorage.setString('ff_emailRes', value);
  }

  void deleteEmailRes() {
    secureStorage.delete(key: 'ff_emailRes');
  }

  bool _votosSumados = false;
  bool get votosSumados => _votosSumados;
  set votosSumados(bool value) {
    _votosSumados = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
