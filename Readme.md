\# Fibre Optic Network Project



\*\*Author:\*\* :contentReference\[oaicite:0]{index=0}  

\*\*GitHub:\*\* \[ghaithrb](https://github.com/ghaithrb)  

\*\*Date:\*\* April 2026



\---



\## 📄 Project Overview



This project demonstrates a complete \*\*fibre optic network setup\*\* with:



\- Multiple VLAN segmentation for clients and monitoring

\- Cisco routers and switches configuration

\- OPNsense firewall deployment

\- Ubuntu Zabbix server for network monitoring

\- Windows clients with Zabbix agents

\- SNMPv3-based secure monitoring

\- Alerting via Email and Telegram

\- Full GNS3 topology for simulation and testing



The aim is to provide a professional, reusable network architecture suitable for both lab and real-world environments.



\---



\## 🖼 Topology \& Architecture



\### Network Topology



!\[Network Topology](img/architecture.png)



The topology includes:



\- \*\*Routers:\*\* R1, R2

\- \*\*Switches:\*\* Core and access switches

\- \*\*Firewall:\*\* OPNsense for NAT and security

\- \*\*Servers:\*\* Ubuntu server running Zabbix

\- \*\*Clients:\*\* Windows and Linux endpoints



\---



\## 📂 Project Structure

fibre\_optic\_project\_github/

│

├─ clients/ # Windows/Linux client machines

├─ configs/ # Configuration files for all devices

│ ├─ opnsense\_config.txt

│ ├─ router\_config.txt

│ ├─ switch\_config.txt

│ ├─ snmp\_router.txt

│ ├─ snmp\_switch.txt

│ ├─ ubuntu\_network.yaml

│ ├─ zabbix\_install.sh

│ └─ windows\_steps.txt

├─ docs/ # Documentation and reports

│ └─ rapport.docx

├─ firewall/ # Firewall backup files

├─ gns3/ # GNS3 project files

├─ img/ # Architecture images

│ └─ architecture.png

├─ linux/ # Linux scripts \& packages

├─ routers/ # Router config backups

├─ scripts/ # Automation scripts

├─ switch/ # Switch backups

├─ switche IOU 1/ # IOU switch configs

├─ topology/ # Additional topology references



\---



\## ⚙️ Device Configurations



\### OPNsense Firewall

\- NAT \& routing enabled

\- LAN: 10.0.0.1/24

\- DHCP range: 10.0.0.100 – 10.0.0.200

\- DNS: 8.8.8.8



\### Cisco Routers

\- VLAN 10: 192.168.10.0/24  

\- VLAN 20: 192.168.20.0/24  

\- NAT \& DHCP configured  

\- Interfaces connected to trunk ports on switches  



\### Switches

\- VLANs configured for clients, monitoring, and management

\- Trunking between switches and routers

\- Access ports assigned per VLAN



\### Zabbix Server

\- Ubuntu server network configured via netplan

\- Zabbix server \& agent installed

\- MySQL database initialized

\- Monitoring agents deployed on Windows/Linux clients



\### SNMP Monitoring

\- SNMPv3 configured on routers and switches

\- Secure authentication (SHA + AES 128)

\- Integration with Zabbix for network monitoring



\### Windows Clients

\- Zabbix agent installed

\- Firewall configured to allow monitoring ports

\- Hostname configured for server recognition



\---



\## 🛠 Installation \& Setup



1\. Restore all device configurations using provided `.txt` or `.cfg` files.

2\. Deploy OPNsense firewall with backup XML if needed.

3\. Import GNS3 topology (`fibre projet.gns3`) to simulate network.

4\. Configure Ubuntu server using `zabbix\_install.sh` and `ubuntu\_network.yaml`.

5\. Install Zabbix agents on all client machines.

6\. Verify SNMP connections in Zabbix frontend.

7\. Configure alerts in Zabbix for email and Telegram notifications.



\---



\## 📈 Monitoring \& Alerts



\- \*\*Zabbix Frontend:\*\* Access via `http://<Zabbix-server-ip>/zabbix`

\- \*\*Alerting:\*\* Configured for both Email (SMTP) and Telegram

\- \*\*Metrics Monitored:\*\*

&#x20; - Device availability

&#x20; - Interface bandwidth

&#x20; - Packet loss

&#x20; - CPU and memory usage



\---



\## 📌 Notes



\- This project is fully modular and reusable.

\- Scripts and configs can be applied on real devices or GNS3 simulation.

\- Architecture can scale for more VLANs or additional servers.



\---



\## 💾 Screenshots



\- See `img/architecture.png` for full network diagram.



\---



\## 🔗 Author \& Repository



\*\*:contentReference\[oaicite:1]{index=1}\*\*  

GitHub: \[https://github.com/ghaithrb](https://github.com/ghaithrb)

