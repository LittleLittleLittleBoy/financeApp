import app
from flask_script import Manager


manager = Manager(app.createApp('runing'))
manager.run()