require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'

class Song
  
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramble::InstanceMethods


  attr_accessor :name
  attr_reader :artist
  
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
  
end
