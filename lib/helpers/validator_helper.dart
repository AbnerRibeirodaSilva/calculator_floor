const kRequiredField = 'Campo obrigatório';
const kIvalideFileld = 'Campo nao pode ser 0';

class ValidatorHelper {
  static String fieldIsNotValid(String text) {
    if (text.isEmpty) {
      return kRequiredField;
    }
    double x = double.parse(text);

    if (x * 1 == 0) {
      return kIvalideFileld;
    }
  }
}
