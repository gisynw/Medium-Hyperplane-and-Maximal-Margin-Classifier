## create a hyperplane and two margins
x = runif(20, 0, 4)

y <- 2 * x
y_margin_lef = 2*x + 2
y_margin_rht = 2*x - 2

plot(x, y, type = "l", col = "black", lwd = 2, xlab = "x", ylab = "y", main = "Line y = 2x")
lines(x, y_margin_lef,type = "l", lty = 2, col = "black")
lines(x, y_margin_rht, type = "l", lty = 2, col = "black")

pts = runif(8,1,4)
y_right = data.frame(x = pts, y = pts *2 + runif(8,2,3)) 
y_left = data.frame(x = pts, y = pts *2 - runif(8,2,3))

points(y_left, col = 'red', pch = 20)
points(y_right, col = 'blue', pch = 20)

legend(x = "topleft",          # Position
       legend = c("Class 1", "Class 2"),  # Legend texts
       fill = c("blue","red")
       )

##
text(1.5,3.5,label=2,col='red')
text(2.5,5.4,label=3,col='blue')
