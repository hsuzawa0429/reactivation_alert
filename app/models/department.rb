class Department < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '薬剤科' },
    { id: 3, name: '内科' },
    { id: 4, name: '血液内科' },
    { id: 5, name: '糖尿病内科' },
    { id: 6, name: '内分泌･代謝内科' },
    { id: 7, name: '腎臓内科' },
    { id: 8, name: '腫瘍内科' },
    { id: 9, name: '膠原病･リウマチ内科' },
    { id: 10, name: '精神科' },
    { id: 11, name: '脳神経内科' },
    { id: 12, name: '呼吸器内科' },
    { id: 13, name: '消化器内科' },
    { id: 14, name: '循環器内科' },
    { id: 15, name: '小児科' },
    { id: 16, name: '外科' },
    { id: 17, name: '整形外科' },
    { id: 18, name: '形成外科' },
    { id: 19, name: '脳神経外科' },
    { id: 20, name: '呼吸器外科' },
    { id: 21, name: '心臓外科' },
    { id: 22, name: '血管外科' },
    { id: 23, name: '乳腺外科' },
    { id: 24, name: '皮膚科' },
    { id: 25, name: '泌尿器科' },
    { id: 26, name: '産科婦人科' },
    { id: 27, name: '眼科' },
    { id: 28, name: '耳鼻咽喉科' },
    { id: 29, name: '頭頸部外科' },
    { id: 30, name: 'リハビリテーション科' },
    { id: 31, name: '放射線治療科' },
    { id: 32, name: '放射線診断科' },
    { id: 33, name: '麻酔科' },
    { id: 34, name: '小児歯科' },
    { id: 35, name: '歯科口腔外科' },
    { id: 36, name: '緩和ケア内科' },
    { id: 37, name: '緩和ケア外科' },
    { id: 38, name: '病理診断科' },
    { id: 39, name: '救急科' },
    { id: 40, name: '臨床検査科' }
  ]

  include ActiveHash::Associations
  has_many :patients

end