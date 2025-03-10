# Backup script

This script creates backup copies of the specified directory and saves them as a compressed archive.

## How to use

1. Clone the repository:
```bash
git clone https://github.com/ваш-username/backup-script.git
cd backup-script 
```

2. Make the script executable:
```bash
chmod +x backup.sh
```

3. Run the script, specifying the backup directory:
```bash
./backup.sh /path/to/source
```

4. The backup will be saved to the `backups/` directory, and the logs will be saved to `logs/`.

# Example
```bash
./backup.sh /home/user/documents
```

# Logs
Logs are saved to the `logs/backup.log` file.