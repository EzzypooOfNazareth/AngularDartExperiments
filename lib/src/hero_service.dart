import 'dart:async';
import 'hero.dart';
import 'mock_heros.dart';

class HeroService {
  Future<List<Hero>> getAll() async => mockHeroes;

  Future<Hero> get(int id) async =>
    (await getAll()).firstWhere((hero) => hero.id == id);
}