#!/bin/bash

# Define variables
base_url="https://iac.accounts.ondemand.com"
api_user=$(echo -n "username:password" | base64)
start_num=61
end_num=99

# Loop through the numbers to create users
for num in $(seq -f "%02g" $start_num $end_num); do
    user_name="rmiller$num"
    email="ricky.miller$num@bestrun.com"
    family_name="Miller$num"
    given_name="Ricky"
    password="Welcome1!"

    json_data=$(cat << EOF
{
  "schemas": [
    "urn:ietf:params:scim:schemas:core:2.0:User",
    "urn:ietf:params:scim:schemas:extension:sap:2.0:User",
    "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User"
  ],
  "userName": "$user_name",
  "emails": [
    {
      "primary": true,
      "value": "$email"
    }
  ],
  "name": {
    "familyName": "$family_name",
    "givenName": "$given_name"
  },
  "userType": "employee",
  "password": "$password",
  "active": "true",
  "urn:ietf:params:scim:schemas:extension:sap:2.0:User": {
    "mailVerified": true,
    "sendMail": false,
    "passwordDetails": {
      "status": "enabled",
      "passwordLockedTime": "2023-04-05T09:52:51.880Z"
    }
  },
  "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User": {
    "department": "Training"
  }
}
EOF
)
    
    # Retrieve the user's ID using the userName attribute in a GET request
    id=$(curl -X GET "$base_url/scim/Users?filter=userName%20eq%20%22$user_name%22" \
         -H "Content-Type: application/scim+json" \
         -H "Authorization: Basic $api_user" | jq -r '.Resources[0].id' )
    echo $id
    # Update the user's details using a PUT request with all the updated details
    curl -X PUT "$base_url/scim/Users/$id" \
         -H "Content-Type: application/scim+json" \
         -H "Authorization: Basic $api_user" \
         -d "$json_data"
done