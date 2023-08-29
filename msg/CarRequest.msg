std_msgs/Header header
ugrdv_msgs/Meta meta

# Requests from controller preprocessor to controller package.
# Preprocessor can therefore be bypassed to give raw instructions
# for testing and inspection missions

float32 steering_angle # rad
float32 velocity # m/s