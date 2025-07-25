class UsersModel{
  String name;
  String imageUrl;

  UsersModel({
    required this.name,
    required this.imageUrl,
  });

  static List<UsersModel> getUsers(){

    List<UsersModel> users =[];
    
    users.add(
      UsersModel(
        name: 'Ankita', 
        imageUrl: 'assets/images/Ellipse 40.png',
      )
    );

    users.add(
      UsersModel(
        name: 'Pankaj', 
        imageUrl: 'assets/images/Ellipse 41.png',
      )
    );

    users.add(
      UsersModel(
        name: 'Manish', 
        imageUrl: 'assets/images/Ellipse 49.png',
      )
    );

    users.add(
      UsersModel(
        name: 'Suresh', 
        imageUrl: 'assets/images/Ellipse 43.png',
      )
    );

    users.add(
      UsersModel(
        name: 'Ankur', 
        imageUrl: 'assets/images/Ellipse 44.png',
      )
    );
    users.add(
      UsersModel(
        name: 'Deepesh', 
        imageUrl: 'assets/images/Ellipse 45.png',
      )
    );
    users.add(
      UsersModel(
        name: 'Jaideep', 
        imageUrl: 'assets/images/Ellipse 46.png',
      )
    );
    
    return users;
  }
}