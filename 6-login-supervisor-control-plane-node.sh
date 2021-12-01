# ---------------------------------------
# 6.1 Get the SCP password
# ---------------------------------------
## a. login to vcsa (vcenterip:5480)
## b. ssh vCenter and run the python command then copy the password
ssh root@<vCenter-IP>
sudo python /usr/lib/vmware-wcp/decryptK8Pwd.py
# password will show out here #

# ---------------------------------------
# 6.2 Login to one of three SCP VM
# ---------------------------------------
## user: root
## password: <the-password-get-by-python>
