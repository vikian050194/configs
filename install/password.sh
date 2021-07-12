echo "change password policy if needed"
sudo nano /etc/pam.d/common-password

echo "change your password"
passwd

echo "change root password"
sudo passwd root
