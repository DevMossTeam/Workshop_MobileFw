// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'matakuliah.g.dart';

@JsonSerializable()
class Matakuliah {
  String nama_mk;
  int sks_mk;
  String kode_mk;
  String dosen_pengampu;
  String jam_kuliah;
  int semester_tempuh;

  Matakuliah({
    required this.nama_mk,
    required this.sks_mk,
    required this.kode_mk,
    required this.dosen_pengampu,
    required this.jam_kuliah,
    required this.semester_tempuh,
  });

  factory Matakuliah.fromJson(Map<String, dynamic> json) =>
      _$MatakuliahFromJson(json);

  /// Connect the generated [_$MatakuliahToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$MatakuliahToJson(this);
}
