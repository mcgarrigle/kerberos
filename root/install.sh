
yum install -y vim krb5-server krb5-workstation

cp krb5.conf /etc/krb5.conf
cp kdc.conf  /var/kerberos/krb5kdc/kdc.conf 
cp kadm5.acl /var/kerberos/krb5kdc/kadm5.acl

# kdb5_util create -s

