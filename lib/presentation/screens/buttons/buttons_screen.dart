import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () => context.pop(),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevated disable')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.alarm_rounded),
                label: const Text('Elevated icon')),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.accessibility_new_rounded),
                label: const Text('Icon')),
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.terminal),
              label: const Text('Outlined Icon'),
            ),
            TextButton(onPressed: () {}, child: const Text('Text')),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.ac_unit_outlined),
              label: const Text('Text button'),
            ),
            // TODO custom buttons
            const CustomButton(),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.app_registration)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.app_registration),
                style: ButtonStyle(
                    iconColor: const MaterialStatePropertyAll(Colors.white),
                    backgroundColor: MaterialStatePropertyAll(color.primary))),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme color = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: color.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola mundo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
