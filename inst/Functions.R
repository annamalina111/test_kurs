

# embed_video_w_download <- function(string){
#   HTML(paste("<video src='https://github.com/philot789/data_science_2/raw/master/inst/www/", string, 
#              "'width='800px' height='400px' controls='true' controlsList='nodownload' playsinline
#              preload='yes' autoplay poster = 'chess_128.png'>
#              <p>Ihr Browser unterstützt html5-Video-Elemente nicht. Bitte versuchen Sie einen anderen Browser oder laden Sie das Video herunter.</p></video>
#              <a href='https://github.com/philot789/data_science_2/raw/master/inst/www/", string, 
#              "'>Direkter Download</a>", sep = ""))
# }

embed_video_w_download <- function(string){
  p(string)
}