import '../database.dart';

class ImgMegatkTable extends SupabaseTable<ImgMegatkRow> {
  @override
  String get tableName => 'imgMegatk';

  @override
  ImgMegatkRow createRow(Map<String, dynamic> data) => ImgMegatkRow(data);
}

class ImgMegatkRow extends SupabaseDataRow {
  ImgMegatkRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ImgMegatkTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nombre => getField<String>('nombre')!;
  set nombre(String value) => setField<String>('nombre', value);
}
