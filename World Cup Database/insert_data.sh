#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Empty the rows in the tables of the database to start fresh
echo $($PSQL "TRUNCATE games, teams")

# PART 2: Insert the data:
# Read all the data from each row and set the data according to its column, loop for each row in games.csv file
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # exlude the first row in the file, that contains names of the columns
  if [[ $WINNER != "winner" ]]
  then
    # Get the name of the winning team
  WINNING_TEAM=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
    # If the winner name is not already in the teams table, add it to the table
    if [[ -z $WINNING_TEAM ]]
    then
    ADD_WINNING_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      # Print in the terminal that a team has been added
      if [[ $ADD_WINNING_TEAM == "INSERT 0 1" ]]
      then
      echo $WINNER inserted into table
      fi
    fi
  fi

  # exlude the first row in the file, that contains names of the columns
  if [[ $OPPONENT != "opponent" ]]
  then
  # Get the name of the opponent team
  OPPONENT_TEAM=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
    # If the oponnent name is not already in the teams table, add it to the table
    if [[ -z $OPPONENT_TEAM ]]
    then
    ADD_LOSING_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      # Print in the terminal that a team has been added
      if [[ $ADD_OPPONENT_TEAM == "INSERT 0 1" ]]
      then
      echo $OPPONENT inserted into table
      fi
    fi
  fi

  # exlude the first row in the file, that contains names of the columns
  if [[ $YEAR != "year" ]]
  then
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

  # Add the game to the games table
    ADD_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
    # Print in the terminal that a game has been added
    if [[ $ADD_GAME == "INSERT 0 1" ]]
    then
    echo Added a game to the games table
    fi
  fi

done


  
  