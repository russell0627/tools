int? numValidator(String value) {
  final count = int.tryParse(value);

  return count;

}