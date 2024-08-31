require 'test_helper'

module Libcamera
  module CameraInterfaces
    class BaseTest < Minitest::Test
      def setup
        @camera_configuration = {} # base class does not need a proper config
      end

      test '.available_for_camera? returns false for the base class' do
        refute Libcamera::CameraInterfaces::Base.available_for_camera?
      end

      test '.available_for_system_tasks? returns false for the base class' do
        refute Libcamera::CameraInterfaces::Base.available_for_system_tasks?
      end

      test '#take_picture on an instance of the base class will raise a
            Not Implemented! exception' do
        assert_raises StandardError.new('Not Implemented!') do
          Libcamera::CameraInterfaces::Base.take_picture(@camera_configuration)
        end
      end

      test '#begin_video_capture_stream on an instance of the base class will
            raise a Not Implemented! exception' do
        assert_raises StandardError.new('Not Implemented!') do
          Libcamera::CameraInterfaces::Base.begin_video_capture_stream(@camera_configuration)
        end
      end

      test '#begin_viewfinder_stream on an instance of the base class will
            raise a Not Implemented! exception' do
        assert_raises StandardError.new('Not Implemented!') do
          Libcamera::CameraInterfaces::Base.begin_viewfinder_stream(@camera_configuration)
        end
      end
    end
  end
end
