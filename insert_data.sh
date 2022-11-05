#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

GET_TEAM_ID() {
  # select team_id (opponent_id) from teams
  local TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$1';")

  # if team_id not found
  if [[ -z $TEAM_ID ]]
  then
    # insert data into teams(name)
    INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$1');")
    
    # select newest entry for new team_id
    if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
    then
      TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$1';")
    fi
  fi

  echo $TEAM_ID
}

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # continue to next iteration if $YEAR == year
  if [[ $YEAR != year ]]
  then
    # get winner_id
    WINNER_ID=$(GET_TEAM_ID "$WINNER")
    
    # get opponent_id
    OPPONENT_ID=$(GET_TEAM_ID "$OPPONENT")
    
    # insert data into games(year, round, winner_id, opponent_id, winner_goals, opponents_goals)
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS);")
  fi
done