void main() {
  print(stringToint('j'));
}

int stringToint(String text) {
  int value;
  try {
    value = int.parse(text);
  } catch (e) {
    throw Exception('Precisa ser numero');
  }

  return value;
}
