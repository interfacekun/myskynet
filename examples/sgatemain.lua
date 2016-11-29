local skynet = require "skynet"
local sprotoloader = require "sprotoloader"

local max_client = 60

skynet.start(function ()

	skynet.error("Login server start")
	skynet.uniqueservice("protoloader")
	if not skynet.getenv "daemon" then
		local console = skynet.newservice("console")
	end
	skynet.newservice("debug_console",8000)

	local sgate = skynet.newservice("sgate")
	skynet.call(sgate, "lua", "open", {
			port = 8889,
			maxclient = max_client,
			nodelay = true,
		})
	skynet.error("SGate listen on", 8889)
  skynet.error("sgate", sgate)
  skynet.error([[

 *━━━━━━神兽出没━━━━━━
 * 　　 ┏┓　 ┏┓
 * 　　┏┛┻━━━┛┻┓
 * 　　┃　　　 ┃
 * 　　┃　 ━   ┃
 * 　　┃ ┳┛ ┗┳ ┃
 * 　　┃　　　 ┃
 * 　　┃　 ┻ 　┃
 * 　　┃　　　 ┃
 * 　　┗━┓　 ┏━┛
 * 　　　┃　 ┃神兽保佑
 * 　　　┃　 ┃代码无BUG！
 * 　　　┃　 ┗━━━┓
 * 　　　┃　　　 ┣┓
 * 　　　┃　　　 ┏┛
 * 　　　┗┓┓┏━┳┓┏┛
 * 　　　 ┃┫┫ ┃┫┫
 * 　　 　┗┻┛ ┗┻┛
 * ━━━━━━神兽出没━━━━━━
    ]])
	skynet.exit()

end
)
