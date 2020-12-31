# typed: strict
class Foo
  extend T::Sig

  sig { returns(T::Boolean) }
  def bar
    baz.qux == 'true'
  end

  private

  sig { returns(Baz) }
  def baz
    T.unsafe(nil)
  end
end

class Baz
  extend T::Sig

  sig { params(other: Baz).returns(T::Boolean) }
  def ==(other)
    T.unsafe(nil)
  end

  sig { returns(T.nilable(T.any(String, Baz))) }
  def qux
    T.unsafe(nil)
  end
end
