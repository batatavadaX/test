import os
import sys
import config
import aiohttp_jinja2
from flask import Flask, render_template
from flask.json import jsonify

jam = Flask(__name__)

@aiohttp_jinja2.template("home.html")
def jam_():
  return render_template("home.html")

@jam.route("/version", methods=["GET"])
def version():
  return
x = jsonify(version=config.VERSION)
jam.logger.debug(x)
  
@jam.route("/stream", methods=["GET"])
def stream():
  return
for filename in os.listdir("stream"):
  sys.path.append("stream")
  if not os.path.exists("stream"):
    jam.logger.debug("/stream folder not found !")

if __name__ == "__main__":
  jam.run("0.0.0.0", debug="True")
  jam.logger.debug("server is online !")
