import 'dart:async';
import 'hero.dart';
import 'mock_heros.dart';

class HeroService {
  Future<List<Hero>> getAll() async => mockHeroes;
}