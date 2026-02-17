# ============================================
# Roll No: 23BAD076
# ============================================
library(ggplot2)
accident_data <- read.csv("4.traffic_accidents.csv")
head(accident_data)

ggplot(accident_data, aes(
  x = Location,
  y = Vehicles_Involved
)) +
  geom_point(
    aes(
      color = Severity,
      size = Vehicles_Involved,
      shape = Accident_Type
    ),
    alpha = 0.8
  ) +
  scale_color_manual(
    values = c(
      "Minor" = "green",
      "Major" = "orange",
      "Fatal" = "red"
    )
  ) +
  labs(
    title = "Traffic Accident Analysis – High Risk Locations",
    x = "Accident Location",
    y = "Vehicles Involved (Accident Frequency)",
    color = "Accident Severity",
    size = "Accident Frequency",
    shape = "Accident Type"
  ) +
  theme_minimal()