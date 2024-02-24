import React, { useState } from "react";
import axios from "axios";
import { Link, useNavigate } from "react-router-dom";


function Register() {
  const [userName, setUserName] = useState("");
  const [password, setPassword] = useState("");

  //const navigate = useNavigate();

  const handleSubmit = async (event) => {
    event.preventDefault();
    const body = { userName, password };
    console.log(body);
    if (userName && password) {
      try {
        await axios.post(`http://localhost:8000/api/register`, body);

      } catch (error) {
        console.error(error);
      }
    }
  };

  return (
    <div className="container">
      <div className="secondeContainer">
        {" "}
        <form onSubmit={handleSubmit}>
          <h2>S'inscrire</h2>
          <label>
            <p>Pseudo</p>
            <div className="dv-input">
              <input
                id="userName"
                name="userName"
                className="input-one"
                placeholder="pierre.lafond@gmail.com"
                type="text"
                required
                value={userName}
                onChange={(e) => setUserName(e.target.value)}
              />
            </div>
          </label>
          <br />
          <label>
            <p>Mot de passe</p>
            <div className="dv-input">
              <input
                id="password"
                name="password"
                placeholder="*********"
                type="password"
                value={password}
                required
                onChange={(e) => setPassword(e.target.value)}
              />{" "}
            </div>
          </label>
          <button
            className="btn"
            type="submit"
            onClick={(e) => handleSubmit(e)}
          >
            Inscription
          </button>
          <p className="register-sentence">Vous avez déjà un compte?</p>
          <Link to="/login">Se connecter</Link>
        </form>
      </div>
    </div>
  );
}

export default Register;
