class Comfy::Cms::User < ActiveRecord::Base
  self.table_name = 'comfy_cms_users'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :sites, join_table: :comfy_cms_sites_users

  ROLES = %w[admin owner].freeze

  # def ability
  #   @ability ||= Ability.new(self)
  # end

  # delegate :can?, :cannot?, :to => :ability

end
