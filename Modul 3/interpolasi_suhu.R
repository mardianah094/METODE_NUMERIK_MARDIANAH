waktu <- c(8, 10, 12, 14, 16)

suhu <- c(
  24.0,
  27.0,
  30.5,
  32.0,
  31.0
)

approx(
  waktu,
  suhu,
  xout = 11
)

#visualisasi
plot(
  waktu,
  suhu,
  pch = 19,
  xlab = "Waktu",
  ylab = "Suhu (°C)",
  main = "Interpolasi Data Suhu"
)

x_grid <- seq(
  min(waktu),
  max(waktu),
  length.out = 300
)

y_grid <- approx(
  waktu,
  suhu,
  xout = x_grid
)$y

lines(
  x_grid,
  y_grid,
  lwd = 2
)

points(
  11,
  approx(
    waktu,
    suhu,
    xout = 11
  )$y,
  pch = 19
)