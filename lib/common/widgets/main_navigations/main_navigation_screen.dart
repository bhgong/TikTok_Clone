import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/common/widgets/main_navigations/widgets/nav_tab.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/utils.dart';

class MainNavigationScreen extends StatefulWidget {
  static const String routeName = "mainNavigation";

  final String tab;

  const MainNavigationScreen({
    super.key,
    required this.tab,
  });

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  final List<String> _tabs = [
    "home",
    "discover",
    "xxxx",
    "inbox",
    "profile",
  ];

  late int _selectedIndex = _tabs.indexOf(widget.tab);

  void _onTap(int index) {
    // context.go("/${_tabs[index]}"); // will be add..
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onPostVideoButtonTap() {
    // context.pushNamed(VideoRecordingScreen.routeName); // TODO : add a pushNamed...
  }

  @override
  Widget build(BuildContext context) {
    final isDark = isDarkMode(context);
    return Scaffold(
      backgroundColor:
          _selectedIndex == 0 || isDark ? Colors.black : Colors.white,
      body: Stack(
        children: [
          Offstage(
            offstage: _selectedIndex != 0,
            child: const Text("VideoTimeLineScreen"),
          ),
          Offstage(
            offstage: _selectedIndex != 1,
            child: const Text("DiscoverScreen"),
          ),
          Offstage(
            offstage: _selectedIndex != 3,
            child: const Text("InboxScreen"),
          ),
          Offstage(
            offstage: _selectedIndex != 4,
            child: const Text("UserProfileScreen"),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: _selectedIndex == 0 || isDark ? Colors.black : Colors.white,
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).padding.bottom + Sizes.size12,
        ),
        child: Padding(
          padding: const EdgeInsets.all(Sizes.size1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavTab(
                  text: "Home",
                  isSelected: _selectedIndex == 0,
                  icon: FontAwesomeIcons.house,
                  onTap: () => _onTap(0),
                  selectedIcon: FontAwesomeIcons.house,
                  selectedIndex: _selectedIndex),
              NavTab(
                  text: "Discover",
                  isSelected: _selectedIndex == 1,
                  icon: FontAwesomeIcons.compass,
                  onTap: () => _onTap(1),
                  selectedIcon: FontAwesomeIcons.solidCompass,
                  selectedIndex: _selectedIndex),
              Gaps.h24,
              GestureDetector(
                onTap: _onPostVideoButtonTap,
                child: Container(),
              ), // TODO : change Container to PostVideoButton
              Gaps.h24,
              NavTab(
                  text: "Inbox",
                  isSelected: _selectedIndex == 3,
                  icon: FontAwesomeIcons.message,
                  onTap: () => _onTap(3),
                  selectedIcon: FontAwesomeIcons.solidMessage,
                  selectedIndex: _selectedIndex),
              NavTab(
                  text: "Profile",
                  isSelected: _selectedIndex == 4,
                  icon: FontAwesomeIcons.user,
                  onTap: () => _onTap(4),
                  selectedIcon: FontAwesomeIcons.solidUser,
                  selectedIndex: _selectedIndex)
            ],
          ),
        ),
      ),
    );
  }
}
