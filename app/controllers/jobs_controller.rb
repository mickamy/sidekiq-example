class JobsController < ApplicationController
  def new; end

  def create
    HardJob.perform_async
  end

  def batch
    100.times do
      HardJob.perform_async
    end
  end
end
