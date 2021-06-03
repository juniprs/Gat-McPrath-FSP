import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';
import * as ApiUtil from './util/session_api_util';

document.addEventListener('DOMContentLoaded', () => {
    // let store;
    // if (window.currentUser) {
    //     const preloadedState = {
    //         session: { id: window.currentUser.id },
    //         entities: {
    //             users: { [window.currentUser.id]: window.currentUser }
    //         }
    //     };
    //     store = configureStore(preloadedState);
    //     delete window.currentUser;
    // } else {
    //     store = configureStore();
    // }
    let store = configureStore();
    window.getState = store.getState;
    window.dispatch = store.dispatch;
    window.login = ApiUtil.login;
    window.logout = ApiUtil.logout;
    window.signup = ApiUtil.signup;
    const root = document.getElementById('root');
    ReactDOM.render(<Root store={store} />, root);
});