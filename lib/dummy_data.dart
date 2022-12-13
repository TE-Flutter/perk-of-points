import 'package:flutter/material.dart';

import './models/category.dart';
import './models/meal.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'UNO',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'DOS',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'UNO Flip',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Manchkin',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Scrabble',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'SET',
    color: Colors.green,
  ),
];

const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'UNO',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Baraja_de_UNO.JPG/796px-Baraja_de_UNO.JPG',
    duration: 20,
    ingredients: [
      '112 cards as follows',
      '19 Blue cards - 0 to 9',
      '19 Green cards - 0 to 9',
      '19 Red cards - 0 to 9',
      '19 Yellow cards - 0 to 9',
      '8 Draw Two cards - 2 each in blue, green, red and yellow'
    ],
    steps: [
      'To be the first player to score 500 points. Points are scored by getting rid of all the cards in your hand before your opponent(s). You score points for cards left in your opponents’ hands.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'DOS',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://helios-i.mashable.com/imagery/articles/05KfqccrD6wkg8ZZ7BuEIDX/hero-image.fill.size_1248x702.v1623369047.jpg',
    duration: 10,
    ingredients: [
      '112 cards as follows',
      '19 Blue cards - 0 to 9',
      '19 Green cards - 0 to 9',
      '19 Red cards - 0 to 9',
      '19 Yellow cards - 0 to 9',
      '8 Draw Two cards - 2 each in blue, green, red and yellow'
    ],
    steps: [
      'To be the first player to score 500 points. Points are scored by getting rid of all the cards in your hand before your opponent(s). You score points for cards left in your opponents’ hands.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c3',
    ],
    title: 'UNO Flip',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://s3.gaming-cdn.com/images/products/10430/616x353/uno-flip-pc-game-ubisoft-connect-cover.jpg?v=1644799092',
    duration: 45,
    ingredients: [
      '112 cards as follows',
      '19 Blue cards - 0 to 9',
      '19 Green cards - 0 to 9',
      '19 Red cards - 0 to 9',
      '19 Yellow cards - 0 to 9',
      '8 Draw Two cards - 2 each in blue, green, red and yellow'
    ],
    steps: [
      'To be the first player to score 500 points. Points are scored by getting rid of all the cards in your hand before your opponent(s). You score points for cards left in your opponents’ hands.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Munchkin',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/e/ee/Munchkin_game_cover.jpg?20170527020414',
    duration: 60,
    ingredients: [
      '112 cards as follows',
      '19 Blue cards - 0 to 9',
      '19 Green cards - 0 to 9',
      '19 Red cards - 0 to 9',
      '19 Yellow cards - 0 to 9',
      '8 Draw Two cards - 2 each in blue, green, red and yellow'
    ],
    steps: [
      'To be the first player to score 500 points. Points are scored by getting rid of all the cards in your hand before your opponent(s). You score points for cards left in your opponents’ hands.',
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: ['c5'],
    title: 'Scrabble',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Scrabble_game_in_progress.jpg/800px-Scrabble_game_in_progress.jpg',
    duration: 15,
    ingredients: [
      '112 cards as follows',
      '19 Blue cards - 0 to 9',
      '19 Green cards - 0 to 9',
      '19 Red cards - 0 to 9',
      '19 Yellow cards - 0 to 9',
      '8 Draw Two cards - 2 each in blue, green, red and yellow'
    ],
    steps: [
      'To be the first player to score 500 points. Points are scored by getting rid of all the cards in your hand before your opponent(s). You score points for cards left in your opponents’ hands.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: ['c6'],
    title: 'SET',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Deskohran%C3%AD_2012_-_6831.JPG/1280px-Deskohran%C3%AD_2012_-_6831.JPG',
    duration: 240,
    ingredients: [
      '112 cards as follows',
      '19 Blue cards - 0 to 9',
      '19 Green cards - 0 to 9',
      '19 Red cards - 0 to 9',
      '19 Yellow cards - 0 to 9',
      '8 Draw Two cards - 2 each in blue, green, red and yellow'
    ],
    steps: [
      'To be the first player to score 500 points. Points are scored by getting rid of all the cards in your hand before your opponent(s). You score points for cards left in your opponents’ hands.',
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: false,
  ),
];
