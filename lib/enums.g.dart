// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enums.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResultAdapter extends TypeAdapter<Result> {
  @override
  final int typeId = 1;

  @override
  Result read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Result.success;
      case 1:
        return Result.failure;
      default:
        return Result.success;
    }
  }

  @override
  void write(BinaryWriter writer, Result obj) {
    switch (obj) {
      case Result.success:
        writer.writeByte(0);
        break;
      case Result.failure:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResultAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
