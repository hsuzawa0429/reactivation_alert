class Drug < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '免疫抑制剤' },
    { id: 3, name: '副腎皮質ステロイド剤' },
    { id: 4, name: '抗腫瘍用薬' },
    { id: 5, name: '抗リウマチ薬' },
    { id: 6, name: '抗ウイルス薬' }
  ]

  include ActiveHash::Associations
  has_many :patients

end