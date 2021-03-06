
import React from "react";

const Sub = (props) => {
  const {topics, sub} = props
  const {name, id} = sub

  const renderTopics = () => {
    return topics.map(topic => {
      return(
        <div className="sub-container">
          <h2>{topic.name}</h2>
          <p>{topic.body}</p>
          {/* <p>{topic.sub_id}</p> */}
          <a href={`/subs/${topic.sub_id}/topics/${topic.id}`}>Show Topic</a>
          <a href={`/subs/${topic.sub_id}/topics/${topic.id}/edit`}>Edit</a>
          <a href={`/subs/${topic.sub_id}/topics/${topic.id}`} data-method="delete">Delete</a>
        </div>
      )
    })
  }
  return(
    <div className="viewport">
      <h1>{sub.name}</h1>
      <a href={/subs/}>Back to Subs</a>
      <a href={`/subs/${sub.id}/topics/new`}>Create New Topic</a>
      <div className="subs-container">
        {renderTopics()}
      </div>
    </div>
  )
};

export default Sub;