class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = ["claire", "sarah", "santi", "toni"]

    if params[:member]
      # If they typed anything in the search form
      # The first time they load, they probably haven't

      @members = @members.select do |member|
        member.start_with? params[:member].downcase
      end
    end
  end
end
