import 'package:flutter/material.dart';
import 'package:dashboard/common/app_colors.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColor.bgSideMenu,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "CAUT-Dashboard",
                style: TextStyle(
                  color: AppColor.yellow,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            DrawerListTile(
              title: "Change Password",
              icon: "assets/reset_password.png",
              press: () {},
            ),
            DrawerListTile(
              title: "Elective Agreement policy",
              icon: "assets/menu_onboarding.png",
              press: () {},
            ),
            DrawerListTile(
              title: "Elective Preference Selection",
              icon: "assets/menu_report.png",
              press: () {},
            ),
            DrawerListTile(
              title: "Change Elective",
              icon: "assets/menu_onboarding.png",
              press: () {},
            ),
            DrawerListTile(
              title: "Logout",
              icon: "assets/logout.png",
              press: () {},
            ),
            Spacer(),
            Image.asset("assets/sidebar_image.png")
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title, icon;
  final VoidCallback press;

  const DrawerListTile({Key key, this.title, this.icon, this.press})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Image.asset(
        icon,
        color: AppColor.yellow,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: AppColor.white),
      ),
    );
  }
}
