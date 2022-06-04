class Movie {
  final String title;
  final String posterPath;
  final String backdropPath;
  final String description;
  final double rating;
  final List<String> genres;

  Movie({
    required this.title,
    required this.posterPath,
    required this.backdropPath,
    required this.rating,
    required this.genres,
    required this.description,
  });
}

final List<Movie> popularMovieList = [
  Movie(
    title: "Morbius",
    description:
        "Dangerously ill with a rare blood disorder, and determined to save others suffering his same fate, Dr. Michael Morbius attempts a desperate gamble. What at first appears to be a radical success soon reveals itself to be a remedy potentially worse than the disease.",
    backdropPath:
        "http://image.tmdb.org/t/p/w500/gG9fTyDL03fiKnOpf2tr01sncnt.jpg",
    posterPath:
        "http://image.tmdb.org/t/p/w500//6JjfSchsU6daXk2AKX8EEBjO3Fm.jpg",
    genres: ["Action", "Fantasy"],
    rating: 3.5,
  ),
  Movie(
    title: "Sonic the Hedgehog 2",
    posterPath: "http://image.tmdb.org/t/p/w500/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg",
    backdropPath:
        "http://image.tmdb.org/t/p/w500/egoyMDLqCxzjnSrWOz50uLlJWmD.jpg",
    rating: 4,
    genres: ["Action", "Comedy"],
    description:
        "After settling in Green Hills, Sonic is eager to prove he has what it takes to be a true hero. His test comes when Dr. Robotnik returns, this time with a new partner, Knuckles, in search for an emerald that has the power to destroy civilizations. Sonic teams up with his own sidekick, Tails, and together they embark on a globe-trotting journey to find the emerald before it falls into the wrong hands.",
  ),
  Movie(
    title: "Doctor Strange in the Multiverse of Madness",
    posterPath:
        "http://image.tmdb.org/t/p/w500/9Gtg2DzBhmYamXBS1hKAhiwbBKS.jpg",
    backdropPath:
        "http://image.tmdb.org/t/p/w500/6tZeX0gvlPzHU8phHuiZD8Gsa11.jpg",
    rating: 4.5,
    genres: ["Fantasy", "Action"],
    description:
        "Doctor Strange, with the help of mystical allies both old and new, traverses the mind-bending and dangerous alternate realities of the Multiverse to confront a mysterious new adversary.",
  ),
  Movie(
    title: "Uncharted",
    posterPath:
        "http://image.tmdb.org/t/p/w500/tlZpSxYuBRoVJBOpUrPdQe9FmFq.jpg",
    backdropPath:
        "http://image.tmdb.org/t/p/w500/aEGiJJP91HsKVTEPy1HhmN0wRLm.jpg",
    rating: 3.8,
    genres: ["Action", "Adventure"],
    description:
        "A young street-smart, Nathan Drake and his wisecracking partner Victor “Sully” Sullivan embark on a dangerous pursuit of “the greatest treasure never found” while also tracking clues that may lead to Nathan’s long-lost brother.",
  )
];

final List<Movie> upcomingMovieList = [
  Movie(
    title: "Jurassic World Dominion",
    posterPath:
        "http://image.tmdb.org/t/p/w500/kAVRgw7GgK1CfYEJq8ME6EvRIgU.jpg",
    backdropPath:
        "http://image.tmdb.org/t/p/w500/9hk5iiycq7ukRAAXQiJT9HZX3SX.jpg",
    rating: 3,
    genres: ["Science Fiction", "Action", "Adventure"],
    description:
        "Four years after Isla Nublar was destroyed, dinosaurs now live—and hunt—alongside humans all over the world. This fragile balance will reshape the future and determine, once and for all, whether human beings are to remain the apex predators on a planet they now share with history’s most fearsome creatures.",
  ),
  Movie(
    title: "Lightyear",
    posterPath:
        "http://image.tmdb.org/t/p/w500/tbUhPhir8TGDkD8RruiBAJE9Nd3.jpg",
    backdropPath:
        "http://image.tmdb.org/t/p/w500/1qnPtYPw9HeyTGctvv6fOHZtx2x.jpg",
    rating: 4,
    genres: ["Animation", "Science Fiction", "Adventure"],
    description:
        "Legendary Space Ranger Buzz Lightyear embarks on an intergalactic adventure alongside a group of ambitious recruits and his robot companion Sox.",
  ),
  Movie(
    title: "Satria Dewa: Gatotkaca",
    posterPath: "http://image.tmdb.org/t/p/w500/qlXhHflthTpF9Qja7WELyx1huq.jpg",
    backdropPath:
        "http://image.tmdb.org/t/p/w500/2hUUCtA1b7yMacmbWVmHpiQkHU4.jpg",
    rating: 4,
    genres: ["Action", "Drama"],
    description:
        "Realizing that he’s the lineal descendant of Gatotkaca from Pandawa family, Satrio must fight his way to unlock the power lies inside him and face Aswatama, the remaining Kurawa warrior who lives on to destroy the world by changing the history of Bharatayudha.",
  ),
  Movie(
    title: "Thor: Love and Thunder",
    posterPath:
        "http://image.tmdb.org/t/p/w500/4zLfBbGnuUBLbMVtagTZvzFwS8l.jpg",
    backdropPath:
        "http://image.tmdb.org/t/p/w500/bcpATvKQmSgCbwxONs9PPQrer3A.jpg",
    rating: 4,
    genres: ["Action", "Adventure", "Fantasy"],
    description:
        "After his retirement is interrupted by Gorr the God Butcher, a galactic killer who seeks the extinction of the gods, Thor enlists the help of King Valkyrie, Korg, and ex-girlfriend Jane Foster, who now inexplicably wields Mjolnir as the Mighty Thor. Together, they embark upon a harrowing cosmic adventure to uncover the mystery of the God Butcher’s vengeance and stop him before it’s too late.",
  )
];
