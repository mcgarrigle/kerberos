
yum install krb5-workstation krb5-libs vim
cp krb5.conf /etc/krb5.conf

# kadmin -q "addprinc -randkey host/$(hostname -f)"

# ktutil
  ktadd -k /etc/krb5.keytab host/server1.local
