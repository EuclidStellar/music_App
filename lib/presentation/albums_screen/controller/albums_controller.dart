import 'package:euclid_s_application4/core/app_export.dart';
import 'package:euclid_s_application4/presentation/albums_screen/models/albums_model.dart';

/// A controller class for the AlbumsScreen.
///
/// This class manages the state of the AlbumsScreen, including the
/// current albumsModelObj
class AlbumsController extends GetxController {
  Rx<AlbumsModel> albumsModelObj = AlbumsModel().obs;
}
