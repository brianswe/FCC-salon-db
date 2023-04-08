#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=salon --tuples-only -c"
echo -e "\n~~~~~ MY SALON ~~~~~\n"
echo -e "Welcome to My Salon, how can I help you?\n"

MAIN_MENU(){
   
   if [[ $1 ]]
   then
        echo -e "\n$1"
   fi
    SERVICES=$($PSQL "SELECT service_id, name FROM services")
    echo "$SERVICES" |  while read SERVICE_ID BAR NAME
     do
        echo "$SERVICE_ID) $NAME"
     done
   read SERVICE_ID_SELECTED
   SERVICE_AVAILABILITY=$($PSQL "SELECT service_id FROM services WHERE service_id=$SERVICE_ID_SELECTED")
   SERVICE_CHOICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
   if [[  -z $SERVICE_AVAILABILITY ]]
   then
       MAIN_MENU "I could not find that service. What would you like today?"
   fi

   echo -e "\nWhat's your phone number?"
   read CUSTOMER_PHONE
   HAVE_PHONE_NUMBER=$($PSQL "SELECT customer_id, name FROM customers WHERE phone='$CUSTOMER_PHONE' ")
   if [[ -z $HAVE_PHONE_NUMBER ]]
   then
        echo -e "\nI don't have a record for that phone number, what's your name?"
        read CUSTOMER_NAME
        INSERT_NAME=$($PSQL "INSERT INTO customers(name,phone) VALUES('$CUSTOMER_NAME','$CUSTOMER_PHONE') RETURNING name")
        echo -e "\nWhat time would you like your $SERVICE_CHOICE_NAME, $CUSTOMER_NAME?"
        read SERVICE_TIME
        CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE name='$CUSTOMER_NAME'")
        INSERT_TIME=$($PSQL "INSERT INTO appointments(customer_id,service_id,time) VALUES($CUSTOMER_ID,$SERVICE_ID_SELECTED,'$SERVICE_TIME')")
        echo -e "\nI ahave put you down for a $SERVICE_CHOICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
        exit 
   else
       CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
       echo -e "\nWhat time would you like your $SERVICE_CHOICE_NAME, $CUSTOMER_NAME?"
       read SERVICE_TIME
       CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE name='$CUSTOMER_NAME'")
       INSERT_TIME=$($PSQL "INSERT INTO appointments(customer_id,service_id,time) VALUES($CUSTOMER_ID,$SERVICE_ID,'$SERVICE_TIME')")
       echo -e "\nI have put you down for a $SERVICE_CHOICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
   fi
   exit
}

MAIN_MENU
