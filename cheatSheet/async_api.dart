import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
// String dadJoke1 = await getDadJoke();
// String dadJoke2 = await getDadJoke();
//
// print(dadJoke1);
// print(dadJoke2);
// await fetchRandomQuote();
  var greatTitle = await getPosts(20);
  print("This is a great title: $greatTitle");
}
//
// Future getDadJoke() async{
//   Uri url = Uri.parse("https://icanhazdadjoke.com/");
//   final response = await http.get(
//       url,
//       headers: {"accept": "application/json",});
//
//       if(response.statusCode == 200){
//         var data = jsonDecode(response.body);
//         return data["joke"];
//       } else {
//         throw Exception("HEYYY EITTHVAÐ FÓR ÚRSKEIÐIS!");
//       }
// }
//
// Future<void> fetchRandomQuote() async {
//   final response = await http.get(Uri.parse('https://api.quotable.io/random'));
//   if (response.statusCode == 200) {
//     var quoteData = jsonDecode(response.body);
//     print('Random Quote: "${quoteData['content']}" — ${quoteData['author']}');
//   } else {
//     throw Exception('Failed to fetch a random quote!');
//   }
// }

Future getPosts(int index)async{
  String postTitle = "";
  print("LOADING....");
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/posts/$index");
  final response = await http.get(url);
  final data = jsonDecode(response.body);

  // for(var post in data){
  //   loopCount++;
  //   if(post['id'] == 10){
  //     postTitle = post['title'];
  //   }
  // }
  postTitle = data['title'];
  print("POST ID: ${data['id']}");


    return postTitle;

}

//VERKEFNI
// Assignment Details:
// Instructions:
// 1.	Set Up Your Dart Environment:
// ▪	Create a new Dart project using your preferred IDE or the command line.
// 2.	Choose an API:
// ▪	Select one of the following APIs to fetch data from:
// ◦	Dad Jokes API: icanhazdadjoke.com
// ◦	Quotes API: quotable.io
// ◦	JSONPlaceholder API: jsonplaceholder.typicode.com
// 3.	Fetch Data:
// ▪	Use the ⁠http package to send a GET request to the chosen API.
// ▪	Ensure you handle any potential errors that may occur during the request.
// 4.	Parse the Response:
// ▪	Parse the JSON response to extract the relevant data.
// ▪	For example, if using the Dad Jokes API, extract the joke text. If using the Quotes API, extract the quote and author.
// 5.	Display the Data:
// ▪	Print the fetched data to the console in a clear and formatted manner.
// ▪	Ensure that the output is user-friendly and easy to read.
// 6.	Bonus Challenge:
// ▪	Implement a loop that allows the user to fetch new data by pressing the Enter key.
// ▪	Optionally, allow the user to choose between different types of data (e.g., fetch a new joke or a new quote).
// Example Output:
// For the Dad Jokes API, the output might look like this:
// Fetching a dad joke...
// Dad Joke: Why don't skeletons fight each other? They don't have the guts!
// Press Enter to fetch another joke or type 'exit' to quit.
