// #docregion
import 'package:angular2/angular2.dart';
import 'package:angular2_components/angular2_components.dart';

import 'hero.dart';
import 'unless_directive.dart';
import 'hero_switch_components.dart';

@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    styleUrls: const ['app_component.css'],
    directives: const [heroSwitchComponents, materialDirectives, UnlessDirective],
    providers: const [materialProviders],
)
class AppComponent {
  final List<Hero> heroes = mockHeroes;
  Hero hero;
  bool condition = false;
  final List<String> logs = [];
  bool showSad = true;
  String status = 'ready';

  AppComponent() {
    hero = heroes[0];
  }

  // #docregion trackByHero
  num trackById(num index, Hero hero) => hero.id;
  // #enddocregion trackByHero
}
