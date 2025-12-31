// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_timezone_example/main.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const channel = MethodChannel('my_timezone');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (call) async {
      switch (call.method) {
        case 'getLocalTimezone':
          return 'Asia/Ho_Chi_Minh';
        case 'getAvailableTimezones':
          return <String>['UTC', 'Asia/Ho_Chi_Minh'];
        default:
          throw PlatformException(
            code: 'Unimplemented',
            message: 'Method not mocked: ${call.method}',
          );
      }
    });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  testWidgets('Shows timezone data from platform', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(
      find.byWidgetPredicate(
        (Widget widget) =>
            widget is Text &&
            (widget.data?.contains('Local timezone: Asia/Ho_Chi_Minh') ??
                false),
      ),
      findsOneWidget,
    );
    expect(find.text('Available timezones:'), findsOneWidget);
    expect(find.text('UTC'), findsOneWidget);
    expect(find.text('Asia/Ho_Chi_Minh'), findsOneWidget);
  });
}
