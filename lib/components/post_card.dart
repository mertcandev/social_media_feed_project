import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_feed_project/components/post_detail.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    String bodyText =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas massa lectus, varius dapibus porttitor ac, bibendum nec diam. In hac habitasse platea dictumst. Vivamus in turpis diam. In sit amet ligula efficitur, mollis tortor id, elementum nisl. Pellentesque quis lorem at diam cursus vulputate sit amet eget felis. Curabitur non ipsum tempus, malesuada neque vel, sagittis magna. Suspendisse metus ipsum, dictum sit amet justo in, efficitur ullamcorper massa. Nunc gravida placerat scelerisque. Etiam dapibus justo vel commodo malesuada. Pellentesque tristique sem metus. Nulla facilisi. Duis at porta erat. Phasellus malesuada ipsum ut quam pharetra, sed rutrum diam euismod.";
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const PostDetail()));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(color: Colors.white, blurRadius: 10, spreadRadius: 0)
          ],
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Center(
          child: Row(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hero(
                  tag: 1,
                  child: const CircleAvatar(
                    radius: 20,
                    foregroundImage: AssetImage("assets/profil.jpeg"),
                  ),
                ),
                Text(
                  "@username",
                  style: GoogleFonts.dosis(fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    "Header Text",
                    style: GoogleFonts.dosis(
                        fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  Text(
                    bodyText,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    softWrap: true,
                    style: GoogleFonts.dosis(
                        fontWeight: FontWeight.w400, fontSize: 15),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.grey.shade400,
                        size: 14,
                      ),
                      const SizedBox(width: 3),
                      Text(
                        "5",
                        style: GoogleFonts.dosis(
                            color: Colors.grey.shade500, fontSize: 14),
                      ),
                      const SizedBox(width: 15),
                      const Icon(
                        Icons.recycling,
                        color: Colors.grey,
                        size: 14,
                      ),
                      const SizedBox(width: 3),
                      Text(
                        "5",
                        style: GoogleFonts.dosis(
                            color: Colors.grey.shade500, fontSize: 14),
                      ),
                      const SizedBox(width: 15),
                      const Icon(
                        Icons.share,
                        color: Colors.grey,
                        size: 14,
                      ),
                      const Spacer(),
                      Text(
                        "12:15 - ",
                        style:
                            GoogleFonts.dosis(fontSize: 12, color: Colors.grey),
                      ),
                      Text(
                        "14/11/2023",
                        style:
                            GoogleFonts.dosis(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
