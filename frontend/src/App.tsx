import {BrowserRouter, Route, Switch} from 'react-router-dom'
import lent from './routes/lent'
import retur from './routes/return'


function App() {
  return (
    <BrowserRouter>
        <Switch>
          <Route exact path='/'>Main</Route>
          <Route path='/lent' component={lent}></Route>
          <Route path='/return' component={retur}></Route>
        </Switch>
    </BrowserRouter>
  )
}

export default App
