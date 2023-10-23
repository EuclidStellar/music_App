import '../../../core/app_export.dart';
import 'songlist_item_model.dart';

/// This class defines the variables used in the [list_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ListModel {
  Rx<List<SonglistItemModel>> songlistItemList = Rx([
    SonglistItemModel(
        songNumber: "1".obs,
        burning: "Burning".obs,
        podvalCaplella: "Podval Caplella".obs),
    SonglistItemModel(
        songNumber: "2".obs,
        burning: "Flashbacks".obs,
        podvalCaplella: "Emika".obs),
    SonglistItemModel(
        songNumber: "3".obs,
        burning: "Renaissance".obs,
        podvalCaplella: "Podval Caplella".obs)
  ]);
}
