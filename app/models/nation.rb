# 先这样 到时候是否需要三级拆解 ？
class Nation < ActiveRecord::Base

  class << self
    def list_provinces nation_id = 1
      Nation.where(parent: nation_id)
    end

    def list_cities province_id 
      Nation.where(parent: province_id)
    end

    def list_districts city_id
      Nation.where(parent: city_id)
    end

    # acts as voteable
    def most_wanted_cites

    end
  end

  # 是否为县一级别的行政区
  def is_district?
    !self.district.blank?
  end

  def is_city
    !self.city.blank?
  end

  def is_province?
    !self.province.blank?
  end
end
