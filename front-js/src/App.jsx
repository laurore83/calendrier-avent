import { Outlet } from "react-router-dom";

export default function App() {
  /* useEffect(() => {
    fetch("http://localhost:8000/test", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ pseudo: "bob", password: "plop" }),
    }) //data est l'objet à nous envoyer
      .then((res) => res.json())
      .then(
        (result) => {
          console.log(result["input"]);
        },
        (error) => {
          console.error(error);
        }
      );
  }, []);*/
  return (
    <>
      <Outlet />
    </>
  );
}
/* export default function App() {
  useEffect(() => {
    fetch("http://localhost:8000/api/getRandomMusic")
      .then((res) => res.json())
      .then(
        (result) => {
          console.log(result);
        },
        (error) => {
          console.error(error);
        }
      );
  }, []);
  return (
    <>
      <NavBarIcon />
      <Outlet />
    </>
  );
}
 */
