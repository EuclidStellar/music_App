import 'package:euclid_s_application4/core/app_export.dart';
import 'package:euclid_s_application4/presentation/favorites_screen/models/favorites_model.dart';

/// A controller class for the FavoritesScreen.
///
/// This class manages the state of the FavoritesScreen, including the
/// current favoritesModelObj
class FavoritesController extends GetxController {
  Rx<FavoritesModel> favoritesModelObj = FavoritesModel().obs;
}
