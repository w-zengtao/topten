class Line < ActiveRecord::Base

  has_many :nodes
  has_many :photos, through: :nodes


end


# 路线是可以被评论的
# 路线可以是走一半的

# 某个人走过某条路线 完成度是多少 经过了哪些节点  