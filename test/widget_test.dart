import 'package:flutter_test/flutter_test.dart';
import 'package:gentrack_week02/main.dart';

void main() {
  testWidgets('Displays the GenTrack home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const GenTrackApp());

    expect(find.text('GenTrack'), findsOneWidget);
    expect(find.text('Recent Expenses'), findsOneWidget);
    expect(find.text('See all'), findsOneWidget);
    expect(find.text('4 payments'), findsOneWidget);
  });
}