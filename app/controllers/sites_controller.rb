# frozen_string_literal: true

class SitesController < ApplicationController
  layout 'spa'

  def index
    render template: 'layouts/spa'
  end
end
