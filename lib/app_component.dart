import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
//components import
import 'hero.dart';

@Component(
  selector: 'my-app',
  template: '''
    <h1>{{ title }}</h1>
    <div>
      <label>name: </label>
      <input [(ngModel)]="hero.name" placeholder="name" />
    </div>
  ''',
  directives: [formDirectives]
)
class AppComponent {
  final title = 'Tour of Heroes';
  Hero hero = Hero(1, 'Windstorm');
}
