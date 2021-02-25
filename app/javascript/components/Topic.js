import React from "react";

const Topic = (props) => {
  const {name, body, sub_id} = props.topic
  return(
    <div>
      <h1>{name}</h1>
      <p>{body}</p>
      <a href={`/subs/${sub_id}`}>Back to Sub Page</a>
    </div>
  )
}


export default Topic;