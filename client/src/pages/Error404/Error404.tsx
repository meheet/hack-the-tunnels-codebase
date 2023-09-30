import { Page } from "../../components";

import gif from './error-windows.gif'

function Error404() {
    return (
      <Page>
        <div className="error-page">
            <h1 className="Error-Title">404:Not Found</h1>
            <img src={gif} alt="Error-Gif" />. 
        </div>
      </Page>
    );
  }
  
  export default Error404;
  