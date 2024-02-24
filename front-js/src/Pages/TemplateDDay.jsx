import React from "react";
import bannermarket from "../assets/bannermarket.jpg";
import noeud from "../assets/noeud.png";
import bonhomme from "../assets/bonhomme-en-pain-depice.png";
import { useEffect, useState } from "react";
import axios from "axios";
import { useParams, Link } from "react-router-dom";

export default function DDay() {
  const [response, setResponse] = useState([]);
  const { dayNumber } = useParams();
  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get(
          `http://localhost:8000/api/getOneActivity?id=${dayNumber}`,
          dayNumber
        );
        setResponse(response.data);
        console.log(response.data);
      } catch (error) {
        console.error(error);
      }
    };
    fetchData();
  }, []);

  const redirectUrl = () => {
    const url = response.link;
    window.open(url, "_blank");
  };
  return (
    <div>
      <div className="TemplateDDay">
        <div className="TemplateDDay-top"></div>
        <div className="tige"></div>
        <img className="noeud" src={noeud} alt="noeud" />
        <div className="cercle">
          <span>{dayNumber}</span>
        </div>
        <div className="painepice">
          <Link to="/">
            <img src={bonhomme} alt="" />
          </Link>
        </div>
        <div className="containersurprisedujour">
          <h1 className="surprisedujour">Votre surprise du jour !!!</h1>
        </div>
        <div
          className="marketimg"
          style={{ backgroundImage: `url(${bannermarket})` }}
        ></div>
      </div>
      <div className="container-wishes">
        <div className="contenu-wishes">
          <img className="img-wish" src={response.image} alt="sapin" />

          <div className="text-wishes">
            <h2>{response.activity}</h2>
            <h3>{response.content}</h3>
            <p>{response.adresse}</p>
            <p>{response.opening_hours}</p>

            <button className="open-button" onClick={redirectUrl}>
              Plus d'infos ICI
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
