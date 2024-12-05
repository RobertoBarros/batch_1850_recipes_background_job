class FakeJob < ApplicationJob
  queue_as :default

  def perform
    puts '-' * 50
    puts "Iniciando o Job"
    sleep 5
    puts "Finalizando o job"
    puts '-' * 50
  end
end
