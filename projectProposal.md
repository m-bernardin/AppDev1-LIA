# Awesome product name

## Project Goals
Codex is a collection management software focused on the trading card game *Magic: The Gathering*. Collections of cards for this game can often be large, and there are over 78 000 unique cards, so most collectors need software to categorize and  search their collections. We intend to create a simple to use app that allows users to keep an updated list of the cards they own and the cards that they want, and organize them according to their own preferences, so that it is helpful to any *Magic*  player. The intended impact of this project is to simplify the collection management of users, allowing them to more easily know what cards they have when putting together decks to play, or finding cards to sell. Tracking the values of owned cards is also very important, as some can be quite expensive.  
## Background

## Approach
Codex will accept input from the user to add or remove cards from their collection. The user can inut limited information about the card, such as a fragment of the name, and the app will query the Scryfall API to access the card's complete details. It will then save these details in the database. The user can then sort, search and categorize their cards into various kinds of collections, such as *Binders* which will regroup cards the user wants to keep together for ease, or *Decks* which must follow restrictions based on the game format the user intends to play them in.
### Card Input
The user can input a small amount of information about the card; the app will then fetch all of the necessary card details and save it to the users collection in the database. 
### Scryfall API
Manually entering and saving the details for all 78 000 cards is not realistic for the scope of this project. Luckily, there is a public access API for the website Scryfall allows us to search through all *Magic* cards. For ease of use offline, and for ease of use of the data by the app, the details fetched when a card is added (delivered in a json format) are saved to the database as card objects. 
## Audience
[[app name]] is aimed at players of the *Magic: The Gathering* trading card game. Its collection management tools aid collectors, one of the primary types of *Magic* fans. On the flip side, its deck tools allows players of the game to keep track of their decks, including the specific cards eac deck is built out of, and other deck metadata. 

## Resources
### GitHub Repository
[https://github.com/m-bernardin/AppDev-LIA](https://github.com/m-bernardin/AppDev-LIA)

### Team Members
| Student ID | Last Name | First Name |
| 2551625 | Bernardin | Mathieu |
| 2545855 | Madeleine | Siwick |
