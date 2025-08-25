import '../database.dart';

class UsuariosPermitidosMegatkTable
    extends SupabaseTable<UsuariosPermitidosMegatkRow> {
  @override
  String get tableName => 'usuarios_permitidos_megatk';

  @override
  UsuariosPermitidosMegatkRow createRow(Map<String, dynamic> data) =>
      UsuariosPermitidosMegatkRow(data);
}

class UsuariosPermitidosMegatkRow extends SupabaseDataRow {
  UsuariosPermitidosMegatkRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosPermitidosMegatkTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
