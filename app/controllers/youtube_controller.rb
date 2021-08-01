class YoutubeController < ApplicationController

  def find_videos(keyword)
    service = Google::Apis::YoutubeV3::YouTubeService.new
    service.key = 'API-KEY'

    next_page_token = nil
    opt = {
      q: keyword,
      type: 'video',
      max_results: 5,
      order: :relevance,
      page_token: next_page_token,
    }
    service.list_searches(:snippet, opt)
  end

  def search
    @youtube_data = find_videos(params[:keyword])
  end
end
