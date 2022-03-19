enum Gender { male, female }

extension Conv on Gender {
  String string() {
    return toString().split('.').last;
  }
}
