import 'package:flutter/cupertino.dart';

import '../model/book.dart';

class BookData extends ChangeNotifier {
  Book findBookById(int id, String type) {
    switch (type) {
      case 'books':
        return availableBooks.firstWhere((element) => element.id == id);

      case 'audiobooks':
        return availableAudioBooks.firstWhere((element) => element.id == id);
    }

    throw '';
  }

  List availableAudioBooks = [
    Book(
      id: 1,
      title: "Faceless Mask",
      type: 'Comic',
      description:
          "The greatest and most important adventure of our lives is discovering who we really are. Yet, so many of us walk around either not really knowing or listening to an awful inner critic that gives us all the wrong ideas about ourselves. We mistakenly think of self-understanding as self-indulgence, and we carry on without asking the most important question we'll ever ask: Who am I really? As Mary Oliver put it, “what is it you plan to do with your one wild and precious life?”",
      publisher: "iStudio",
      rating: 4.6,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/audio1.jpg",
      googleRating: 892,
      dateTime: DateTime.parse(
        "2019-03-23",
      ),
    ),
    Book(
      id: 2,
      title: "The Mask",
      type: 'Comic',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "iStudio",
      rating: 4.6,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/audio2.jpeg",
      googleRating: 892,
      dateTime: DateTime.parse(
        "2019-03-23",
      ),
    ),
    Book(
      id: 3,
      title: "Into The Wild",
      type: 'Novel',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "iStudio",
      rating: 4.6,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/audio3.jpeg",
      googleRating: 892,
      dateTime: DateTime.parse(
        "2019-03-23",
      ),
    ),
    Book(
      id: 4,
      title: "ReThink",
      type: 'Comic',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "iStudio",
      rating: 4.6,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/audio4.jpeg",
      googleRating: 892,
      dateTime: DateTime.parse(
        "2019-03-23",
      ),
    ),
    Book(
      id: 5,
      title: "Follow Me To Ground",
      type: 'Novel',
      description:
          "A haunted, surreal debut novel about an otherworldly young woman, her father, and her lover that culminates in a shocking moment of betrayal—one that upends our understanding of power, predation, and agency. One of Literary Hub’s Favorite Books of the Year A haunted, surreal debut novel about an otherworldly young woman, her father, and her lover that culminates in a shocking moment of betrayal—one that upends our understanding of power, predation, and agency.",
      publisher: "iStudio",
      rating: 4.6,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/audio5.jpg",
      googleRating: 892,
      dateTime: DateTime.parse(
        "2019-03-23",
      ),
    ),
    Book(
      id: 6,
      title: "The HandMaid's Tale",
      type: 'Novel',
      description:
          "The Handmaid's Tale is an American dystopian television series created by Bruce Miller, based on the 1985 novel of the same name by Canadian author Margaret Atwood. The series was ordered by the streaming service Hulu as a straight-to-series order of 10 episodes, for which production began in late 2016. The plot features a dystopia following a Second American Civil War wherein a theonomic, totalitarian society subjects fertile women, called Handmaids, to child-bearing slavery. June, a fertile woman, lives as a concubine to a Gileadan officer and his wife. While she is forced to agree to their strict rules and conditions, she hopes to be free and reunited with her daughter. ",
      publisher: "iStudio",
      rating: 4.6,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/audio6.jpg",
      googleRating: 892,
      dateTime: DateTime.parse(
        "2019-03-23",
      ),
    ),
    Book(
      id: 7,
      title: "To Die In Spring",
      type: 'History',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "iStudio",
      rating: 4.6,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/audio7.jpg",
      googleRating: 892,
      dateTime: DateTime.parse(
        "2019-03-23",
      ),
    ),
    Book(
      id: 8,
      title: "Saga",
      type: 'Comic',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "iStudio",
      rating: 4.6,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/audio8.jpg",
      googleRating: 892,
      dateTime: DateTime.parse(
        "2019-03-23",
      ),
    ),
    Book(
      id: 9,
      title: "PISNE TANCE",
      type: 'Novel',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "iStudio",
      rating: 4.3,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/audio9.jpg",
      googleRating: 192,
      dateTime: DateTime.parse(
        "2023-03-24",
      ),
    ),
    Book(
      id: 10,
      title: "Again But Better",
      type: 'Novel',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "iStudio",
      rating: 4.3,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/audio10.jpg",
      googleRating: 192,
      dateTime: DateTime.parse(
        "2023-03-24",
      ),
    ),
    Book(
      id: 11,
      title: "The Majesties",
      type: 'Comic',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "iStudio",
      rating: 4.3,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/audio11.jpg",
      googleRating: 192,
      dateTime: DateTime.parse(
        "2023-03-24",
      ),
    ),
    Book(
      id: 12,
      title: "Song of the Forever Rains",
      type: 'Comic',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "iStudio",
      rating: 4.3,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/audio12.jpg",
      googleRating: 192,
      dateTime: DateTime.parse(
        "2023-03-24",
      ),
    ),
  ];

