module Solutions.CountPlayers
    ( countPlayers
    ) where

import           EventStore

countPlayers = Projection {initState = 0, step = step', query = id}

step' state event = when (event |> payload)
  where
    when PlayerHasRegistered {} = state + 1
    when _ = state
