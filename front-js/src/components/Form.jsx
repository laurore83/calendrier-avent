export default function Form() {
  function openForm() {
    document.getElementById("myForm").style.display = "block";
  }

  function closeForm() {
    document.getElementById("myForm").style.display = "none";
  }

  return (
    <div>
      <button className="open-button" onClick={openForm}>
        Se connecter
      </button>

      <div className="form-popup" id="myForm">
        <form action="/action_page.php" className="form-container">
          <h1>Se connecter</h1>

          <label htmlFor="email">
            <b>Email</b>
          </label>
          <input
            type="text"
            placeholder="Entrez votre email"
            name="email"
            required
          />

          <label htmlFor="psw">
            <b>Password</b>
          </label>
          <input
            type="password"
            placeholder="Entrez votre mot de passe"
            name="psw"
            required
          />

          <button type="submit" className="btn">
            Se connecter
          </button>
          <button type="button" className="btn cancel" onClick={closeForm}>
            Fermer
          </button>
        </form>
      </div>
    </div>
  );
}
