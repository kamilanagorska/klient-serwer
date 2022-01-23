import json
import os
from flask import Flask
import mysql.connector

mydb = mysql.connector.connect(
  host= os.environ.get("MYSQL_DB_HOST"),
  user=os.environ.get("MYSQL_DB_USER"),
  passwd=os.environ.get("MYSQL_ROOT_PASSWORD")
)

app = Flask(__name__)

@app.route("/artworks/")  
def get_artworks_json():
   dbcursor = mydb.cursor()
   dbcursor.execute("USE my_db")
   dbcursor.execute("SELECT images.artwork_id, images.artwork_url, artists.artist_name FROM images LEFT JOIN artists ON images.artist_id = artists.artist_id")
   result = []
   for e in dbcursor:
       result.append(dict(artwork_id=e[0],
                         artwork_url=e[1],
                         artist_name=e[2]))
   return json.dumps(result)

@app.route("/artworks/<artwork_id>")  
def get_artworkinfo_json(artwork_id):
   dbcursor = mydb.cursor()
   dbcursor.execute("USE my_db")
   dbcursor.execute(f"SELECT images.artwork_url, artists.artist_name FROM images LEFT JOIN artists ON images.artist_id = artists.artist_id WHERE images.artwork_id = {artwork_id}")
   result = dict()
   for e in dbcursor:
      result['artwork_url']=e[0]
      result['artist_name']=e[1]
   dbcursor.execute(f"SELECT rating FROM ratings WHERE artwork_id={artwork_id}")
   ratings = list(dbcursor)
   rating = round(sum([i[0] for i in ratings]) / len(ratings),2)
   result['rating']=rating
   dbcursor.execute(f"SELECT comment_date, comment_txt FROM comments WHERE artwork_id={artwork_id}")
   comments=[]
   for c in dbcursor:
      comments.append(dict(date=c[0].strftime("%m-%d-%Y"),
                           text=c[1]))
   result['comments'] = comments
   return json.dumps(result)

if __name__ == "__main__":
   app.run(port=9080, host='0.0.0.0')
