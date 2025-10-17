List<double> transformList(List<int> numbers, double Function(int) operation) {
  return numbers.map(operation).toList();
}

void main() {
  List<int> nums = [1, 2, 3, 4, 5];

  // Define functions
  double square(int n) => n * n.toDouble();
  double cube(int n) => n * n * n.toDouble();
  double half(int n) => n / 2;

  print('Squares: ${transformList(nums, square)}');
  print('Cubes: ${transformList(nums, cube)}');
  print('Halves: ${transformList(nums, half)}');
}
