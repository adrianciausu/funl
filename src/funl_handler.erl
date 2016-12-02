-module(funl_handler).

-include("funl_request.hrl").

-export([init/2]).

init(Req, Opts) ->
  tinymq:push("pending_requests", #funl_request{errCount=0, request=Req}),
  Req2 = cowboy_req:reply(200, [
    {<<"content-type">>, <<"text/plain">>}
  ], <<"Request queued!">>, Req),
  {ok, Req2, Opts}.