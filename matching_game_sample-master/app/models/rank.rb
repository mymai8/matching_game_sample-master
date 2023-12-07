class Rank < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ルーキー' },
    { id: 3, name: 'ブロンズⅣ' },
    { id: 4, name: 'ブロンズⅢ' },
    { id: 5, name: 'ブロンズⅡ' },
    { id: 6, name: 'ブロンズⅠ' },
    { id: 7, name: 'シルバーⅣ' },
    { id: 8, name: 'シルバーⅢ' },
    { id: 9, name: 'シルバーⅡ' },
    { id: 10, name: 'シルバーⅠ' },
    { id: 11, name: 'ゴールドⅣ' },
    { id: 12, name: 'ゴールドⅢ' },
    { id: 13, name: 'ゴールドⅡ' },
    { id: 14, name: 'ゴールドⅠ' },
    { id: 15, name: 'プラチナⅣ' },
    { id: 16, name: 'プラチナⅢ' },
    { id: 17, name: 'プラチナⅡ' },
    { id: 18, name: 'プラチナⅠ' },
    { id: 19, name: 'ダイヤⅣ' },
    { id: 20, name: 'ダイヤⅢ' },
    { id: 21, name: 'ダイヤⅡ' },
    { id: 22, name: 'ダイヤⅠ' },
    { id: 23, name: 'マスター' },
    { id: 24, name: 'プレデター' }
  ]

  include ActiveHash::Associations
  has_many :coaches
end