import net from "net"

import {PrismaClient} from "@prisma/client"

let prisma = new PrismaClient()

async function start() {

    let server = net.createServer((socket) => {

        console.log("Client connected")
        socket.on("data",  (obj) => {
            obj = JSON.parse(obj.toString())
            obj.forEach((element)=>  prisma.costAccounting.create({data:element}))
            socket.write(JSON.stringify(obj));
        })
        socket.on("error", (err) => {
            console.log("Client disconnected")
        })
        socket.on("end", () => {
            console.log("Client disconnected")
        })

    });


    server.listen(8000, "0.0.0.0", () => {
        console.log("Server started")
    });
}

start()