class FakeMutex
  def synchronize
    yield
  end
  def lock
  end
  def unlock
  end
end

ActionController::Reloader.default_lock = FakeMutex.new
