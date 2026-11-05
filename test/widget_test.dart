import 'package:flutter_test/flutter_test.dart';
import 'package:gentrack_week02/main.dart';

void main() {
  testWidgets('Displays the GenTrack home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const GenTrackApp());

    expect(find.text('GenTrack'), findsOneWidget);
    expect(find.text('Total paid'), findsOneWidget);
    expect(find.text('IQD 56,500'), findsOneWidget);
    expect(find.text('4 payments'), findsOneWidget);

    expect(find.text('Ampere fee'), findsOneWidget);
    expect(find.text('Mains bill'), findsOneWidget);
    expect(find.text('Diesel'), findsOneWidget);
    expect(find.text('Electrician'), findsOneWidget);
  });
}