local status_ok, repeat_dot = pcall(require, "repeat")
if not status_ok then
  return
end

repeat_dot.setup()
