import React from "react";

const Subs = (props) => {
  const {subs} = props  //pulls of keys from props...same as const subs = props.sub

  const renderSubs = () => {
    return subs.map(sub => {
      return(
        <div className="sub-container">
          <h2>{sub.name}</h2>
          <a href={`/subs/${sub.id}`}>Show</a>
        </div>
      )
    })
  }
  return (
    <div className="viewport">
      <h1>Subs Page</h1>
      <div className="subs-container">
        {renderSubs()} 
      </div>
    </div>
    
  )
};

export default Subs;