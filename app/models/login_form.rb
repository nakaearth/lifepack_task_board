class LoginForm
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :name
  attr_accessor :password

#  def initialize(params)
#    self.name = params[:name] if params
#    self.password = params[:password] if params
#  end

  def persisted?
    false
  end
end
