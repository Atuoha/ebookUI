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
      title: "The Mask",
      type: 'Comic',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
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
      type: 'History',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
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
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
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
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
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
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
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
      title: "The Starter of Something",
      type: 'Comic',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas maximus convallis est, quis dapibus elit gravida sit amet. Suspendisse malesuada interdum elit, sed feugiat purus. Mauris egestas vel nunc iaculis facilisis. Nam vel ipsum ex. Suspendisse cursus, ligula eu mollis pretium, neque turpis ullamcorper quam, sed scelerisque neque arcu quis metus. Maecenas sollicitudin pretium lectus et condimentum. In rhoncus dignissim neque, quis viverra felis vestibulum nec. Cras efficitur bibendum sem et dapibus. Sed bibendum, elit vel consequat sagittis, tellus nibh vulputate nisi, a aliquet odio orci quis tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur varius nunc vitae ornare fringilla. Vivamus nec consectetur arcu. Etiam lobortis egestas facilisis. Integer a molestie elit, id convallis sem. Pellentesque pulvinar eros condimentum augue tincidunt finibus.",
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