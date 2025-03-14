import 'dart:io';
import 'dart:math';

enum move { rock, paper, scissor }

void main() {
  print("Print rock/paper/scissor(r/p/s)(enter q to quit):");
  String? chose = stdin.readLineSync();
  final rand = Random();
  final random = rand.nextInt(3);
  final option = move.values[random].toString().split('.').last[0];
  print(option);
  if (chose == option) {
    print("you chose ${chose}");
    print("AI CHOSE ${option}");
    print("It's a draw");
  } else if (chose == 'r' && option == 'p') {
    print("you chose ${chose}");
    print("AI CHOSE ${option}");
    print("AI wins");
  } else if (chose == 'p' && option == 's') {
    print("you chose ${chose}");
    print("AI CHOSE ${option}");
    print("AI wins");
  } else if (chose == 's' && option == 'r') {
    print("you chose ${chose}");
    print("AI CHOSE ${option}");
    print("AI wins");
  } else if (chose == 'p' && option == 'r') {
    print("you chose ${chose}");
    print("AI CHOSE ${option}");
    print("You win");
  } else if (chose == 's' && option == 'p') {
    print("you chose ${chose}");
    print("AI CHOSE ${option}");
    print("You win");
  } else if (chose == 'r' && option == 's') {
    print("you chose ${chose}");
    print("AI CHOSE ${option}");
    print("You win");
  } else if (chose == 'q') {
    print("quit");
  } else {
    print("wrong choice");
  }
}
