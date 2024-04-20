import 'dart:io';
import 'dart:math';

class Challenge1 {
   void run() {
   print('Ingresa un número: ');
   String input = stdin.readLineSync()!;
  
   int? numero = int.tryParse(input);
   if (numero != null && numero > 0) {

    int resultado = numero * numero;
    print('El cuadrado de $numero es $resultado');
   } else {
    print('El número ingresado no es válido o no es positivo.');
    }
   }
}

class Challenge2 {
  void run() {
  print('Ingresa el primer número: ');
  String? input1 = stdin.readLineSync();
  print('Ingresa el segundo número: ');
  String? input2 = stdin.readLineSync();
  
  int? numero1 = int.tryParse(input1!);
  int? numero2 = int.tryParse(input2!);

  if (numero1 != null && numero2 != null) {
    if (numero1 > numero2) {
      int resultado = numero1 * 2;
      print('El primer número es mayor. Su doble es: $resultado');
    } else {
      int resultado = numero2 * 3;
      print('El segundo número es mayor o igual. Su triple es: $resultado');
    }
  } else {
    print('Al menos uno de los números ingresados no es válido.');
  }
  }
}

class Challenge3 {
  void run() {
  print('Ingresa un número: ');
  String? input = stdin.readLineSync();
  double? numero = double.tryParse(input!);
  if (numero != null) {
    if (numero > 0) {
      double resultado = sqrt(numero);
      print('La raíz cuadrada de $numero es: $resultado');
    } else {
      num resultado = pow(numero, 2);
      print('El cuadrado de $numero es: $resultado');
    }
  } else {
    print('El número ingresado no es válido.');
  }
  }
}

class Challenge4 {
  void run() {
  print('Ingresa el radio del círculo: ');
  String? input = stdin.readLineSync();
  double? radio = double.tryParse(input!);

  if (radio != null && radio > 0) {
    double perimetro = 2 * 3.1416 * radio;
    print('El perímetro del círculo es: $perimetro');
  } else {
    print('El radio ingresado no es válido.');
  }
  }

}

class Challenge5 {
  void run() {
  print('Ingresa un número entre 1 y 7: ');
  String? input = stdin.readLineSync();
  int? numero = int.tryParse(input!);
  if (numero != null && numero >= 1 && numero <= 7) {
    String dia;
    switch (numero) {
      case 1:
        dia = 'Lunes';
        break;
      case 2:
        dia = 'Martes';
        break;
      case 3:
        dia = 'Miércoles';
        break;
      case 4:
        dia = 'Jueves';
        break;
      case 5:
        dia = 'Viernes';
        break;
      case 6:
      case 7:
        dia = 'Fin de semana (No laborable)';
        break;
      default:
        dia = 'Número no válido';
        break;
    }
    print('El día correspondiente al número $numero es: $dia');
  } else {
    print('El número ingresado no es válido o está fuera del rango.');
  }
  }
}

class Challenge6 {
  void run() {
  print('Ingresa tu salario anual: ');
  String? input = stdin.readLineSync();
  double? salarioAnual = double.tryParse(input!);
  if (salarioAnual != null && salarioAnual > 0) {
    if (salarioAnual > 12000) {
      double excedente = salarioAnual - 12000;
      double impuesto = excedente * 0.15;
      print('El impuesto a pagar es: \$${impuesto.toStringAsFixed(2)}');
    } else {
      print('No tienes que pagar impuestos.');
    }
  } else {
    print('El salario anual ingresado no es válido.');
  }
  }

}

class Challenge7 {
  void run() {
  print('Ingresa el primer número: ');
  String? input1 = stdin.readLineSync();
  print('Ingresa el segundo número: ');
  String? input2 = stdin.readLineSync();
  
  double? numero1 = double.tryParse(input1!);
  double? numero2 = double.tryParse(input2!);

  if (numero1 != null && numero2 != null && numero2 != 0) {
    double residuo = numero1 % numero2;
    print('El residuo de la división es: $residuo');
  } else {
    print('Al menos uno de los números ingresados no es válido o el divisor es cero.');
  }

  }
}

