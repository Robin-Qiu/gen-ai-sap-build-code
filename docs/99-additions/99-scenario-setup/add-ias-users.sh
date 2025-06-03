#!/bin/bash

# Define variables
base_url="https://iac.accounts.ondemand.com:443"
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
    
    # Define JSON data
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
    
    # Send POST request
    curl -X POST "$base_url/scim/Users" \
         -H "Content-Type: application/scim+json" \
         -H "Authorization: Basic $api_user" \
         -d "$json_data"

done