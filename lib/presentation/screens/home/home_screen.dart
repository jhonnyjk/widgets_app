import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter + Material 3'),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    super.key,
    required this.menuItem,
  });

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: colors.primary,
        ),
        leading: Icon(
          menuItem.icon,
          color: colors.primary,
        ),
        onTap: () {
          context.push(menuItem.link);
        },
        title: Text(menuItem.title),
        subtitle: Text(menuItem.subTitle));
  }
}
