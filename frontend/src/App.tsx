import {BrowserRouter, Route, Switch} from 'react-router-dom'
import Lent from './routes/lent'
import Retur from './routes/return'


function App() {
  return (
    <BrowserRouter>
        <Switch>
          <Route exact path='/'>Main</Route>
          <Route path='/lent'><Lent></Lent></Route>
          <Route path='/return'><Retur></Retur></Route>
        </Switch>
    </BrowserRouter>
  )
}

export default App
