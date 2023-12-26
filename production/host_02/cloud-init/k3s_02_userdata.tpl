#cloud-config

package_upgrade: true
ntp:
  enabled: true
  servers:
    - ntp.is.co.za
    - ntp2.is.co.za
timezone: Africa/Johannesburg
