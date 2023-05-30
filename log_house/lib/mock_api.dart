class MockApi {
  Future<bool> postMessage(String message) async {
    // Simulate the API request and response behavior
    await Future.delayed(const Duration(seconds: 2));

    // Simulate success or failure based on conditions
    if (message.isNotEmpty) {
      return true; // Message posted successfully
    } else {
      throw Exception('Failed to post message'); // Error case
    }
  }
}
