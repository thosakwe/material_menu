import 'dart:async';
import 'dart:html' show Event;
import 'package:angular2/core.dart' show Component, Input, OnDestroy, Output;
import 'package:angular_components/angular_components.dart'
    show GlyphComponent, MaterialRippleComponent;
import 'package:angular_components/src/utils/async/src/lazy_stream_controller.dart';

@Component(
    selector: 'menu-item',
    templateUrl: 'menu_item.html',
    styleUrls: const ['menu_item.css'],
    directives: const [GlyphComponent, MaterialRippleComponent])
class MenuItemComponent implements OnDestroy {
  @Input()
  String avatar, alt, href;

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

  final StreamController<Event> _click =
      new LazyStreamController<Event>.broadcast();

  @Output()
  Stream<Event> get click => _click.stream;

  void handleClick(Event $event) {
    if (!disabled) {
      _click.add($event);
    }
  }

  @override
  ngOnDestroy() {
    _click.close();
  }
}
