curl --silent -H "Authorization: $1" https://api.github.com/users/rribeiro1/repos?per_page=100 -q | grep "\"name\"" | awk -F': "' '{print $2}' | sed -e 's/",//g' >> repos.txt