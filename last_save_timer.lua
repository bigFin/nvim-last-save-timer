local M = {}

M.config = function()
	return {
		function()
			local current_time = os.time()
			local last_modified = vim.fn.getftime(vim.fn.expand('%:p'))
			if last_modified == -1 then
				return 'Buffer not saved'
			end
			local time_diff = os.difftime(current_time, last_modified)
			local hours = math.floor(time_diff / 3600)
			local minutes = math.floor((time_diff % 3600) / 60)
			local seconds = time_diff % 60
			return string.format('Saved %02d:%02d:%02d ago', hours, minutes, seconds)
		end
	}
end

return M
