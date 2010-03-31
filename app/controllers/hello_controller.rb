class Site < ActiveRecord::Base
  set_table_name 'site'
end

class HelloController < ApplicationController
  
  def world
    Rails.logger.info "Hitting memcached"
    site_ids = Rails.cache.fetch 'site_ids', :expires_in => 1.minute do
      Rails.logger.info "Hitting the database"
      Site.all.map { |s| s.id }
    end
    
    render :text => site_ids
  end
end
