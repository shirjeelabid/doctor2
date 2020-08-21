class doctor_class{

  var name, field, image, availability;

  doctor_class({this.name, this.field, this.image, this.availability});

  static final List<doctor_class> dummyData = [
    doctor_class(
      name: 'Haroon',
      field: 'Dentist',
      image: 'https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?size=338&ext=jpg',
      availability: 'This doctor is available on Audio call and video call.'
    ),
    doctor_class(
        name: 'Shirjeel',
        field: 'Psychologist',
        image: 'https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?size=338&ext=jpg',
        availability: 'This doctor is available on Audio call and video call.'
    ),
    doctor_class(
        name: 'AB',
        field: 'ENT Specialist',
        image: 'https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?size=338&ext=jpg',
        availability: 'This doctor is available on Audio call and video call.'
    ),
    doctor_class(
        name: 'Moaz',
        field: 'ENT Specialist',
        image: 'https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?size=338&ext=jpg',
        availability: 'This doctor is available on Audio call and video call.'
    ),
  ];

}