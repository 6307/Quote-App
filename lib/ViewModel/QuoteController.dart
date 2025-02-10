import 'dart:math';
import 'package:get/get.dart';
import '../Helper/ApiServices.dart';

class QuoteController extends GetxController {
  var quote = "Tap the button to get a quote!".obs;
  var isLoading = false.obs;

  final List<String> localQuotes = [
    "The best way to get started is to quit talking and begin doing. – Walt Disney",
    "The pessimist sees difficulty in every opportunity. The optimist sees opportunity in every difficulty. – Winston Churchill",
    "Don’t let yesterday take up too much of today. – Will Rogers",
    "You learn more from failure than from success. Don’t let it stop you. Failure builds character. – Unknown",
    "It’s not whether you get knocked down, it’s whether you get up. – Vince Lombardi",
    "People who are crazy enough to think they can change the world, are the ones who do. – Rob Siltanen",
    "We may encounter many defeats but we must not be defeated. – Maya Angelou",
    "Life is what happens when you're busy making other plans. – John Lennon",
    "Your time is limited, so don’t waste it living someone else’s life. – Steve Jobs",
    "If life were predictable it would cease to be life, and be without flavor. – Eleanor Roosevelt",
    "Do what you can, with what you have, where you are. – Theodore Roosevelt",
    "Believe you can and you’re halfway there. – Theodore Roosevelt",
    "Everything you’ve ever wanted is on the other side of fear. – George Addair",
    "You don’t have to be great to start, but you have to start to be great. – Zig Ziglar",
    "Act as if what you do makes a difference. It does. – William James",
    "The only limit to our realization of tomorrow is our doubts of today. – Franklin D. Roosevelt",
    "The only impossible journey is the one you never begin. – Tony Robbins",
    "What lies behind us and what lies before us are tiny matters compared to what lies within us. – Ralph Waldo Emerson",
    "Happiness is not something ready made. It comes from your own actions. – Dalai Lama",
    "Keep smiling, because life is a beautiful thing and there's so much to smile about. – Marilyn Monroe",
    "Life is really simple, but we insist on making it complicated. – Confucius",
    "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. – Dr. Seuss",
    "No matter what people tell you, words and ideas can change the world. – Robin Williams",
    "It does not matter how slowly you go as long as you do not stop. – Confucius",
    "When you reach the end of your rope, tie a knot in it and hang on. – Franklin D. Roosevelt",
    "With the new day comes new strength and new thoughts. – Eleanor Roosevelt",
    "Quality is not an act, it is a habit. – Aristotle",
    "If you want to live a happy life, tie it to a goal, not to people or things. – Albert Einstein",
    "Do not dwell in the past, do not dream of the future, concentrate the mind on the present moment. – Buddha",
    "It is during our darkest moments that we must focus to see the light. – Aristotle",
  ];

  void fetchQuote() async {
    isLoading(true);
    final result = await ApiService.fetchRandomQuote();

    if (result != null) {
      quote.value = result.advice;
    } else {
      final randomIndex = Random().nextInt(localQuotes.length);
      quote.value = localQuotes[randomIndex];
    }

    isLoading(false);
  }
}
