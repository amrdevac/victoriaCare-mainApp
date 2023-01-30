const home = () => import("../views/vue/page/homepage.vue");
const dashboard = () => import("../views/vue/page/dashboard.vue");
const notFound = () => import("../views/vue/page/notFound.vue");

let routes = [
    {
        path: "/",
        component: home,
        name: "homepage",
    },
];

if (localStorage.getItem("secondary_app_token")) {
    routes = [];
        routes.push(
            {
                path: "/dashboard",
                component: dashboard,
                name: "dashboard",
            },
        );
}

routes.push({
    path: "/*",
    component: notFound,
    name: "notfound",
});

export default routes;
