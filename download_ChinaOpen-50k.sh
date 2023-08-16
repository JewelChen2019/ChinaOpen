#!/bin/bash

input_file="ChinaOpen-50K-url.txt"  # Input text file containing video id and download links, separated by tabs
output_directory="$1"  # Output directory for downloaded videos, obtained from script argument

download_failure_file="DownloadFailure.txt"  # File to record failed downloads

# Check if the output directory exists, create it if not
if [ ! -d "$output_directory" ]; then
    mkdir -p "$output_directory"
fi

# Initialize counters
total_links=0
successful_downloads=0
failed_downloads=0

# Read each line from the input file
while IFS=$'\t' read -r video_id download_link; do
    ((total_links++))

    # Use you-get to download the video
    you-get -o "$output_directory" --output-filename "${video_id}" "$download_link"

    # Check if the download was successful
    if [ $? -eq 0 ]; then
        ((successful_downloads++))
        
        # Delete simultaneously downloaded .xml file
        find $output_directory -name "*.xml" -type f -delete
        
        # # Convert the downloaded video file to MP4 format using ffmpeg
        # ffmpeg -i "${output_directory}/${video_id}.flv" -c:v libx264 -c:a aac -strict experimental "${output_directory}/${video_id}.mp4"

      
    else
        ((failed_downloads++))
        echo "$video_id	$download_link" >> "$download_failure_file"
    fi

done < "$input_file"

# Print statistics
echo "Total links: $total_links"
echo "Successful downloads: $successful_downloads"
echo "Failed downloads: $failed_downloads"

echo "Downloaded videos are saved in: $output_directory"
