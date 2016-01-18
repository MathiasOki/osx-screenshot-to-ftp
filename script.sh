HOST="example.com"
USER="admin"
PASSWD="1234"

for f in "$@"
do

DATE=$(date +"%Y_%m_%d_%H_%M_%S")
REMOTE_NAME="prefix_${DATE}.png"
REMOTE_PATH="/subdir_if_needed/$REMOTE_NAME"
URL="http://example.com/$REMOTE_NAME"

ftp -n $HOST <<END_SCRIPT
	quote USER $USER
	quote PASS $PASSWD
	binary
	put "$f" "$REMOTE_PATH"
	bye
END_SCRIPT

rm -f "$f"

echo $URL | pbcopy

done
