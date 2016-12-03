import 'package:angular2/core.dart' show Component, Input;

@Component(
    selector: 'material-menu',
    templateUrl: 'material_menu.html',
    styleUrls: const ['material_menu.css'])
class MaterialMenuComponent {
  @Input()
  String background = '#ffffff', foreground = '#212121';

  @Input()
  int elevation = 2;

  String get boxShadow =>
      '0 ${elevation}px 6px rgba(0,0,0,0.16), 0 ${elevation}px 6px rgba(0,0,0,0.23)';
}
