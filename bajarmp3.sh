#!/usr/bin/bash
## Bajador de contenidos audio de youtube a mp3, por Ubuntu Peronista
## Requiere yt-dlp
yt-dlp \
--replace-in-metadata uploader ' - Topic' '' \
--parse-metadata '%(playlist_index)s:%(meta_track)s' --parse-metadata '%(uploader)s:%(meta_album_artist)s' --embed-metadata \
--embed-thumbnail --ppa "EmbedThumbnail+ffmpeg_o:-c:v mjpeg -vf crop=\"'if(gt(ih,iw),iw,ih)':'if(gt(iw,ih),ih,iw)'\"" \
--yes-playlist --format 'bestaudio/best' --extract-audio --audio-format mp3 --audio-quality 0 \
--windows-filenames --force-overwrites -o '%(uploader)s/%(album)s/%(playlist_index)s - %(title)s.%(ext)s' \
--print '%(uploader)s - %(album)s - %(playlist_index)s %(title)s' --no-simulate "$@"

##yt-dlp --replace-in-metadata uploader ' - Topic' '' --parse-metadata '%(playlist_index)s:%(meta_track)s' --parse-metadata '%(uploader)s:%(meta_album_artist)s' --embed-metadata --embed-thumbnail --ppa "EmbedThumbnail+ffmpeg_o:-c:v mjpeg -vf crop=\"'if(gt(ih,iw),iw,ih)':'if(gt(iw,ih),ih,iw)'\"" --yes-playlist --format 'bestaudio/best' --extract-audio --audio-format mp3 --audio-quality 0 --windows-filenames --force-overwrites -o '%(uploader)s/%(album)s/%(playlist_index)s - %(title)s.%(ext)s' --print '%(uploader)s - %(album)s - %(playlist_index)s %(title)s' --no-simulate "$@"
