# 先这样 到时候是否需要三级拆解 ？
class Nation < ActiveRecord::Base

  has_ancestry

  class << self
    # acts as voteable
    def most_wanted_cites

    end
  end

  # 是否为县一级别的行政区
  def is_district?
    !self.district.blank?
  end

  def is_city?
    !self.city.blank?
  end

  def is_province?
    !self.province.blank?
  end

  # 取出所有的省份
  scope :provinces, ->(nation_id = 1) { where(parent: nation_id) }
  # 取出对应省份的市
  scope :cities, ->(province_id) { where(parent: province_id) }
  # 取出对应市的下属辖区
  scope :districts, ->(district_id) { where(parent: district_id) }
end
