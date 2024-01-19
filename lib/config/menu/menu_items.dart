import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subTitle: 'Varios botonoes en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'Progress Indicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'Snackbars y dialogos',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbar_screen',
    icon: Icons.accessibility_rounded,
  ),
  MenuItems(
    title: 'Animated container',
    subTitle: 'Stateful widgets animados',
    link: '/animated',
    icon: Icons.animation_rounded,
  ),
  MenuItems(
    title: 'Ui controls',
    subTitle: 'Controles',
    link: '/ui-controls',
    icon: Icons.android,
  ),
  MenuItems(
    title: 'App tutorials',
    subTitle: 'Tutoriales',
    link: '/tutorial',
    icon: Icons.offline_bolt_sharp,
  ),
];
