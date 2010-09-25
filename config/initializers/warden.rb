# To change this template, choose Tools | Templates
# and open the template in the editor.

Rails.configuration.middleware.use RailsWarden::Manager do |m|
  m.default_strategies :password
  m.failure_app = SessionsController
end
class Warden::SessionSerializer
  def serialize(record)
    [record.class, record.id]
  end

  def deserialize(keys)
    klass, id = keys
    klass.find(:first, :conditions => { :id => id })
  end
end
Warden::Strategies.add(:password) do
    def valid?
      params[:login_form][:name]|| params[:login_form][:password]
    end

    def authenticate!
      user = User.find_by_name_and_password(params[:login_form][:name],params[:login_form][:password])
      session[:login_user]=user
      user.nil? ? fail!('LOGIN FAIL') : success!(user)
    end
end
