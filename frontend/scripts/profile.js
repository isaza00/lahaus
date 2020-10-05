var text = '{ "property": "Casita Marinela", ' +
'"publicationDate": "2012-04-23T18:25:43.511Z", ' +
'"visits": "32"}';

$(function () {
  const obj = JSON.parse(text);
  const publicationDate = new Date(obj.publicationDate)
  const year = publicationDate.getFullYear()
  const month = publicationDate.getMonth()
  const day = publicationDate.getDay()
  const currentDate = new Date(Date.now())
  const timeElapsed = currentDate.getTime() - publicationDate.getTime()
  const daysElapsed = Math.round(timeElapsed/24/60/60/1000);
  document.getElementById("name").innerHTML +=  
  '<td> ' + obj.property + ' </td>';
  document.getElementById("publicationDate").innerHTML +=  
  '<td> ' + day + '/' + month + '/' + year + ' </td>';
  document.getElementById("visits").innerHTML +=  
  '<td> ' + obj.visits + ' </td>';
  document.getElementById("daysOnline").innerHTML +=  
  '<td>' + daysElapsed + ' </td>';
});
