HOST="example.com"
USER="admin"
PASSWD="1234"

COMPUTERHOME="username"

for f in "$@"
do

FILENAME=$(basename "$f")
REMOTE_NAME="${FILENAME//[[:space:]]/}"
REMOTE_PATH="/subdir_if_needed/$REMOTE_NAME"
URL="http://example.com/$REMOTE_NAME"

ftp -n $HOST <<END_SCRIPT
	quote USER $USER
	quote PASS $PASSWD
	binary
	put "$f" "$REMOTE_PATH"
	bye
END_SCRIPT

mv "$f" "/Users/$COMPUTERHOME/Pictures/Skjermbilder/uploaded/$FILENAME"

echo $URL | pbcopy

done
