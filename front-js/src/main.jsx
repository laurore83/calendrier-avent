import React from "react";
import ReactDOM from "react-dom/client";
import { createBrowserRouter, RouterProvider } from "react-router-dom";

import Home from "./Pages/Home.jsx";
import TemplateDDay from "./Pages/TemplateDDay.jsx";
import User from "./Pages/User.jsx";
import "./App.css";
import "../src/App.css";
import App from "./App.jsx";
import "./index.css";
import Register from "./auth/page/register.jsx";

const router = createBrowserRouter([
  {
    path: "/",
    element: <App />,
    children: [
      {
        path: "/",
        element: <Home />,
      },
      {
        path: "/:dayNumber",
        element: <TemplateDDay />,
      },
      {
        path: "/user",
        element: <User />,
      },
      {
        path: "/register",
        element: <Register />,
      },
    ],
  },
]);

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <RouterProvider router={router}></RouterProvider>
  </React.StrictMode>
);
