import bonhomme from "../assets/bonhomme-en-pain-depice.png";
import { Link } from "react-router-dom";
import noeud from "../assets/noeud.png";
import Form from "../components/Form";
import { useEffect, useState } from "react";
import axios from "axios";

export default function Home() {
  return (
    <main>
      <Form />
      <div className="container">
        <div className="container-bandeau">
          <h1>Le calendrier de l'avent trop cool</h1>
        </div>
        <div className="painepice">
          <img src={bonhomme} alt="" />
        </div>
        <div className="container-boules">
          <div className="container-solo-boule1">
            {/* <span className="tige1"></span> */}
            <img src={noeud} className="noeud-home" />
            <div className="tige-home"></div>
            <div className="boule1">
              <Link to="/6">6</Link>
            </div>
          </div>
          <div className="container-solo-boule2">
            <img src={noeud} className="noeud-home" />
            <div className="tige-home"></div>

            <div className="boule2">
              {/* <span className="tige2"></span> */}
              <Link to="/22">22</Link>
            </div>
          </div>
          <div className="container-solo-boule3">
            <img src={noeud} className="noeud-home" />
            <div className="tige-home"></div>
            <div className="boule3">
              <Link to="/3">3</Link>
            </div>
          </div>
          <div className="container-solo-boule4">
            <img src={noeud} className="noeud-home" />
            <div className="tige-home"></div>
            <div className="boule2">
              <Link to="/14">14</Link>
            </div>
          </div>
          <div className="container-solo-boule5">
            <img src={noeud} className="noeud-home" />
            <div className="tige-home"></div>
            <div className="boule3">
              <Link to="/10">10</Link>
            </div>
          </div>
          <div className="container-solo-boule6">
            <img src={noeud} className="noeud-home" />
            <div className="tige-home"></div>
            <div className="boule1">
              <Link to="/8">8</Link>
            </div>
          </div>
          <div className="container-solo-boule7">
            {" "}
            <img src={noeud} className="noeud-home" />
            <div className="tige-home"></div>
            <div className="boule3">
              <Link to="/1">1</Link>
            </div>
          </div>
          <div className="container-solo-boule8">
            <img src={noeud} className="noeud-home" />
            <div className="tige-home"></div>
            <div className="boule2">
              <Link to="/7">7</Link>
            </div>
          </div>
          <div className="container-solo-boule9">
            <img src={noeud} className="noeud-home" />
            <div className="tige-home"></div>
            <div className="boule1">
              <Link to="2">2</Link>
            </div>
          </div>
          <div className="container-solo-boule10">
            <img src={noeud} className="noeud-home" />
            <div className="tige-home"></div>
            <div className="boule3">
              <Link to="/11">11</Link>
            </div>
          </div>
        </div>
      </div>
    </main>
  );
}
