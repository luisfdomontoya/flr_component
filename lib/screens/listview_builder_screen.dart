import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  //creo un controller que asignaré a mi ListView y me permitirá
  //saber el valor del ListView en todo momento:
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    //este es el primer paso del ciclo de vida del estado y es aquí
    //donde se crea el estado por primera y única vez
    //nota: cuando hago un hot reload NO se vuelve a crear el initState
    //y si hago modificaciones en el initState entonces tengo que hacer
    //un Restart para aplicar esos cambios
    super.initState();

    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        add5();
      }
    });
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          //cualquier widget que permita hacer scroll tiene una
          //propiedad llamada controller.
          controller: scrollController,
          itemCount: imagesIds.length,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                'https://picsum.photos/500/300?image=${imagesIds[index]}',
              ),
            );
          },
        ),
      ),
    );
  }
}
