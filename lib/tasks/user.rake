namespace :user do
  desc "TODO"
  task update_all: :environment do
    puts "Limpeza de dados do usuário"
    5.times { FakeJob.perform_later }
  end

end
