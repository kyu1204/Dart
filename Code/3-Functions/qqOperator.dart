String capitalizeName(String? name) => name?.toUpperCase() ?? "ANON";

void main() {
  String? name;
  name ??= "minkyu";
  print(capitalizeName(name));
}
