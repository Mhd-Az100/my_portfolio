// ignore_for_file: file_names

class Project {
  final String? title, description, imagepath, url;

  Project({
    this.title,
    this.description,
    this.imagepath,
    this.url,
  });
}

// ignore: non_constant_identifier_names
List<Project> demo_projects = [
  Project(
    url: "",
    imagepath: '7',
    title: "Syria Online",
    description:
        "My firs e-commerce app in flutter ,statemanagment Provider , With GoogleMaps & connect with Dashboard laravel , the feature are : display nearby store on the map & reating & comments with images.",
  ),
  Project(
    url: "https://play.google.com/store/apps/details?id=com.ertiqasoft.alsamah",
    imagepath: '5',
    title: "Al Samah",
    description:
        " e-statemanagment GetX , Fcm Notificatio ,connect with Dashboard Asp.core , GoogleMaps.",
  ),
  Project(
    url: "",
    imagepath: '1',
    title: "MultiMedia app ",
    description:
        'Add filters to photos edit crop and rotate photos, enter photosfrom the gallery or from the camera and save them with multiple attachments.',
  ),
  Project(
    url: "https://play.google.com/store/apps/details?id=com.ertiqasoft.waslcom",
    imagepath: '5',
    title: "Waslcom",
    description:
        "statemanagment GetX , Fcm Notificatio ,connect with Dashboard Asp.core , GoogleMaps.",
  ),
  Project(
    url: "",
    imagepath: '2',
    title: "Whatsapp sockit IO",
    description:
        "Chat/Messaging App Sockit.io, testing socket.io with chat app like whats app.",
  ),
  Project(
    url:
        "https://play.google.com/store/apps/details?id=com.forsaleq8.android.abc",
    imagepath: '4',
    title: "ForSale",
    description:
        "statemanagment GetX , webSocket , connect with Dashboard laravel.",
  ),
  Project(
    url: "",
    imagepath: '6',
    title: "Uber app",
    description:
        "statemanagment GetX & provider ,Fcm Notificatio , Firebase Cloud , GoogleMaps Api .",
  ),
  Project(
    url: "",
    imagepath: '3',
    title: "Deliviry v1",
    description:
        "E-Commerce app with local storage and show offers by stories like whatsapp.",
  ),
  Project(
    url: "",
    imagepath: '3',
    title: "Deliviry v2",
    description: "E-Commerce app edit UI and add Coupons.",
  )
];
