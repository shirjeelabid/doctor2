class patients_list{

  var name, gender,date, image;

  patients_list({this.name, this.gender,this.date, this.image});

  static final List<patients_list> dummyData = [
    patients_list(
      name: 'Usama',
      date: '12-05-2020',
      gender: 'Male',
      image: 'https://www.pinkvilla.com/files/styles/contentpreview/public/liam-hemsworth-miley-cyrus-instagram.jpg?itok=d0Ss6_SV',
    ),
    patients_list(
      name: 'Shabana',
      date: '22-08-2020',
      gender: 'Female',
      image: 'https://data.whicdn.com/images/295658618/original.jpg',
    ),
    patients_list(
      name: 'Ali',
      date: '02-11-2020',
      gender: 'Male',
      image: 'https://www.pinkvilla.com/files/styles/contentpreview/public/liam-hemsworth-miley-cyrus-instagram.jpg?itok=d0Ss6_SV',
    ),
    patients_list(
      name: 'Maheen',
      date: '26-10-2020',
      gender: 'Female',
      image: 'https://data.whicdn.com/images/295658618/original.jpg',
    ),
  ];

}