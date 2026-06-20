df$policy_level <- cut(df$risk,
                       breaks = quantile(df$risk, probs = c(0,0.25,0.5,0.75,1)),
                       labels = c("Monitoring",
                                  "Risk communication",
                                  "Enhanced surveillance",
                                  "Intensive intervention"),
                       include.lowest = TRUE)

ggplot(df) +
  geom_sf(aes(fill = policy_level)) +
  scale_fill_manual(values = c(
    "Monitoring" = "#2b83ba",
    "Risk communication" = "#ffffbf",
    "Enhanced surveillance" = "#fdae61",
    "Intensive intervention" = "#d7191c"
  ))