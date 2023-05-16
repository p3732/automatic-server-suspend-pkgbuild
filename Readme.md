To enable the services:

```
sudo systemctl enable --now suspend-at-night.timer
sudo systemctl enable --now suspend-over-weekend.timer
```

Edit the service files to adjust the times on when and for how long to suspend:

```
sudo nano /etc/systemd/system/night-suspend.service
sudo nano /etc/systemd/system/weekend-suspend.service

sudo nano /usr/lib/systemd/system/suspend-at-night.timer
sudo nano /usr/lib/systemd/system/suspend-over-weekend.timer
```
