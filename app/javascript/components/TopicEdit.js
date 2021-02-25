import React from "react";


const TopicEdit = (props) => {
  const {sub, topic} = props
  return(
    <div>
      <h1>Edit Form Page</h1>
      <form action={`/subs/${sub.id}/topics/${topic.id}`} method="post">
        <input type="hidden" name="_method" value="patch" />
        <p>name</p>
        <input defaultValue={topic.name} name="topic[name]" />
        <p>body</p>
        <input defaultValue={topic.body} name="topic[body]" />
        <button type="submit">Submit</button>
        <a href={`/subs/${sub.id}`}>Cancel</a>
      </form>
    </div>
  )
}


export default TopicEdit;