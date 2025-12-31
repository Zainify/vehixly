// This is a basic Flutter widget test for Vehixly Premium Car Enthusiast App
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:vehixly/main.dart';

void main() {
  testWidgets('Vehixly App loads with splash screen', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const VehixlyApp());

    // Verify that our app starts with the splash screen.
    expect(find.text('VEHIXLY'), findsOneWidget);
    expect(find.text('Premium Car Enthusiast'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('App uses premium theme', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const VehixlyApp());

    // Verify that the app uses the electric blue color theme
    final MaterialApp app = tester.widget(find.byType(MaterialApp));
    expect(app.theme, isNotNull);
    expect(app.title, equals('Vehixly - Premium Car Enthusiast'));
    expect(app.debugShowCheckedModeBanner, false);
  });
}
