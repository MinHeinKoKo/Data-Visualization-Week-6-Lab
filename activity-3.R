### Activity 3: Basic Colour Images in R

# 1️⃣ Basic image plot
x <- -10:10
y <- -10:10
z <- sqrt(outer(x ^ 2, y ^ 2, "+"))
image(x, y, z)

# Alternatively (with 0–1 axes)
image(z)


### 2️⃣ Colour customization
x <- -10:10
y <- -10:10
z <- sqrt(outer(x ^ 2, y ^ 2, "+"))

# Use grayscale color palette
image(x, y, z, col = gray.colors(12))


### 🧠 Question 3) Adjust number of color values to make the image smoother
# Increasing the number of colors will make the image smoother
image(x, y, z, col = gray.colors(100))


### 3️⃣ Overlaying a contour
# Combine both image and contour
x <- -10:10
y <- -10:10
z <- sqrt(outer(x ^ 2, y ^ 2, "+"))

# Draw image first
image(x, y, z, col = topo.colors(100))

# Overlay contour lines
contour(x, y, z, add = TRUE)
