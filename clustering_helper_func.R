kmeans_segmentation <- function(input_data){
  input_data <- input_data %>% select(Order.ID, Order.Date, Customer.ID, Sales) %>% 
    mutate(Order.Date = dmy(Order.Date)) 
  
  latest_date = max(input_data$Order.Date) + 1
  
  cluster_data <- input_data %>% 
    group_by(Customer.ID) %>% 
    mutate(
      recency = abs((max(Order.Date) - latest_date) / ddays(1)),
      frequency = n(), 
      total_sales = sum(Sales),
      avg_sale = mean(Sales)
    )  %>% 
    ungroup() %>% 
    filter(recency < 180) %>% 
    select(-Order.ID, -Order.Date, -Sales)
  
  kmeans_output <- cluster_data %>% 
    select(-Customer.ID) %>% 
    kmeans(centers = 3, nstart = 100)
  
  out_data <- broom::augment(kmeans_output, cluster_data) %>% unique()
  
}
