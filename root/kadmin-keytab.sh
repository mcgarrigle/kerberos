echo -e 'xxxx\nxxxx' | kdb5_util create -r MAC.WALES -s

kadmin.local << EOF
addprinc root/admin
xxxx
xxxx
ktadd -k /var/kerberos/krb5kdc/kadm5.keytab kadmin/admin
ktadd -k /var/kerberos/krb5kdc/kadm5.keytab kadmin/changepw
exit
EOF

systemctl enable --now krb5kdc
systemctl enable --now kadmin
