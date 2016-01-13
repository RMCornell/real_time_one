class PollsController < ApplicationController
  # Show All Polls
  def index
    @polls = Poll.all

  end

  # Show individual Polls
  def show
    @poll = Poll.find(params[:id])
  end

  # Create New Polls
  def new
    @poll = Poll.new
  end

  def create
    @poll = Poll.create(poll_params)

    redirect_to poll_path(@poll)
  end

  # No Update or Delete functionality at this time

  private
  def poll_params
    params.require(:poll).permit(:question, :option_one, :option_two, :option_three, :option_four)
  end

end
