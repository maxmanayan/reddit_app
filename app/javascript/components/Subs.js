import React from "react";

const Subs = (props) => {
  const {subs} = props  //pulls of keys from props...same as const subs = props.sub

  const renderSubs = () => {
    return subs.map(sub => {
      return(
        <div>
          <h1>{sub.name}</h1>
        </div>
      )
    })
  }
  return (
    <div>
      <h1>Subs Page</h1>
      {renderSubs()}
    </div>
    
  )
};

export default Subs;