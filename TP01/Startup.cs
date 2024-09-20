using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Routing;
using Microsoft.Extensions.DependencyInjection;
using TP01.Controller;

// Gabriel Chaves - Caroline Ribeiro

namespace TP01
{
    public class Startup
    {
        public void Configure(IApplicationBuilder app)
        {
            var builder = new RouteBuilder(app);
            var controller = new BookController();

            builder.MapRoute("livro", controller.GetBook);
            builder.MapRoute("livro/nome", controller.GetNameBook);
            builder.MapRoute("livro/autores", controller.GetAuthorsBook);
            builder.MapRoute("livro/ApresentarLivro", controller.GetHtmlBook);

            var routes = builder.Build();

            app.UseRouter(routes);
        }

        public void ConfigureServices(IServiceCollection services)
        {
            services.AddRouting();
        }
    }
}
