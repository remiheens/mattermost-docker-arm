#!/bin/sh

for folder in "/mattermost/data" "/mattermost/logs" "/mattermost/config" "/mattermost/plugins" "/mattermost/client/plugins"; do
    echo Fixing permissions on $folder
    chown mattermost:mattermost $folder
done

echo Dropping root and running mattermost entrypoint
su mattermost -c "/entrypoint.sh $@"
