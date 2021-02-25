import React from "react";


const TopicNew = (props) => {
  const {sub} = props
  return(
    <div style={styles.container}>
      <h1>New Topic Form</h1>
      <form action={`/subs/${sub.id}/topics`} method="post">
        <p>name</p>
        <input name="topic[name]"/>
        <p>body</p>
        <input name="topic[body]" style={styles.input} />
        <button type="submit">add</button>
      </form>
    </div>
  )
};


const styles = {
  container: {
    backgroundColor:"aliceblue",
    margin: "20px",
    padding: "20px",
    border: "1px solid black"
  },
  input: {
    height:'40px'
  }
}


export default TopicNew;