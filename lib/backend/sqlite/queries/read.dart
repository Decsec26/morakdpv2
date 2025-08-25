import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN BUSCARJRV
Future<List<BuscarJRVRow>> performBuscarJRV(
  Database database, {
  String? idJRV,
}) {
  final query = '''
SELECT
  j.id_jrv as id_jrv,
  j.EDIF_cod_sec_elect as cod_sec_elect,
  j.EDIF_cod_area as cod_area,
  e.cod_edif as cod_edif,
  e.nombre as edificio,
  e.ubicacion as ubicacion,
  m.id_mun as id_muni,
  m.nombre as municipio,
  d.id_dep as id_depto,
  d.nombre as departamento
FROM JRV j
INNER JOIN EDIFICIO e
  ON j.EDIF_cod_edif = e.cod_edif
  AND j.EDIF_cod_sec_elect = e.cod_sec_elect
  AND j.EDIF_cod_area = e.cod_area
  AND j.MUN_id_mun = e.MUN_id_mun
  AND j.DEP_id_dep = e.DEP_id_dep
INNER JOIN MUNICIPIO m
  ON e.MUN_id_mun = m.id_mun
  AND e.DEP_id_dep = m.DEP_id_dep
INNER JOIN DEPARTAMENTO d
  ON m.DEP_id_dep = d.id_dep
WHERE j.id_jrv = ${idJRV};
''';
  return _readQuery(database, query, (d) => BuscarJRVRow(d));
}

class BuscarJRVRow extends SqliteRow {
  BuscarJRVRow(Map<String, dynamic> data) : super(data);

  String get departamento => data['departamento'] as String;
  String get municipio => data['municipio'] as String;
  String get edificio => data['edificio'] as String;
  int get idJrv => data['id_jrv'] as int;
  String get ubicacion => data['ubicacion'] as String;
}

/// END BUSCARJRV
