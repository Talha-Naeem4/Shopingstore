# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin_all_from "app/javascript/lib", under: "lib"
pin "@shopify/app-bridge-utils", to: "https://ga.jspm.io/npm:@shopify/app-bridge-utils@3.5.0/index.js"
pin "@shopify/app-bridge-core/MessageTransport", to: "https://ga.jspm.io/npm:@shopify/app-bridge-core@1.0.1/MessageTransport.js"
pin "@shopify/app-bridge-core/actions/AuthCode", to: "https://ga.jspm.io/npm:@shopify/app-bridge-core@1.0.1/actions/AuthCode/index.js"
pin "@shopify/app-bridge-core/actions/Error", to: "https://ga.jspm.io/npm:@shopify/app-bridge-core@1.0.1/actions/Error/index.js"
pin "@shopify/app-bridge-core/actions/Modal", to: "https://ga.jspm.io/npm:@shopify/app-bridge-core@1.0.1/actions/Modal/index.js"
pin "@shopify/app-bridge-core/actions/SessionToken", to: "https://ga.jspm.io/npm:@shopify/app-bridge-core@1.0.1/actions/SessionToken/index.js"
pin "@shopify/app-bridge-core/actions/helper", to: "https://ga.jspm.io/npm:@shopify/app-bridge-core@1.0.1/actions/helper.js"
pin "@shopify/app-bridge-core/actions/types", to: "https://ga.jspm.io/npm:@shopify/app-bridge-core@1.0.1/actions/types.js"
pin "@shopify/app-bridge-core/actions/uuid", to: "https://ga.jspm.io/npm:@shopify/app-bridge-core@1.0.1/actions/uuid.js"
pin "@shopify/app-bridge-core/util/env", to: "https://ga.jspm.io/npm:@shopify/app-bridge-core@1.0.1/util/env.js"
pin "@shopify/app-bridge/MessageTransport", to: "https://ga.jspm.io/npm:@shopify/app-bridge@3.7.5/MessageTransport.js"
pin "@shopify/app-bridge/actions/AuthCode", to: "https://ga.jspm.io/npm:@shopify/app-bridge@3.7.5/actions/AuthCode/index.js"
pin "@shopify/app-bridge/actions/Error", to: "https://ga.jspm.io/npm:@shopify/app-bridge@3.7.5/actions/Error/index.js"
pin "@shopify/app-bridge/actions/Modal", to: "https://ga.jspm.io/npm:@shopify/app-bridge@3.7.5/actions/Modal/index.js"
pin "@shopify/app-bridge/actions/SessionToken", to: "https://ga.jspm.io/npm:@shopify/app-bridge@3.7.5/actions/SessionToken/index.js"
pin "@shopify/app-bridge/actions/uuid", to: "https://ga.jspm.io/npm:@shopify/app-bridge@3.7.5/actions/uuid.js"
pin "@shopify/app-bridge/util/env", to: "https://ga.jspm.io/npm:@shopify/app-bridge@3.7.5/util/env.js"
