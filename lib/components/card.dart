import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final String txt;
  final VoidCallback onPressed;

  const CardPage({
    super.key,
    required this.txt,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        new SizedBox(
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Ink.image(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80',
                      ),
                      height: 140,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      left: 16,
                      child: Text(
                        'Cats rule the world!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    txt == null
                        ? new SizedBox()
                        : ElevatedButton(
                            child: Text(txt),
                            onPressed: () {},
                          ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.red, // background
                        onPrimary: Colors.white, // foreground
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text('Buy Cat Food'),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/** card partをhttps://note.com/_hi/n/n0dc22e030cd0 の1番下のcardに変更 */
/** cardが画像の上にstackされる形になっているので変更 */
/** オブジェクトが潰れるのでレスポンシブデザインにする->widthを調整 */
