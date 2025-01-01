class HardJob
  include Sidekiq::Job

  def perform(*args)
    sleep 5
    puts "Hard Job done!"
  end
end
