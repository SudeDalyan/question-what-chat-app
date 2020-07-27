import 'package:flutter/material.dart';
import 'package:group_6/core/my_colors.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  AppBarWidget({
    Key key,
    this.isDark = false,
    this.titleText = "",
    @required this.onPressed,
  })  : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  final bool isDark;
  final String titleText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: isDark ? MyColors.PURPLE : Colors.white,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: isDark ? Colors.white : MyColors.PURPLE,
        ),
        tooltip: "Menu",
        onPressed: onPressed,
      ),
      title: Text(
        titleText,
        style: Theme.of(context)
            .textTheme
            .headline5
            .copyWith(color: MyColors.PURPLE, fontWeight: FontWeight.w600),
      ),
    );
  }
}