class Challenge8 {
  void run() {
    int suma = 0;
  for (int i = 1; i <= 50; i++) {
    if (i % 2 == 0) {
      suma += i;
    }
  }

  print('La suma de los números pares entre 1 y 50 es: $suma');

  }
}

class Challenge9 {
  void run() {
  print('Ingresa el numerador de la primera fracción: ');
  String? inputNumerador1 = stdin.readLineSync();
  print('Ingresa el denominador de la primera fracción: ');
  String? inputDenominador1 = stdin.readLineSync();

  print('Ingresa el numerador de la segunda fracción: ');
  String? inputNumerador2 = stdin.readLineSync();
  print('Ingresa el denominador de la segunda fracción: ');
  String? inputDenominador2 = stdin.readLineSync();

  int? numerador1 = int.tryParse(inputNumerador1!);
  int? denominador1 = int.tryParse(inputDenominador1!);
  int? numerador2 = int.tryParse(inputNumerador2!);
  int? denominador2 = int.tryParse(inputDenominador2!);

  if (numerador1 != null && denominador1 != null &&
      numerador2 != null && denominador2 != null &&
      denominador1 != 0 && denominador2 != 0) {
    int diferenciaNumerador = (numerador1 * denominador2) - (numerador2 * denominador1);
    int diferenciaDenominador = denominador1 * denominador2;

    print('La diferencia entre las fracciones es: $diferenciaNumerador/$diferenciaDenominador');
  } else {
    print('Al menos uno de los valores ingresados no es válido o el denominador es cero.');
  }

  }
}


class Challenge10 {
  void run() {
  print('Ingresa una palabra: ');
  String? palabra = stdin.readLineSync();
  if (palabra != null) {
    int longitud = palabra.length;
    print('La longitud de la palabra "$palabra" es: $longitud');
  } else {
    print('No se ingresó ninguna palabra.');
  }

  }
}

class Challenge11 {
  void run() {
  print('Ingresa el primer número: ');
  double numero1 = double.parse(stdin.readLineSync()!);

  print('Ingresa el segundo número: ');
  double numero2 = double.parse(stdin.readLineSync()!);

  print('Ingresa el tercer número: ');
  double numero3 = double.parse(stdin.readLineSync()!);

  print('Ingresa el cuarto número: ');
  double numero4 = double.parse(stdin.readLineSync()!);
  double promedio = (numero1 + numero2 + numero3 + numero4) / 4;
  print('El promedio de los números es: $promedio');
  }
}

class Challenge12 {
  void run() {
  List<double> numeros = [];
  for (int i = 0; i < 5; i++) {
    print('Ingresa el número ${i + 1}: ');
    double numero = double.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }
  double menor = numeros[0];
  for (int i = 1; i < numeros.length; i++) {
    if (numeros[i] < menor) {
      menor = numeros[i];
    }
  }
  print('El número más pequeño es: $menor');
  }
}

class Challenge13 {
  void run() {
  print('Ingresa una palabra: ');
  String? palabra = stdin.readLineSync();

  if (palabra != null) {
    palabra = palabra.toLowerCase();
    int contadorVocales = 0;
    for (int i = 0; i < palabra.length; i++) {
      if (esVocal(palabra[i])) {
        contadorVocales++;
      }
    }
    print('El número de vocales en la palabra "$palabra" es: $contadorVocales');
  } else {
    print('No se ingresó ninguna palabra.');
  }
}

bool esVocal(String caracter) {
  return 'aeiou'.contains(caracter);
  }
}

class Challenge14 {
  void run() {
  print('Ingresa un número para calcular su factorial: ');
  int numero = int.parse(stdin.readLineSync()!);
  int factorial = calcularFactorial(numero);
  print('El factorial de $numero es: $factorial');
}

int calcularFactorial(int n) {
  if (n == 0) {
    return 1;
  }
  int resultado = 1;
  for (int i = 1; i <= n; i++) {
    resultado *= i;
  }
  return resultado;

  }
}

class Challenge15 {
  void run() {
  print('Ingresa un número: ');
  int numero = int.parse(stdin.readLineSync()!);
  if (numero >= 10 && numero <= 20) {
    print('El número $numero está en el rango de 10 a 20.');
  } else {
    print('El número $numero no está en el rango de 10 a 20.');
  }

  }
}