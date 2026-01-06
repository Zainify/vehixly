import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({Key? key}) : super(key: key);

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  int _selected = 0;

  static const _pages = [
    _NavPlaceholder(title: 'Home'),
    _NavPlaceholder(title: 'Search'),
    _NavPlaceholder(title: 'Profile'),
  ];

  void _onTap(int idx) => setState(() => _selected = idx);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryWhite,
      body: SafeArea(child: _pages[_selected]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected,
        onTap: _onTap,
        selectedItemColor: AppTheme.electricBlue,
        unselectedItemColor: AppTheme.textGray,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class _NavPlaceholder extends StatelessWidget {
  final String title;
  const _NavPlaceholder({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      ),
    );
  }
}
