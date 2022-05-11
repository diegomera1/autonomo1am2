import 'package:flutter/material.dart';
import '../model/character.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;

  const CharacterWidget({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [Image.asset(character.image)],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      character.name,
                      style: const TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(16.0),
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 96, 62, 151),
                                  borderRadius: BorderRadius.circular(200)),
                              child: Text(
                                character.age.toString() + ' yr',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    height: 1.5),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(character.jobTitle,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 16)),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
