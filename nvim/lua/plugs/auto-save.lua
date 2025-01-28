
-- Auto Save config

local status_ok, auto_save = pcall(require, "auto-save")
if not status_ok then
    return
end



auto_save.setup {
    enabled = true,
    execution_message = {
        message = "Pizza Baked! ",
        dim = 0.18,
        cleanup_interval = 4000,

    },
    events = {"InsertLeave", "TextChanged"},
}
