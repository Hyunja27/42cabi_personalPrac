import {BrowserRouter, Route, Switch} from 'react-router-dom'
import Lent from './pages/lent'
import Return from './pages/return'
import Main from './pages/main'

function App() {
  return (
    <BrowserRouter>
        <Switch>
          <Route exact path='/'><Main></Main></Route>
          <Route path='/lent'><Lent></Lent></Route>
          <Route path='/return'><Return></Return></Route>
        </Switch>
    </BrowserRouter>
  )
}

export default App
