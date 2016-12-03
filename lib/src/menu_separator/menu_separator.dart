import 'package:angular2/core.dart' show Component;

@Component(
    selector: 'menu-separator',
    template: '''<div id="main"></div>''',
    styles: const ['''
    #main {
      margin: 7px 0px 8px;
      height: 1px;
      border: none;
      background-color: rgb(224, 224, 224);
    }
    '''])
class MenuSeparatorComponent {}
