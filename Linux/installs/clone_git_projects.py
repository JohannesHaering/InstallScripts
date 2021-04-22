import git
import json
import os

def parseFolder(folder, basePath):
    basePath = os.path.join(basePath, folder['path'])
    if not os.path.exists(basePath):
        print("Create")
        print(basePath)
        os.mkdir(basePath)

    for el in folder['sub']:
        nextElement(el, basePath)

def parseRepo(repo, basePath):
    git.Git(basePath).clone(repo['url'])

def nextElement(element, basePath):
    if element['type'] == "folder":
        parseFolder(element, basePath)
    if element['type'] == "repo":
        parseRepo(element, basePath)

dirname = os.path.dirname(__file__)
filename = os.path.join(dirname, 'git_repos.json')

with open(filename) as file:
    data = json.load(file)

for element in data:
    nextElement(element, os.path.expanduser('~'))
