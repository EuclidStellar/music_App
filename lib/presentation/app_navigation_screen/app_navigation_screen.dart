import 'controller/app_navigation_controller.dart';
import 'package:euclid_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          userName: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Home Page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homePageScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Top Playlists".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.topPlaylistsScreen),
                        ),
                        _buildScreenTitle(
                          userName: "List".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.listScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Favorites".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.favoritesScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Artists".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.artistsScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Artist".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.artistScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Albums".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.albumsScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Album Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.albumDetailsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String userName,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  userName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
