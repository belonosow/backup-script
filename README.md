# Backup Script
This script creates backup copies of the specified directory and saves them as a compressed archive. You can choose to save the backup locally or copy it to a remote server.

# Features
- Creates compressed backups of a specified directory.
- Allows saving backups locally or on a remote server.
- Logs all backup operations for easy tracking.

# How to Use
1. Clone the repository:
```bash
git clone https://github.com/ваш-username/backup-script.git
```
2. Go to the downloaded repository:
```bash
cd backup-script
```
3. Make the script executable:
```bash
chmod +x backup.sh
```
4. Run the script, specifying the backup directory:
```bash
./backup.sh /path/to/source
```
5. Choose where to save the backup:
- The script will ask if you want to save the backup to a remote server.
- If you choose `y`, you will need to provide:
    - Remote server address (e.g., `user@remotehost`).
    - Remote directory path for saving the backup.
6. Backup location:
- Local backups are saved in the `backups/` directory.
- Logs are saved in the `logs/backup.log` file.

# Example
## Local Backup
```bash
./backup.sh /home/user/documents
```
The backup will be saved locally in the `backups/` directory.
## Remote Backup
```bash
./backup.sh /home/user/documents
```
When prompted, enter:
- Remote server: `user@remotehost`
- Remote directory: `/backups/`
The backup will be copied to the remote server.

# Logs
All backup operations are logged in the logs/backup.log file. This includes:
- Successful backup creation.
- Backup size.
- Remote copy status (if applicable).