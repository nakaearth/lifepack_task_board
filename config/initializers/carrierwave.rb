# To change this template, choose Tools | Templates
# and open the template in the editor.

 CarrierWave.configure do |config|
  config.root = File.join(Rails.root, 'public/profile_image')
  permissions 0777
end