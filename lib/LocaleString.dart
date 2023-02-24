import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'message': 'Welcome to Proto Coders Point',
          'title': 'Flutter Language - Localization',
          'sub': 'Subscribe Now',
          'changelang': 'Change Language'
        },
        'nl_BE': {
          'hello': 'hello wereld',
          'message': 'yo',
          'title': 'demo1',
          'subscribe': 'sub',
          'changelang': 'Kies taal'
        },
        'fr_BE': {
          'hello': 'bonjour monde',
          'message': 'bonjour',
          'title': 'demo1',
          'subscribe': 'souscrit',
          'changelang': 'Changer la langye'
        },
      };
}
