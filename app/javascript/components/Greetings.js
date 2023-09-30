import React, { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { fetchMessage } from '../redux/reducers/greetingSlice';

const Greetings = () => {
  const message = useSelector((state) => state.greeting.message);
  const dispatch = useDispatch();

  useEffect(() => {
    dispatch(fetchMessage());
  }, [dispatch]);

  // Check if message exists before accessing its properties
  console.log(message?.greeting);

  return (
    <div>
      <h2>Welcome to the future of React on Rails</h2>
      <p>{message?.greeting}</p>
    </div>
  );
};

export default Greetings;
