const kRequiredField = 'Campo obrigatório';
const kIvalideFileld = 'Campo nao pode ser 0';

class ValidatorHelper {
  static String fieldIsNotValid(String text) {
    if (text.isEmpty) {
      return kRequiredField;
    } else if (text.length > 0 && text == '0') {
      return kIvalideFileld;
    }
  }
}