  List availableBooks = [
    Book(
      id: 1,
      title: "This is The Way",
      type: 'Comic',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "iStudio",
      rating: 4.7,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/book1.jpeg",
      googleRating: 892,
      dateTime: DateTime.parse(
        "2019-03-23",
      ),
    ),
    Book(
      id: 2,
      title: "My Trueself",
      type: 'Comic',
      description:
          "The greatest and most important adventure of our lives is discovering who we really are. Yet, so many of us walk around either not really knowing or listening to an awful inner critic that gives us all the wrong ideas about ourselves. We mistakenly think of self-understanding as self-indulgence, and we carry on without asking the most important question we'll ever ask: Who am I really? As Mary Oliver put it, “what is it you plan to do with your one wild and precious life?”",
      publisher: "Amazon",
      rating: 4.8,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/book2.jpeg",
      googleRating: 892,
      dateTime: DateTime.parse(
        "2020-03-24",
      ),
    ),
    Book(
      id: 3,
      title: "Fight Club",
      type: 'Novel',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "Amazon",
      rating: 4.2,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/book3.jpeg",
      googleRating: 192,
      dateTime: DateTime.parse(
        "2022-03-24",
      ),
    ),
    Book(
      id: 4,
      title: "Enemy",
      type: 'Comic',
      description:
          "The existence or perceived existence of a collective enemy tends to increase the cohesiveness of the group. However, the identification and treatment of other entities as enemies may be irrational, and a sign of a psychological dysfunction. For example, group polarization may devolve into groupthink, which may lead members of the in group to perceive nonmembers or other groups as enemies even where the others present neither antagonism nor an actual threat.Paranoid schizophrenia is characterized by the irrational belief that other people, ranging from family members and personal acquaintances to celebrities seen on television, are personal enemies plotting harm to the sufferer. Irrational approaches may extend to treating impersonal phenomena not merely as conceptual enemies, but as sentient actors intentionally bringing strife to the sufferer.",
      publisher: "Amazon",
      rating: 4.3,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/book4.jpeg",
      googleRating: 192,
      dateTime: DateTime.parse(
        "2023-03-24",
      ),
    ),
    Book(
      id: 9,
      title: "Manual of Minimalism",
      type: 'Article',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "iStudio",
      rating: 4.3,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/book9.jpg",
      googleRating: 192,
      dateTime: DateTime.parse(
        "2023-03-24",
      ),
    ),
    Book(
      id: 5,
      title: "Breath",
      type: 'Comic',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "iStudio",
      rating: 4.3,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/book5.jpeg",
      googleRating: 192,
      dateTime: DateTime.parse(
        "2023-03-24",
      ),
    ),
    Book(
      id: 6,
      title: "The Chimmney Sweeper's Boy",
      type: 'Novel',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "iStudio",
      rating: 4.3,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/book6.jpeg",
      googleRating: 192,
      dateTime: DateTime.parse(
        "2023-03-24",
      ),
    ),
    Book(
      id: 7,
      title: "Son of the Strom",
      type: 'Comic',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "iStudio",
      rating: 4.3,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/book7.jpg",
      googleRating: 192,
      dateTime: DateTime.parse(
        "2023-03-24",
      ),
    ),
    Book(
      id: 8,
      title: "Son Of The Storm",
      type: 'Play',
      description:
          "The novel takes place in the fictional continent of Oon, which is presumably pre-colonial Africa, inhabited by three distinct people: Mainlanders, Desertlander and Shashis; a combination of Mainlanders and Desertlanders. In the continent, Bassa is featured to be the strongest among the whole city-countries in the continent. The country is mainly inhabited by the Bassai, with immigrants who have to pass through different stages of Castes in the country. The Yalekutés who are not allowed to study, act as helpers known as Seconds to the Bassais and Pokotin caste as the working-class immigrants who are not allowed to study either. Dason , a shashi who is allowed to study because he was caught with the codex of Nogowu the mad Emperor of Bassa discovers that the things he learnt as a Jali Novitiate in the University of Bassa were actually true and not tales and myths as posed by the Jali Elders when a yellow skin from the Nameless Islands is seen in Bassa.",
      publisher: "iStudio",
      rating: 4.3,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/book8.jpeg",
      googleRating: 192,
      dateTime: DateTime.parse(
        "2023-03-24",
      ),
    ),
    Book(
      id: 10,
      title: "UN DIMANCHE",
      type: 'Novel',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "iStudio",
      rating: 4.3,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/book10.jpg",
      googleRating: 192,
      dateTime: DateTime.parse(
        "2023-03-24",
      ),
    ),
    Book(
      id: 11,
      title: "Troubled Daughters, Twisted Wives",
      type: 'Comic',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "iStudio",
      rating: 4.3,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/book11.jpg",
      googleRating: 192,
      dateTime: DateTime.parse(
        "2023-03-24",
      ),
    ),
    Book(
      id: 12,
      title: "Meet Cute Diary",
      type: 'Novel',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
      publisher: "iStudio",
      rating: 4.3,
      imgUrl:
          "https://atuoha.github.io/project-assets.github.io/ebook-assets/images/book12.jpg",
      googleRating: 192,
      dateTime: DateTime.parse(
        "2023-03-24",
      ),
    ),
  ];
}



// https://atuoha.github.io/project-assets.github.io/ebook-assets/images/book1.jpeg