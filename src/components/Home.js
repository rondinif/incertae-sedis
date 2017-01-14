import React from 'react';
import Interactive from 'react-interactive';
import { Link } from 'react-router';
import s from '../styles/home.style';

function Home() {
  const repoReadmeLink = text => (
    <Interactive
      as="a"
      {...s.link}
      href="https://github.com/rondinif/incertae-sedis#readme"
    >{text}</Interactive>
  );

  return (
    <div>
      <p style={s.p}>
        This is an example single page app built
        with React and React&nbsp;Router using {' '}
        {s.code('browserHistory')}. Navigate with the links below and
        refresh the page or copy/paste the url to test out the redirect
        functionality deployed to overcome GitHub&nbsp;Pages incompatibility
        with single page apps (like this one).
      </p>
      <p style={s.p}>
        Please see the {repoReadmeLink('repo readme')} for instructions on how to
        use this boilerplate to deploy your own single page app using GitHub Pages.
      </p>
      <div style={s.pageLinkContainer}>
        <Interactive
          as={Link}
          {...s.link}
          to="/example"
        >Example page</Interactive>
      </div>
      <div style={s.pageLinkContainer}>
        <Interactive
          as={Link}
          {...s.link}
          to="/example/two-deep?field1=foo&field2=bar#boom!"
        >Example two deep with query and hash</Interactive>
      </div>
    </div>
  );
}

export default Home;
