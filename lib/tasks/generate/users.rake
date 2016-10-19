require 'faker'
namespace :generate do

  namespace :users do

    desc "Seed users"
    task :seed, [:count] => [:environment, :super] do |t, args|
      count = args[:count] ? args[:count].to_i : 25
      count.times do
        User.create email:    Faker::Internet.email,
                    name:     Faker::Name.name,
                    password: 'password'
      end
    end

    desc "Generate super user"
    task :super, [:name, :email, :password] => [:environment] do |t, args|
      name     = args[:name]     || ENV['SUPER_NAME']     ||'Super Admin'
      email    = args[:email]    || ENV['SUPER_EMAIL']    ||'super@test.com'
      password = args[:password] || ENV['SUPER_PASSWORD'] || 'password'

      User.create email:    email,
                  name:     name,
                  password: password,
                  super:    true
    end

  end

end
