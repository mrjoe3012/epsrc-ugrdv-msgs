# 3 dimensional representation of a cone, relative to the car, returned from perception packages
geometry_msgs/Point position
# 3x3 row-major covariance matrix, (x, y, z)
float64[9] position_covariance

uint16 colour
# between 0 and 1
float64 colour_confidence

uint16 BLUE=0
uint16 LARGEORANGE=2
uint16 ORANGE=1
uint16 YELLOW=3
uint16 UNKNOWN=4