json.extract! userstat, :id, :games_played, :minutes_played, :goals, :yellow_cards, :red_cards, :created_at, :updated_at
json.url userstat_url(userstat, format: :json)