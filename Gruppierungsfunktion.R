# function for team generator


names <- c("Erika", "Florian", "Sarah", "Kirstin", "test", "test2")
gr_count <- 2
gr_size <- floor(length(names)/gr_count)
names_rand <- sample(names, length(names))
rest <- length(names) %% gr_count

if(rest > 0){
tibble(names = names_rand,
       group = c(rep(1:gr_count, gr_size), 1:rest)) |> 
  arrange(group, names) |> 
  gt::gt()

}else{
  tibble(names = names_rand,
         group = rep(1:gr_count, gr_size)) |> 
    arrange(group, names)|> 
    gt::gt()
  
}