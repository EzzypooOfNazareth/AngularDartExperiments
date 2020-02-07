import 'dart:async';
import 'package:angular/angular.dart';
//components import
import 'hero.dart';
import 'mock_heros.dart';
import 'hero_component.dart';
//services import
import 'hero_service.dart';

@Component(
  selector: 'my-heroes',
  templateUrl: 'hero_list_component.html',
  styleUrls: ['hero_list_component.css'],
  directives: [coreDirectives, HeroComponent],
  providers: [ClassProvider(HeroService)],
)
class HeroListComponent implements OnInit {
  final title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;

  final HeroService _heroService;
  HeroListComponent(this._heroService);
  Hero selected;

  Future<void> _getHeroes() async {
    heroes = await _heroService.getAll();
  }

  void ngOnInit() => _getHeroes();

  void onSelect(Hero hero) => selected = hero;
}