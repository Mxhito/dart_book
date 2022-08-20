enum ProgramingLanguages { dart, swift, javaScript }

void extensionMethods() {
  //String extention
  const original = 'Ilya Mokienko';

  final secret = original.encoded;
  print(secret);

  final revealed = secret.decoded;
  print(revealed);

  print('\n');

  final autorSms =
      r'Uif!tfdsfu!up!mfbsojoh!Ebsu!xfmm!jt!up!dg"ewtkqwu"cpf"lwuv"vt{"vjkpiu0"Vlqfh#|rx*uh#uhdglqj#wklv/#wkdw#reylrxvo|#ghvfulehv#|rx1#Kssh$nsf%';
  print(autorSms.decoded);
  //! The secret to learning Dart well is to curious and just try things. Since you're reading this, that obviously describes you. Good job!

  //Int extention
  print(5.cubed);

  //Enum extention
  final language = ProgramingLanguages.dart;
  print(language.isStronglyTyped);
}

extension on String {
  String get encoded {
    return _code(1);
  }

  String get decoded {
    return _code(-4);
  }

  String _code(int step) {
    final output = StringBuffer();
    for (final codePoint in runes) {
      output.writeCharCode(codePoint + step);
    }
    return output.toString();
  }
}

extension on int {
  int get cubed {
    return this * this * this;
  }
}

extension on ProgramingLanguages {
  bool get isStronglyTyped {
    switch (this) {
      case ProgramingLanguages.dart:
      case ProgramingLanguages.swift:
        return true;
      case ProgramingLanguages.javaScript:
        return false;
      default:
        throw Exception('Unknown Programming Language $this');
    }
  }
}
