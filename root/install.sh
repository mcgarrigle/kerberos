
yum install -y vim krb5-server krb5-workstation iproute

cp krb5.conf /etc/krb5.conf
cp kdc.conf  /var/kerberos/krb5kdc/kdc.conf 
cp kadm5.acl /var/kerberos/krb5kdc/kadm5.acl

# kdb5_util create -s
# kadmin.local -q "addprinc root/admin"
# kadmin.local -q "addprinc pete/admin"

cat install.sh

# kdb5_util create -r ATHENA.MIT.EDU -s

# [root@kdc ~]# kadmin.local
# kadmin.local:  addprinc root/admin
# kadmin.local:  addprinc user1
# kadmin.local:  ktadd -k /var/kerberos/krb5kdc/kadm5.keytab kadmin/admin
# kadmin.local:  ktadd -k /var/kerberos/krb5kdc/kadm5.keytab kadmin/changepw
# kadmin.local:  exit

# systemctl enable --now krb5kdc
# systemctl enable --now kadmin
# 
# kadmin.local -q "listprincs"
