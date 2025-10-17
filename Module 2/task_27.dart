// task_27.dart
// Simulate a network call to get a user name
Future<String> fetchUserData(int userId) async {
  await Future.delayed(Duration(seconds: 1)); // Simulate delay
  return 'User $userId';
}

// Function to fetch multiple users
Future<void> fetchAllUsers() async {
  print('Starting to fetch user data...');
  
  print('Fetching user 1...');
  String user1 = await fetchUserData(1);
  print('Loaded: $user1');
  
  print('Fetching user 2...');
  String user2 = await fetchUserData(2);
  print('Loaded: $user2');
  
  print('Fetching user 3...');
  String user3 = await fetchUserData(3);
  print('Loaded: $user3');
  
  print('\nAll user data loaded successfully!');
  print('Users: [$user1, $user2, $user3]');
}

void main() {
  fetchAllUsers();
}