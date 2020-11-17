import 'package:flutter_test/flutter_test.dart';

import 'package:text_n_color/main.dart';
import 'package:text_n_color/models/backgroundColor.dart';

void main() {
  testWidgets('Application started and text appeares',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that text is on screen.
    expect(find.text('Hey There'), findsOneWidget);
  });

  test('Color changes by method getNextColor()', () {
    // Create instance of BackgroundColor
    var backgroundColor = BackgroundColor();

    // Get last item from color history
    var previousColor = backgroundColor.lastAddedColor;

    // Invoke next color function
    backgroundColor.getNextColor();

    // Verify that color changes
    expect(backgroundColor.bgColor, isNot(equals(previousColor)));
  });
}
