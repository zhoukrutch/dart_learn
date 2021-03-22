class Iterable {
  static var languages = <String>[
    'Dart',
    'Kotlin',
    'Java',
    'Javascript',
    'Go',
    'Python',
    'Swift'
  ];

  static void funcTest() {
    forEachTest();
    mapTest();
    anyTest();
    everyTest();
    whereTest();
    joinTest();
    takeTest();
    takeWhileTest();
    skipTest();
    skipWhileTest();
    followByTest();
    reduceTest();
  }

  static void forEachTest() {
    ///forEach在dart中用于遍历和迭代集合
    languages.forEach((language) => print('The language is $language'));
  }

  static void mapTest() {
    ///map函数主要用于集合中元素的映射，也可以映射转化成其他类型的元素
    print(languages
        .map((language) => 'develop language is $language')
        .join('---'));
  }

  static void anyTest() {
    ///any函数主要用于检查是否存在任意一个满足条件的元素，只要匹配到第一个就返回true, 如果遍历所有元素都不符合才返回false
    bool isDartExisted = languages.any((language) => language == 'Dart');
    print("$isDartExisted");
  }

  static void everyTest() {
    ///every函数主要用于检查是否集合所有元素都满足条件，如果都满足就返回true, 只要存在一个不满足条件的就返回false
    bool isDartAll = languages.every((language) => language == 'Dart');
    print("$isDartAll");
  }

  static void whereTest() {
    ///where函数主要用于过滤符合条件的元素，类似filter的作用，最后返回符合条件元素的集合。
    print(languages.where((language) => language.length > 5));
  }

  static void joinTest() {
    ///join函数主要是用于将集合所有元素值转化成字符串，中间用指定的separator连接符连接。
    print(languages.join('---'));
  }

  static void takeTest() {
    ///take函数主要是用于截取原集合前count个元素组成的集合
    print(languages.take(8));
  }

  static void takeWhileTest() {
    ///takeWhile函数主要用于依次选择满足条件的元素，直到遇到第一个不满足的元素，并停止选择。
    ///takeWhile函数接收一个test条件函数作为函数参数，然后返回一个惰性的Iterable<E>。
    print(languages.takeWhile((language) => language.length > 2).toList());
  }

  static void skipTest() {
    ///skip函数主要是用于跳过原集合前count个元素后，剩下元素组成的集合，
    print(languages.skip(1));
  }

  static void skipWhileTest() {
    ///skipWhile函数主要用于依次跳过满足条件的元素，直到遇到第一个不满足的元素，并停止筛选。
    print(languages.skipWhile((language) => language.length > 2).toList());
  }

  static void followByTest() {
    ///followedBy函数主要用于在原集合后面追加拼接另一个Iterable<E>集合
    print(languages.followedBy(['Rust', 'Ruby', 'C++', 'C#']).toList());
  }

  static void reduceTest() {
    ///reduce函数主要用于集合中元素依次归纳(combine)，每次归纳后的结果会和下一个元素进行归纳，
    ///它可以用来累加或累乘，具体取决于combine函数中操作，combine函数中会回调上一次归纳后的值和当前元素值，
    ///reduce提供的是获取累积迭代结果的便利条件.
    /// fold和reduce几乎相同，唯一区别是fold可以指定初始值。

    print(languages.reduce((prev, curr) => '$prev---$curr'));
    print(languages.fold("Start:", (prev, curr) => '$prev---$curr'));
  }
}
