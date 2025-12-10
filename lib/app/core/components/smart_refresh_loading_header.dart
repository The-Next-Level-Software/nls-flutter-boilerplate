import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../theme/app_colors.dart';
import '../translations/strings_enum.dart';

class RefreshLoadingHeader extends StatelessWidget {
  const RefreshLoadingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ClassicHeader(
      refreshingIcon: SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: AppColors.primaryRed,
        ),
      ),
      refreshingText: "Refreshing",
      completeText: "Completed",
      releaseText: "Release to refresh",
      idleText: "Pull to refresh",
    );
  }
}

class RefreshLoadingFooterLoadMore extends StatelessWidget {
  const RefreshLoadingFooterLoadMore({super.key});

  @override
  Widget build(BuildContext context) {
    return ClassicFooter(
      loadStyle: LoadStyle.ShowWhenLoading,
      loadingIcon: SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: Get.theme.primaryColor,
        ),
      ),
      loadingText: Strings.LOAD_MORE.tr,
      canLoadingText: Strings.RELEASE_TO_LOAD_MORE.tr,
      idleText: Strings.PULL_UP_TO_LOAD_MORE.tr,
      noDataText: Strings.NO_MORE_DATA.tr,
    );
  }
}
