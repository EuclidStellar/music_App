import '../../../core/app_export.dart';
import 'favorites_item_model.dart';

/// This class defines the variables used in the [favorites_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FavoritesModel {
  Rx<List<FavoritesItemModel>> favoritesItemList = Rx([
    FavoritesItemModel(
        tracks: ImageConstant.imgMusic.obs, addToPlaylist: "Tracks".obs),
    FavoritesItemModel(
        tracks: ImageConstant.imgUser.obs, addToPlaylist: "Artist".obs),
    FavoritesItemModel(
        tracks: ImageConstant.imgIcons.obs, addToPlaylist: "Album".obs),
    FavoritesItemModel(
        tracks: ImageConstant.imgFile.obs, addToPlaylist: "Playlists".obs),
    FavoritesItemModel(
        tracks: ImageConstant.imgDownload.obs, addToPlaylist: "Download".obs)
  ]);
}
