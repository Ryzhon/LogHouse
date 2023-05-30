import 'package:log_house/mock_api.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final mockApi = MockApi();

  Future<void> postMessage(String message) async {
    try {
      final success = await mockApi.postMessage(message);

      if (success) {
        // Message posted successfully
        print('Message posted');
      } else {
        // Error handling
        print('Failed to post message');
      }
    } catch (e) {
      // Error handling
      print('Failed to post message: $e');
    }
  }
}
