void main() {
  var name;
  name = 'minkyu';
  name = 123;
  name = true;

  dynamic birhtday;
  if (birhtday is String) {
    birhtday.length;
    birhtday.isEmpty;
  }
  if (birhtday is int) {
    birhtday.isOdd;
    birhtday.isInfinite;
  }
}
