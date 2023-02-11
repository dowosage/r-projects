
install.packages('ggplot2')
library(ggplot2)


#ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
#ggplot(data = penguins) + geom_bar(mapping = aes(x = flipper_length_mm))

# smooth
ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# jitter & point
ggplot(data = penguins) + geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# fill
ggplot(data = diamonds) + geom_bar(mapping = aes(x = cut, fill=clarity))

ggplot(data, aes(x=, y=))+ 
  geom_point() +       
  geom_smooth(method="loess")

ggplot(data, aes(x=, y=)) + 
  geom_point() +        
  geom_smooth(method="gam", 
              formula = y ~s(x))

# facet_wrap
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color=species)) +
  facet_wrap(~species)

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = color, fill = cut)) + 
  facet_wrap(~cut)

# facet_grid
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color=species)) +
  facet_grid(sex~species)

ggplot(data = hotel_bookings, aes(x=carat, y=price)) +
  geom_point(aes(color=clarity)) + 
  facet_grid(~cut)

colnames(hotel_bookings)

