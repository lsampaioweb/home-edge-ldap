filename="$1"
password="$2"

while read -r line
do
  name="$line"
  echo "User: $name"
  ldappasswd -H ldap://edge-ldap-01.lan.homelab -x -D "cn=admin,dc=homelab" -W -s $password "$name"
  echo ""
done < "$filename"
