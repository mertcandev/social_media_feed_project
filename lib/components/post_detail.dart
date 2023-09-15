import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostDetail extends StatelessWidget {
  const PostDetail({super.key});

  @override
  Widget build(BuildContext context) {
    String bodyText =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet luctus quam. Suspendisse sit amet fringilla urna, in ornare metus. Duis scelerisque dui pharetra diam congue aliquam. Sed magna tortor, euismod ac maximus sed, sodales eget ligula. Aliquam risus arcu, aliquam eu convallis a, viverra ac leo. Suspendisse blandit magna quis ex convallis aliquam. Maecenas lacus diam, ullamcorper pulvinar laoreet vel, vestibulum in risus. Nunc eu eros sed eros tincidunt elementum ac sed sapien. Cras pellentesque lacus felis, et vulputate libero pulvinar rutrum. Proin vestibulum, felis eget molestie ullamcorper, augue sem lobortis sem, id scelerisque nulla lectus aliquam sapien. Donec vel nisl ac neque ornare interdum. Sed quis orci id felis dapibus tristique vitae vitae erat. Morbi consequat justo eu dignissim porta. Vestibulum tempus leo eros, vitae iaculis sapien ultrices malesuada. Phasellus ornare sapien nec ipsum blandit, eget viverra mauris aliquam. Suspendisse potenti. Donec tempus magna et ante rutrum porta. Vivamus sodales iaculis diam, nec posuere justo ultricies ac. Nullam vel lacinia lacus, sed aliquam lacus. Pellentesque mi ipsum, finibus nec imperdiet sit amet, gravida eget nulla. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean semper est sit amet elementum lacinia. Maecenas euismod, nibh at elementum venenatis, erat lacus semper dui, posuere iaculis ex urna id felis. Sed commodo vel nisi ut posuere. Cras mauris lacus, rhoncus et diam ut, aliquam sagittis neque. In maximus fermentum dolor, at hendrerit tellus posuere sed. In ac tristique neque. Donec efficitur sagittis sem sed ultricies. Vestibulum mattis commodo tellus, quis eleifend nunc ultricies a. Pellentesque enim tortor, consectetur id commodo id, vehicula tempus nulla. Nam mollis condimentum magna, ac mollis ex volutpat non. Pellentesque magna arcu, facilisis porta est a, accumsan suscipit enim. Nulla rhoncus nec felis sit amet finibus. Pellentesque non arcu fermentum, fermentum elit in, suscipit leo. Pellentesque quis dui sit amet libero hendrerit imperdiet in vitae nisi. Integer molestie condimentum rutrum. Nulla ornare odio ac felis fermentum finibus. In hac habitasse platea dictumst. Fusce vel rhoncus eros. Praesent bibendum sapien leo, ut blandit nunc varius eget. Curabitur accumsan dignissim metus nec fringilla. Etiam imperdiet, sapien vel semper sodales, quam arcu volutpat mi, eu lobortis sem ante nec sem. Duis tristique est eu ex egestas eleifend. Vestibulum eu augue id massa molestie lobortis sit amet vel est. Nullam mattis enim interdum orci rhoncus maximus. Sed a tincidunt lorem. Suspendisse a sollicitudin lectus, nec varius magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce sed maximus lectus, id porta sem. Duis quis suscipit mauris. Sed et tincidunt ex. Nullam molestie odio enim, semper iaculis odio tempus at. Vivamus lacinia, metus sit amet congue venenatis, lectus enim molestie odio, eget tristique erat leo ut ipsum. Vestibulum tincidunt molestie mi sit amet pretium. Aenean vel dolor vehicula, condimentum odio eget, blandit nunc. Nulla facilisi. Phasellus aliquam metus metus, porttitor tincidunt elit porta nec. Donec semper ultricies blandit.";
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                const Hero(
                  tag: 1,
                  child: CircleAvatar(
                    radius: 30,
                    foregroundImage: AssetImage("assets/profil.jpeg"),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Header Text",
                        style: GoogleFonts.dosis(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "User Name",
                            style: GoogleFonts.dosis(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "12:15 - ",
                            style: GoogleFonts.dosis(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                          Text(
                            "14/11/2023",
                            style: GoogleFonts.dosis(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
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
              ],
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Text(bodyText),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
