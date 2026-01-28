BACKUP_SOURCE=$1
BACKUP_DEST="./backups"
LOG_FILE="./logs/backup.log"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

if [ -z "$BACKUP_SOURCE" ] ; then
echo "usage: directory_to-backup"
exit 1
fi

if [ ! -d "$BACKUP_SOURCE" ] ; then
echo "error; directory does not exist"
exit 1
fi

tar -czf $BACKUP_DEST/backup_$DATE.tar.gz $BACKUP_SOURCE

echo "backup of $BACKUP_SOURCE completed on" >> $LOG_FILE

echo "backup completed successfully!"
