#!/bin/sh

menu(){
  printf "1. [URL] Shorten url\n"
  printf "2. [URL] Play link in mpv\n"
  printf "3. [URL] Download yt video to ~/Videos\n"
  printf "4. [URL] Download file to ~/Downloads\n"

}

failed_the_task(){
  notify-send "Failed excute the process"
}




choice=$(menu | rofi -dmenu | cut -d. -f1)
texti=$(xclip -o -selection clipboard)

case $choice in 
  1)
      output=$(curl -s http://tinyurl.com/api-create.php?url=${texti} )
	  sleep 3;
    if [ "$output" = "Error" ]; then
	        failed_the_task
    else
	      echo "$output" | xclip -selection c
	      notify-send "Shorten Link is in Clipboard"
	  fi
	  break
	  ;;
  
  
  2)
      mpv "$texti" || failed_the_task
      break
      ;;
  3)
      youtube-dl -o "~/Videos/%(title)s" "$texti" && 
      notify-send "Downloaded video" ||
      failed_the task
      break
      ;;
  4)
      wget -P ~/Downloads $texti &&
	    notify-send "Downloading File" ||
		  failed_the_task
      

esac
