#!/bin/bash

# Set the name of the file to store download failures
failure_file="DownloadFailure.txt"

# Read each line from the txt file, with format "video_id download_link"
while IFS=' ' read -r video_id download_link; do
    echo "Downloading video ${video_id}..."
    
    # Use wget to download the video with progress bar
    wget --show-progress --output-document="${video_id}.mp4" "${download_link}"
    
    # Check if the download was successful
    if [ $? -ne 0 ]; then
        echo "Failed to download video ${video_id}"
        echo "${video_id} ${download_link}" >> "${failure_file}"
    else
        echo "Video ${video_id} downloaded successfully"
    fi
done < your_input.txt

# Count download information
total_links=$(wc -l < your_input.txt)
successful_downloads=$(ls -1 *.mp4 | wc -l)
failed_downloads=$(wc -l < "${failure_file}")

echo "Total ${total_links} download links"
echo "Successfully downloaded ${successful_downloads} videos"
echo "Failed to download ${failed_downloads} videos"

# Move downloaded videos to the specified destination path
destination_path="/your/destination/path"
mv *.mp4 "${destination_path}"

echo "Download completed"
