import 'package:euclid_s_application4/core/app_export.dart';
import 'package:euclid_s_application4/presentation/top_playlists_screen/models/top_playlists_model.dart';

/// A controller class for the TopPlaylistsScreen.
///
/// This class manages the state of the TopPlaylistsScreen, including the
/// current topPlaylistsModelObj
class TopPlaylistsController extends GetxController {
  Rx<TopPlaylistsModel> topPlaylistsModelObj = TopPlaylistsModel().obs;
}
