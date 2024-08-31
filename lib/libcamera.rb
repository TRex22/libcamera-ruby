# Gems
# require 'oj'

require 'libcamera/version'
require 'libcamera/constants'

# Functionality

# Available tooling detector

require 'libcamera/camera_interfaces/base'
require 'libcamera/camera_interfaces/libcamera_interface'

# Libcamera
# raspi-cam
# Other camera mechanism
# Old mechanism
# require 'libcamera/camera_interfaces/base_camera_interface'
# require 'libcamera/camera_interfaces/base_camera_interface'

require 'libcamera/post_processing_interfaces/base'
# OpenCV
# FFMpeg
# Handbrake?

# Main Entrypoint
require 'libcamera/client'

module Libcamera
  class Error < StandardError; end
end
