# Backup script

This script creates backup copies of the specified directory and saves them as a compressed archive.

## How to use

1. Clone the repository:
```bash
git clone https://github.com/ваш-username/backup-script.git 
```

2. Go to the downloaded repository
```bash
cd backup-scripts
```

3. Make the script executable:
```bash
chmod +x backup.sh
```

4. Run the script, specifying the backup directory:
```bash
./backup.sh /path/to/source
```

5. The backup will be saved to the `backups/` directory, and the logs will be saved to `logs/`.

# Example
```bash
./backup.sh /home/user/documents
```

# Logs
Logs are saved to the `logs/backup.log` file.
