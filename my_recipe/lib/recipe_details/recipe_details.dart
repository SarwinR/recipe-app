// recipe_details.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_recipe/models/food.dart';

class RecipeDetails extends StatelessWidget {
  final Food food;

  const RecipeDetails({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              food.thumbnailUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200.0,
            ),
            SizedBox(height: 8.0),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: (Colors.grey[200])!)),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Calories",
                            style: GoogleFonts.roboto(color: Colors.grey),
                          ),
                          Text(
                            food.calories.toString() + " Kcal",
                            style: GoogleFonts.roboto(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: (Colors.grey[200])!)),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Ingredients",
                            style: GoogleFonts.roboto(color: Colors.grey),
                          ),
                          Text(
                            "06",
                            style: GoogleFonts.roboto(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: (Colors.grey[200])!)),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Time",
                            style: GoogleFonts.roboto(color: Colors.grey),
                          ),
                          Text(
                            food.cookingTime,
                            style: GoogleFonts.roboto(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 24,
            ),
            Container(
                margin: EdgeInsets.only(left: 8, right: 8),
                child: Column(children: [
                  Text(
                    "Ingredients",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  //Display the list of ingredients here (Icon, name, quantity, unit) in cards
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: food.ingredientList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: (Colors.grey[200])!)),
                          padding: EdgeInsets.all(8),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(
                              //move the quantity and unit to the right
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: NetworkImage(food
                                                  .ingredientList[index]
                                                  .iconUrl),
                                              fit: BoxFit.cover)),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      food.ingredientList[index].name,
                                      style: GoogleFonts.roboto(
                                          color: Colors.grey[900],
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  food.ingredientList[index].quantity +
                                      " " +
                                      food.ingredientList[index].unit,
                                  style: GoogleFonts.roboto(
                                      color: Colors.grey[900]),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),

                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Cooking Method",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam gravida mauris ut semper posuere. Fusce volutpat neque non elementum rutrum. Phasellus et lacus et lacus accumsan commodo ac quis felis. Proin quam lorem, pellentesque in pretium ac, convallis et massa. Donec in nisi magna. In rutrum, nibh id interdum auctor, nisl elit ultricies arcu, ut ullamcorper ipsum mauris quis eros. Aenean ex tortor, pretium eu vulputate a, consectetur vel diam. Cras nulla nisl, euismod eu purus ac, sagittis viverra elit. Duis pulvinar sem quis fermentum iaculis. Quisque pharetra turpis velit, ut hendrerit tortor finibus id. Sed eu pretium libero.Vestibulum semper justo eu purus suscipit scelerisque. Proin eget rhoncus ex. Nam eget egestas nisi. Morbi molestie imperdiet sapien, ut ornare est laoreet in. Nam fermentum venenatis lorem, et scelerisque ante fermentum eget. Vestibulum eget urna ullamcorper, consequat odio et, efficitur arcu. Ut molestie feugiat tristique. Ut lectus erat, malesuada eget elit et, laoreet commodo augue. Nullam at velit vel ipsum tristique rhoncus. Fusce euismod facilisis lorem nec consequat. Donec in turpis tellus. Nunc at massa et sapien hendrerit volutpat. Curabitur condimentum, nibh hendrerit fermentum suscipit, justo lacus pellentesque felis, vitae rhoncus mi est sit amet massa. Donec id hendrerit felis, at blandit ex. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    style: Theme.of(context).textTheme.bodyMedium!,
                    textAlign: TextAlign.justify,
                  ),
                ]))
            // SizedBox(height: 16.0),
            // Text(
            //   "Ingredients",
            //   style: Theme.of(context).textTheme.titleLarge,
            // ),
            // SizedBox(height: 8.0),

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
            //   child: Text(
            //     food.longDescription,
            //     style: Theme.of(context).textTheme.bodyMedium,
            //   ),

            // ),
          ],
        ),
      ),
    );
  }
}
