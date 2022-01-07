import React from 'react'
import ReactDOM from 'react-dom'
import App from '../App'
import './main.css'

export default function Main(){
  return (
    <div className='container'>
      <div className="row" id="logo">
        <img src="../img/logo_purple.png" alt='logo'/>
      </div>
      <div className="row d-grid gap-2 col-6 mx-auto">
        <a className="btn btn-lg " id="loginBtn" href='https://naver.com'> 
        Hey!
        </a>
      </div>
    </div>
  )
}