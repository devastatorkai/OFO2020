using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OfoTest2.Startup))]
namespace OfoTest2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) 
        {
            ConfigureAuth(app);
        }
    }
}
