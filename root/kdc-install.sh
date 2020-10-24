
yum install -y vim krb5-server krb5-workstation iproute

cp krb5.conf /etc/krb5.conf
cp kdc.conf  /var/kerberos/krb5kdc/kdc.conf 
cp kadm5.acl /var/kerberos/krb5kdc/kadm5.acl

cat install.sh

# kdb5_util create -r MAC.WALES -s

# [root@kdc ~]# kadmin.local
# kadmin.local:  addprinc root/admin
# kadmin.local:  ktadd -k /var/kerberos/krb5kdc/kadm5.keytab kadmin/admin
# kadmin.local:  ktadd -k /var/kerberos/krb5kdc/kadm5.keytab kadmin/changepw
# kadmin.local:  exit

# systemctl enable --now krb5kdc
# systemctl enable --now kadmin
# 
# kadmin.local -q "listprincs"
