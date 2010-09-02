%module curl
%{
#include <curl/curl.h>
%}

/* type definations */
typedef int CURLoption;
typedef int CURLcode;

/* import constants */
%constant int CURL_GLOBAL_ALL = CURL_GLOBAL_ALL;
%constant int CURLOPT_URL = CURLOPT_URL;

/* import functions */
int curl_global_init(long flags);
void curl_global_cleanup();

CURL* curl_easy_init();
void curl_easy_cleanup(CURL* curl);
CURLcode curl_easy_setopt(CURL* curl, CURLoption opt, int v);
CURLcode curl_easy_setopt(CURL* curl, CURLoption opt, const char* v);
CURLcode curl_easy_perform(CURL* curl);
