function caffeinateCallback(eventType)
  -- screensDidSleep  screensDidWake  screensDidLock  screensDidUnlock
  if (eventType == hs.caffeinate.watcher.screensDidSleep) then
    hs.audiodevice.findDeviceByName("Built-in Output"):setOutputMuted(true)
  end
end

caffeinateWatcher = hs.caffeinate.watcher.new(caffeinateCallback)
caffeinateWatcher:start()
