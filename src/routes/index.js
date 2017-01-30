import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, browserHistory } from 'react-router'; // FR Addes IndexRoute
import App from '../components/App';
import Home from '../components/Home';
import PageNotFound from '../components/PageNotFound';
import ExampleComponent from '../components/ExampleComponent';
import ExampleTwoDeepComponent from '../components/ExampleTwoDeepComponent';
import PhotosComponent from '../components/PhotosComponent';
import { onPhotosEnter } from './route_callbacks';
import store from '../store';

export default (
  <Provider store={store}>
    <Router history={browserHistory}>
      <Route path="/incertae-sedis" mapMenuTitle="Home" component={App}>
        <IndexRoute component={Home} />
        <Route path="/incertae-sedis/photos" mapMenuTitle="Photos" component={PhotosComponent} onEnter={onPhotosEnter} />
        <Route path="/incertae-sedis/example" mapMenuTitle="Example" component={ExampleComponent}>
          <Route path="/incertae-sedis/example/two-deep" mapMenuTitle="Two Deep" component={ExampleTwoDeepComponent} />
        </Route>
        <Route path="*" mapMenuTitle="Page Not Found" component={PageNotFound} />
      </Route>
    </Router>
  </Provider>
);