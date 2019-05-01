// Draw a "cell phone signal strength" picture with loops.
int barWidth = 40;
int barSpacing = 10;
size(500, 500);
fill(0, 255, 0);
int barX = 0;
int barHeight = 50;
while (barX < width) {
 rect(barX, height - barHeight, barWidth, barHeight);
 barX += barWidth + barSpacing;
 barHeight += 40;
}