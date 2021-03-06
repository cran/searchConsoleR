% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auth.R
\name{scr_auth}
\alias{scr_auth}
\title{Do OAuth2 authentication}
\usage{
scr_auth(token = NULL, email = NULL)
}
\arguments{
\item{token}{Where you want to save the auth file, or an existing token or file location of a token to authenticate with}

\item{email}{An email you have authenticated with previously}
}
\description{
Do OAuth2 authentication
}
\details{
Run this function first time to authenticate with Google in your browser.  

After initial authentication, a \code{sc.oauth} will be saved to your working directory, where your authentication details are kept.  Keep this file safe.

If you want to reauthenticate, delete this file from your directory or run \code{scr_auth(new_user = TRUE)}
}
\section{Multiple accounts}{


You can authenticate with a new auth file for each account. Supply argument \code{token} with the name of the cache file you want to use e.g. \code{scr_auth(token = "one.httr-oauth")} for one account, 
  \code{scr_auth(token = "another.httr-oauth")} for a different account.
}

\section{Auto-authentication}{


You can choose to auto-authenticate by moving your \code{sc.httr-oauth} or by 
  creating a Google OAuth service account JSON file.

Specify an environment variable in R via a \code{.Renviron} file or using \link{Sys.setenv} which point to the file location of your chosen authentication file.  See \link{Startup}

Once you have set the environment variable \code{SC_AUTH_FILE} to a valid file location,
  the function will look there for authentication details upon loading the library meaning 
  you will not need to call \code{scr_auth()} yourself as you would normally.

An example \code{.Renviron} file is below:

\code{SC_AUTH_FILE = "/Users/bob/auth/sc.oauth"}

\code{SC_AUTH_FILE} can be either a auth file for a token generated by \link[googleAuthR]{gar_auth} or
  service account JSON ending with file extension \code{.json}
}

\section{Your own Google Project}{


Be default the Google Project used is shared by all users, this is usually sufficient, but  
  you could choose to create your own Google Project and turn on the Webmaster APIs.

You can then download your own client JSON, and set by placing in the \code{GAR_CLIENT_JSON} environment argument.  See \link[googleAuthR]{gar_set_client} for details.
}

\section{Service accounts}{

  
If you use the service account JSON, you will need to add the service account email 
  to your Search Console users to see data e.g. \code{xxxx@yyyyyy.iam.gserviceaccount.com}
}

\seealso{
\code{\link[googleAuthR]{gar_auth}}
}
