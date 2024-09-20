using Microsoft.AspNetCore.Hosting;
using TP01;
using TP01.Controller;

// Gabriel Chaves - Caroline Ribeiro

var controller = new BookController();

controller.DesmostrarMetodos();

IWebHost host = new WebHostBuilder()
    .UseKestrel()
    .UseStartup<Startup>()
    .Build();

host.Run();