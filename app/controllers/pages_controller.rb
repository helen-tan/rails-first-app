class PagesController < ApplicationController
  def home
  end

  def about
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]
  end

  def contact
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]

    search = params[:member]

    if search
      @members = @members.select { |member| member.start_with?(search) }
    end
  end
end
