class Node < ActiveRecord::Base

  has_many :photos
  acts_as_votable
  acts_as_commentable
  acts_as_taggable_on :tags

  # 给定一个点 在一定的误差范围内 该点可以认为就是某个节点
  # 参考一下 地图App 签到App
  # 这里打算接入高德地图
  
  class << self
    def find_near (point)

    end
  end

end


# 节点有没有必要 belongs_to nation
# 一个节点也应该有一段描述性的文字

# 节点之间应该有导航（这个要接入API）