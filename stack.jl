type Node{T}
  contents::T
  next::Nullable{Node{T}}

  function Node{T}(data::T)
    new{T}(data, nothing)
  end
end

type Stack{T}
  size::Int
  head::Nullable{Node{T}}

  Stack() = new{T}(0, nothing)

end



function push!{T}(S::Stack{T}, data::T)
  n = Node(data, S.head)
  S.head = n
  println("pushing: " + data)
end

function pop!{T}(S::Stack{T})
  S.head = S.head.next
  S.head = nothing
  println("popping: " + data)
end

function size{T}(S::Stack{T})
  S.size
end
