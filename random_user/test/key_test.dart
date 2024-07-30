import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('key ...', (tester) async {
    const apikey =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZpdG5udWl3ZWN2bG14Z2RyZ2xuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE4MzI0MTIsImV4cCI6MjAzNzQwODQxMn0.bi_YXaBALV_9AMXL8m2w3pXwB3jvyvnOdnxVuKLo_Ds';
    const request =
        "https://https://vitnnuiwecvlmxgdrgln.supabase.co/rest/v1/cooperativas?select=*=<$apikey>";

    print(request);
  });
}
