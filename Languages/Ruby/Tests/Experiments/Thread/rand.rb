class C
  def to_int
    10000000000000000000000000000000000000000000000000000000000000000000000000000000
  end
end
5.times { p rand(100) } 
5.times { p rand() } 
5.times { p rand(-1000000000000000000000000000000000000000000000000) } 
5.times { p rand(C.new) } 
