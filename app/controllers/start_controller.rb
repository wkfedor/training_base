class StartController < ApplicationController
  require 'faker'

  def index
    @temp = "тестовая переменная из контроллера"
=begin
    # Создание 10000 организаций
    10000.times do
      Org.create(
        name: Faker::Company.name,
        localization: Faker::Number.between(from: 1, to: 100)
      )
    end

    # Создание 10000 товаров с привязкой к организации
    10000.times do
      Tovar.create(
        name: Faker::Commerce.product_name,
        org_id: Org.pluck(:id).sample
      )
    end

    10000.times do
      Reiting.create(
        reiting: Faker::Number.between(from: 1, to: 100),
        tovar_id: Tovar.pluck(:id).sample
      )
    end
=end

     @temp = Tovar.find_by_id(1).org.inspect
     @temp1 = Reiting.find_by_id(1).tovar.inspect
    # @temp2 = Org.find_by_id(4).tovars.map(&:name)
    p '||||||||||||||||||||||||||||||||||||||||'

    #@temp2 = Org.find_by_id(10).tovars
    @temp2 = Org.find_by_id(10).tovars

    #@temp = Org.find_by_id(7).tovar.inspect
    p '||||||||||||||||||||||||||||||||||||||||'
    #@temp3 = Tovar.tovar4.preload(:org).to_sql

    @tovars = Tovar.preload(:org).where(org_id:10)#.limit(10)
  end
end
