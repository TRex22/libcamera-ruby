module Libcamera
  module CameraInterfaces
    class Base
      AVAILABLE_PICTURE_METHODS = []
      AVAILABLE_VIDEO_METHODS = []
      AVAILABLE_VIEW_FINDER_METHODS = []

      def initialize
      end

      def self.available_for_camera?
        false
      end

      def self.available_for_system_tasks?
        false
      end

      def take_picture(camera_configuration)
        raise "Not Implemented!"
      end

      # TODO: Figure out how to create video streams
      # and modify them or kill them
      def begin_video_capture_stream(camera_configuration)
        raise "Not Implemented!"
      end

      def begin_viewfinder_stream(camera_configuration)
        raise "Not Implemented!"
      end
    end
  end
end
