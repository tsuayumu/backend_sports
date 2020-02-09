class OpeningStartingLineupForm
	include ActiveModel::Model

	attr_accessor :team_id, :year, :lineups, :comment

	def save
		lineup_manage = LineupManage.new(team_id: team_id, year: year, comment: comment, lineup_attributes: lineups)
		lineup_manage.save!
	end
end
