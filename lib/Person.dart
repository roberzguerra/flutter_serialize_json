import 'package:json_annotation/json_annotation.dart';
import 'package:serialize_json/Address.dart';

// Declara que outra parte desta classe esta no arquivo Person.g.dart
// Para gerar esta continuacao da classe, execute: flutter packages pub run build_runner build
part 'Person.g.dart';

@JsonSerializable()
class Person {

  @JsonKey(name: 'uid')
  String id;
  String name;

  List<Address> addresses;

  // Construtor sem parametros.
  Person(); 

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json); // Nomenclarutra deve ser SEMPRE: $NomeClasseFromJson.

  Map<String, dynamic> toJson() => _$PersonToJson(this);



}