import 'package:flutter_test/flutter_test.dart';
import 'package:myportofolio_mobile/main.dart';
import 'package:myportofolio_mobile/services/api_client.dart';

void main() {
  testWidgets('Portfolio home page smoke test', (tester) async {
    await tester.pumpWidget(MyApp(apiClient: ApiClient()));

    expect(find.text('MyPortfolio'), findsOneWidget);
    expect(find.text('Lihat Edukasi'), findsOneWidget);
  });
}
