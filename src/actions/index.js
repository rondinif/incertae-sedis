import axios from 'axios'

import {
  FETCH_PHOTOS
} from './types';

export function fetchPhotos() {
  const request = axios.get('//jsonplaceholder.typicode.com/photos?albumId=41');
  console.log('TRACE-POINT-001');
  return {
    type: FETCH_PHOTOS,
    payload: request
  }
}