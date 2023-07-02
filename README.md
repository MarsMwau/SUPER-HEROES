# Heroes API
### Author : Martha Mwau (2023)

## Description
This is a Rails API application that allows you to manage superheroes and their powers.

## Setup
To clone the project and get it running on your machine, follow these steps:
1. Clone the repository: `git clone https://github.com/your_username/heroes-api.git`
2. Install dependencies: `bundle install`
3. Create the database: `rails db:create`
4. Run the migrations: `rails db:migrate`
5. Seed the database: `rails db:seed`
6. Start the server: `rails s`
The server should now be running at `http://localhost:3000`.

## Technologies Used
- Ruby on Rails
- SQLLITE

## CRUD Methods
### Hero Model
- Read:
  - All heroes: `GET /heros`
  - Single hero: `GET /heros/:id`
### Power Model
- Read:
  - All powers: `GET /powers`
  - Single power: `GET /powers/:id`
- Update: `PATCH /powers/:id`
### Hero_Power Model
- Create: `POST /hero_powers`
- Delete: `DELETE /hero_powers/:id`

## Contact Information
If you have any questions or concerns, please contact me at marthamumbua16@gmail.com

## License
This project is licensed under the MIT License. See the LICENSE file for details.