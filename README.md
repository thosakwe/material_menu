# material_menu
Material menu for Angular2.

[Example](http://thosakwe.github.io/material_menu)

```html
<material-menu>
  <menu-item avatar="https://avatars2.githubusercontent.com/u/9996860?v=3&s=460">
    Tobe O
  </menu-item>
  <menu-item [disabled]="true" icon="favorite">
    My Likes
  </menu-item>
  <menu-item avatar="https://www.dartlang.org/assets/logo-61576b6c2423c80422c986036ead4a7fc64c70edd7639c6171eba19e992c87d9.svg">
    Dart
  </menu-item>
  <menu-item href="http://www.example.com">
    <div class="link content">
      Link content...
    </div>
  </menu-item>
</material-menu>
```