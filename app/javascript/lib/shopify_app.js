import AppBridge from "@shopify/app-bridge-utils";

const SESSION_TOKEN_REFRESH_INTERVAL = 2000; // Request a new token every 2s

document.addEventListener('DOMContentLoaded', async () => {
    const data = document.getElementById('shopify-app-init').dataset;
    const AppBridge = window['app-bridge'];
    const createApp = AppBridge.default;
    window.app = createApp({
        apiKey: data.apiKey,
        shopOrigin: data.shopOrigin,
    });

    // Wait for a session token before trying to load an authenticated page
    await retrieveToken(app);

    // Keep retrieving a session token periodically
    keepRetrievingToken(app);

    // Redirect to the requested page
    Turbo.visit(data.loadPath);
});

async function retrieveToken(app) {
    window.sessionToken = await AppBridge.getSessionToken(app);
}

function keepRetrievingToken(app) {
    setInterval(() => {
        retrieveToken(app);
    }, SESSION_TOKEN_REFRESH_INTERVAL);
}


// Intercept every Turbo request and load Shopify session token
document.addEventListener("turbo:before-fetch-request", function (event) {
    let headers = event.detail.fetchOptions.headers;
    const token = window.sessionToken;
    headers["Authorization"] = `Bearer ${token}`;
});

// Force redirect via turbo using turbo_redirect_to helper in controller.
// Mandatory for Safari since it's losing JWT token during 302 redirect.
document.addEventListener("turbo:before-fetch-response", (event) => {
    const response = event.detail.fetchResponse;
    const status = response.statusCode;
    const location = response.header("Location");

    if (status === 300 && location !== null) {
        event.preventDefault();
        Turbo.visit(location);
    }
});