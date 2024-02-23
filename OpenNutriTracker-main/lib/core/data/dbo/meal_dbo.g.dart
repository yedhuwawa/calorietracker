// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_dbo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MealDBOAdapter extends TypeAdapter<MealDBO> {
  @override
  final int typeId = 1;

  @override
  MealDBO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MealDBO(
      code: fields[0] as String?,
      name: fields[1] as String?,
      brands: fields[2] as String?,
      thumbnailImageUrl: fields[3] as String?,
      mainImageUrl: fields[4] as String?,
      url: fields[5] as String?,
      mealQuantity: fields[6] as String?,
      mealUnit: fields[7] as String?,
      servingQuantity: fields[8] as double?,
      servingUnit: fields[9] as String?,
      nutriments: fields[11] as MealNutrimentsDBO,
      source: fields[10] as MealSourceDBO,
    );
  }

  @override
  void write(BinaryWriter writer, MealDBO obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.brands)
      ..writeByte(3)
      ..write(obj.thumbnailImageUrl)
      ..writeByte(4)
      ..write(obj.mainImageUrl)
      ..writeByte(5)
      ..write(obj.url)
      ..writeByte(6)
      ..write(obj.mealQuantity)
      ..writeByte(7)
      ..write(obj.mealUnit)
      ..writeByte(8)
      ..write(obj.servingQuantity)
      ..writeByte(9)
      ..write(obj.servingUnit)
      ..writeByte(10)
      ..write(obj.source)
      ..writeByte(11)
      ..write(obj.nutriments);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealDBOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MealSourceDBOAdapter extends TypeAdapter<MealSourceDBO> {
  @override
  final int typeId = 14;

  @override
  MealSourceDBO read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return MealSourceDBO.unknown;
      case 1:
        return MealSourceDBO.custom;
      case 2:
        return MealSourceDBO.off;
      case 3:
        return MealSourceDBO.fdc;
      default:
        return MealSourceDBO.unknown;
    }
  }

  @override
  void write(BinaryWriter writer, MealSourceDBO obj) {
    switch (obj) {
      case MealSourceDBO.unknown:
        writer.writeByte(0);
        break;
      case MealSourceDBO.custom:
        writer.writeByte(1);
        break;
      case MealSourceDBO.off:
        writer.writeByte(2);
        break;
      case MealSourceDBO.fdc:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealSourceDBOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
