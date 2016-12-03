library material_menu;

import 'src/material_menu/material_menu.dart';
import 'src/menu_item/menu_item.dart';
import 'src/menu_separator/menu_separator.dart';
export 'src/material_menu/material_menu.dart';
export 'src/menu_item/menu_item.dart';
export 'src/menu_separator/menu_separator.dart';

const List<Type> menuDirectives = const [
  MaterialMenuComponent,
  MenuItemComponent,
  MenuSeparatorComponent
];
