using System.Web.Routing;

using Microsoft.AspNet.FriendlyUrls;

namespace quiz {
	public static class RouteConfig {
		public static void RegisterRoutes ( RouteCollection routes ) {

			// Test Page Route
			routes.MapPageRoute ( routeName: ""
				, routeUrl: "test/{testname}" , physicalFile: "~/test.aspx" );
			
			//Landing Page Route
            routes.MapPageRoute(
				"QuizLanding", "{termid}-{crn}/{shortname}", "~/LandingPage.aspx");

            var settings = new FriendlyUrlSettings();
			settings.AutoRedirectMode = RedirectMode.Permanent;
			routes.EnableFriendlyUrls ( settings );

		}
	}
}
