import 'dart:html' show Event;
import 'package:angular2/core.dart' show Component, EventEmitter, Input, Output;
import 'package:angular2_components/angular2_components.dart'
    show GlyphComponent, MaterialRippleComponent;

@Component(
    selector: 'menu-item',
    templateUrl: 'menu_item.html',
    styleUrls: const ['menu_item.css'],
    directives: const [GlyphComponent, MaterialRippleComponent])
class MenuItemComponent {
  @Input()
  String avatar, alt;

  @Input()
  bool disabled = false;

  @Input()
  String icon;

  @Input()
  bool large = false;

  @Input()
  bool selected = false;

  @Input()
  bool separated = false;

  @Output()
  final EventEmitter<Event> click = new EventEmitter<Event>();

  void handleClick(Event $event) {
    if (!disabled) {
      click.add($event);
    }
  }
}
