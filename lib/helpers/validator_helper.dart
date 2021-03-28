const kRequiredField = 'Campo obrigatório';

class ValidatorHelper {
  static String isNotEmptyNumber(String text) {
    return text.isEmpty ? kRequiredField : null;
  }
}
