class list_class{

  var name, description, image;

  list_class({this.name, this.description, this.image});

  static final List<list_class> dummyData = [
    list_class(
      name: 'Medical History',
      description: 'View your Medical History here.',
      image: 'https://ak.picdn.net/shutterstock/videos/1016544112/thumb/1.jpg',
    ),
    list_class(
      name: 'Pharmacy',
      description: 'Select and save your preferred pharmacy.',
      image: 'https://ak.picdn.net/shutterstock/videos/1016544112/thumb/1.jpg',
    ),
    list_class(
      name: 'My Providers and Visits',
      description: 'Favorite doctors and recent visits',
      image: 'https://ak.picdn.net/shutterstock/videos/1016544112/thumb/1.jpg',
    ),
    list_class(
      name: 'Family History',
      description: 'Update your Family health history.',
      image: 'https://ak.picdn.net/shutterstock/videos/1016544112/thumb/1.jpg',
    ),
  ];

}