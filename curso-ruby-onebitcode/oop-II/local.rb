def foo
  local = 'local é acessada apenas dentro desse método'
  print local
end

foo

local = 123
puts local
