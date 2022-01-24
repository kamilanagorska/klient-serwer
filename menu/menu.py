import json
import os
import requests
from flask import Flask, render_template


app = Flask(__name__)

services_domain = "" if (os.environ.get("SERVICES_DOMAIN") is None) else "." + os.environ.get("SERVICES_DOMAIN")
artworks_hostname = "127.0.0.1" if (os.environ.get("ARTWORKS_HOSTNAME") is None) else os.environ.get("ARTWORKS_HOSTNAME")
artworks_url = "http://{0}{1}:9080".format(artworks_hostname, services_domain)

@app.route("/")  
def home():
   url = artworks_url + "/artworks/"
   result = requests.get(url).json()
   return render_template("index.html", artworks = result)

@app.route('/artworks/<artwork_id>')
def get_product(artwork_id):
   url = artworks_url + "/artworks/" + artwork_id
   result = requests.get(url).json()
   return render_template("artwork.html", artworkinfo=result)


if __name__ == "__main__":
   app.run(port=os.environ.get("MENU_PORT"), host='0.0.0.0')

