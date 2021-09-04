class MonitoringInterval < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '１ヶ月毎' },
    { id: 3, name: '２ヶ月毎' },
    { id: 4, name: '３ヶ月毎' }
  ]

  include ActiveHash::Associations
  has_many :patients

end