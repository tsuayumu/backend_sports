Batter.find_by(name: "バレンティン", year: 2020).update(team_id: 7)
Batter.find_by(name: "福田　秀平", year: 2020).update(team_id: 10)
Batter.find_by(name: "嶋　基宏", year: 2020).update(team_id: 3)
Batter.find_by(name: "鈴木　大地", year: 2020).update(team_id: 11)
Batter.find_or_create_by(name: "ジョーンズ", year: 2020, team_id: 9)
Batter.find_or_create_by(name: "ロドリゲス", year: 2020, team_id: 9)
Batter.find_or_create_by(name: "スパンジェンバーグ", year: 2020, team_id: 12)
Batter.find_or_create_by(name: "パーラ", year: 2020, team_id: 1)
Batter.find_or_create_by(name: "ボーア", year: 2020, team_id: 2)
Batter.find_or_create_by(name: "ピレラ", year: 2020, team_id: 2)
