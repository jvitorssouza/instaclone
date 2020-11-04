import 'package:flutter/material.dart';

import './components/story.dart';
import './components/post.dart';

class PostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Story(),
        Post(
          user: 'uiuxdailydesign',
          place: 'Anywhere of World',
          userComment:
              'Aquele velho comentário que sempre colocamos nas nossas fotos',
          imageURL:
              'https://i.pinimg.com/originals/3c/f0/54/3cf054d647a8c4c2e673044957e5580c.jpg',
        ),
        Post(
          user: 'uiuxdailydesign',
          place: 'Anywhere of World',
          userComment:
              'Aquele velho comentário que sempre colocamos nas nossas fotos',
          imageURL:
              'https://avantemidia.com.br/wp-content/uploads/2020/03/ui-ux.jpg',
        ),
        Post(
          user: 'uiuxdailydesign',
          place: 'Anywhere of World',
          userComment:
              'Aquele velho comentário que sempre colocamos nas nossas fotos',
          imageURL:
              'https://image.freepik.com/vetores-gratis/ui-ux-design-modelo-de-pagina-de-destino-com-cabecalho_9209-2508.jpg',
        ),
        Post(
          user: 'uiuxdailydesign',
          place: 'Anywhere of World',
          userComment:
              'Aquele velho comentário que sempre colocamos nas nossas fotos',
          imageURL: 'https://miro.medium.com/max/3200/0*M6ZZ52unpHjgMWBP.png',
        ),
      ],
    );
  }
}
