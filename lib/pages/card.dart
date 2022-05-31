import 'package:flutter/material.dart';

class MenuCard extends StatefulWidget {
  MenuCard({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  State<MenuCard> createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  bool isLiked = false;
  String? nama;
  String? deskripsi;
  String? gambar;

  void iconButton() {
    setState(() {
      if (isLiked) {
        isLiked = false;
      } else {
        isLiked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: widget.screenWidth,
        height: widget.screenHeight * 1 / 4,
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/images/$gambar'),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        child: Text(
                          '$nama ',
                          style: const TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        height: 100,
                        child: Text(
                          '$deskripsi',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        child: Row(
                          children: [
                            Flexible(
                              flex: 2,
                              child: ElevatedButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => const AlertDialog(
                                      content: Text(
                                        'Resep belum tersedia',
                                      ),
                                    ),
                                  );
                                },
                                child: Text('Buat'),
                              ),
                            ),
                            Spacer(),
                            Flexible(
                              flex: 2,
                              child: OutlinedButton(
                                  onPressed: () {
                                    iconButton();
                                  },
                                  child: Icon(isLiked
                                      ? Icons.thumb_up_off_alt_outlined
                                      : Icons.thumb_up_off_alt_sharp)),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
