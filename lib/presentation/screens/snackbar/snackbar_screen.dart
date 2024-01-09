import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola'),
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: "Ok",
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
            'Sit eiusmod qui officia mollit esse commodo aute deserunt ex nostrud. Dolore labore irure ex in duis exercitation in nisi. Amet excepteur aliqua occaecat nisi aliqua minim aliqua cillum incididunt duis voluptate Lorem sint. Ullamco occaecat do duis nisi velit et Lorem pariatur occaecat exercitation. Ex consequat consectetur est tempor. Magna officia in id dolor cillum culpa qui cupidatat. Consectetur tempor ipsum officia ullamco ullamco in minim aute cupidatat.'),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Aceptar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars y diálogos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text("Culpa enim fugiat do non qui amet.")
                ]);
              },
              child: const Text("Licencias usadas"),
            ),
            FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: const Text("Mostrar diálogos"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Mostrar Snackbar"),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () {
          showCustomSnackbar(context);
        },
      ),
    );
  }
}
