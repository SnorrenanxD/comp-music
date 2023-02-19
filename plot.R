library(tidyverse)
library(spotifyr)

ind_metal <- get_playlist_audio_features("37i9dQZF1DX29LQDcJ6Xy7")

ggplot(ind_metal, aes(track.popularity, danceability, size = energy)) + 
  geom_point(alpha = 0.6) + 
  xlab(Popularity) +
  ylab(Danceability) +
  ggtitle("Popularity of Industrial Metal tracks") +
  theme(
    legend.position = "none",
    plot.title = element_text(size = 16, face = "bold")
    )
  

