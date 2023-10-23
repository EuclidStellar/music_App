import '../../../core/app_export.dart';

/// This class is used in the [songlist_item_widget] screen.
class SonglistItemModel {
  SonglistItemModel({
    this.songNumber,
    this.burning,
    this.podvalCaplella,
    this.id,
  }) {
    songNumber = songNumber ?? Rx("1");
    burning = burning ?? Rx("Burning");
    podvalCaplella = podvalCaplella ?? Rx("Podval Caplella");
    id = id ?? Rx("");
  }

  Rx<String>? songNumber;

  Rx<String>? burning;

  Rx<String>? podvalCaplella;

  Rx<String>? id;
}
