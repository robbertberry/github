# frozen_string_literal: true

module Api
  module V1
    class MembersController < ApplicationController
      layout 'spa'

      def index; end

      def show
        render template: 'layouts/spa'
      end
    end
  end
end
