import 'package:euclid_s_application4/presentation/login_screen/login_screen.dart';
import 'package:euclid_s_application4/presentation/login_screen/binding/login_binding.dart';
import 'package:euclid_s_application4/presentation/home_page_screen/home_page_screen.dart';
import 'package:euclid_s_application4/presentation/home_page_screen/binding/home_page_binding.dart';
import 'package:euclid_s_application4/presentation/top_playlists_screen/top_playlists_screen.dart';
import 'package:euclid_s_application4/presentation/top_playlists_screen/binding/top_playlists_binding.dart';
import 'package:euclid_s_application4/presentation/list_screen/list_screen.dart';
import 'package:euclid_s_application4/presentation/list_screen/binding/list_binding.dart';
import 'package:euclid_s_application4/presentation/settings_screen/settings_screen.dart';
import 'package:euclid_s_application4/presentation/settings_screen/binding/settings_binding.dart';
import 'package:euclid_s_application4/presentation/favorites_screen/favorites_screen.dart';
import 'package:euclid_s_application4/presentation/favorites_screen/binding/favorites_binding.dart';
import 'package:euclid_s_application4/presentation/profile_screen/profile_screen.dart';
import 'package:euclid_s_application4/presentation/profile_screen/binding/profile_binding.dart';
import 'package:euclid_s_application4/presentation/artists_screen/artists_screen.dart';
import 'package:euclid_s_application4/presentation/artists_screen/binding/artists_binding.dart';
import 'package:euclid_s_application4/presentation/artist_screen/artist_screen.dart';
import 'package:euclid_s_application4/presentation/artist_screen/binding/artist_binding.dart';
import 'package:euclid_s_application4/presentation/albums_screen/albums_screen.dart';
import 'package:euclid_s_application4/presentation/albums_screen/binding/albums_binding.dart';
import 'package:euclid_s_application4/presentation/album_details_screen/album_details_screen.dart';
import 'package:euclid_s_application4/presentation/album_details_screen/binding/album_details_binding.dart';
import 'package:euclid_s_application4/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:euclid_s_application4/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String topPlaylistsScreen = '/top_playlists_screen';

  static const String listScreen = '/list_screen';

  static const String settingsScreen = '/settings_screen';

  static const String favoritesScreen = '/favorites_screen';

  static const String profileScreen = '/profile_screen';

  static const String artistsScreen = '/artists_screen';

  static const String artistScreen = '/artist_screen';

  static const String albumsScreen = '/albums_screen';

  static const String albumDetailsScreen = '/album_details_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: homePageScreen,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: topPlaylistsScreen,
      page: () => TopPlaylistsScreen(),
      bindings: [
        TopPlaylistsBinding(),
      ],
    ),
    GetPage(
      name: listScreen,
      page: () => ListScreen(),
      bindings: [
        ListBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: favoritesScreen,
      page: () => FavoritesScreen(),
      bindings: [
        FavoritesBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: artistsScreen,
      page: () => ArtistsScreen(),
      bindings: [
        ArtistsBinding(),
      ],
    ),
    GetPage(
      name: artistScreen,
      page: () => ArtistScreen(),
      bindings: [
        ArtistBinding(),
      ],
    ),
    GetPage(
      name: albumsScreen,
      page: () => AlbumsScreen(),
      bindings: [
        AlbumsBinding(),
      ],
    ),
    GetPage(
      name: albumDetailsScreen,
      page: () => AlbumDetailsScreen(),
      bindings: [
        AlbumDetailsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    )
  ];
}
