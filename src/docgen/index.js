const fs = require("fs")
const handlebars = require("handlebars")
const path = require("path")

const doc = require("./doc.json")

function compile(relPath) {
    const content = fs.readFileSync(path.join(__dirname, relPath))
    return handlebars.compile(content.toString())
}

function write(content, relPath) {
    fs.writeFileSync(path.join(__dirname, relPath), content)
}

handlebars.registerHelper("unlessPrivate", function (conditional, options) {
    if (conditional.accessLevel !== "🔐") {
        return options.fn(this)
    }
})

handlebars.registerHelper("unlessNoReturn", function (conditional, options) {
    if (conditional.returnType.type !== "NoReturn") {
        return options.fn(this)
    }
})

const mainTemplate = compile("templates/main.hbs")
const listTemplate = compile("templates/list.hbs")
const classTemplate = compile("templates/class.hbs")

write(mainTemplate(listTemplate(doc)), "out/index.html")

doc.types.forEach(t => {
    write(mainTemplate(classTemplate(t)), "out/" + t.name + ".html")
})