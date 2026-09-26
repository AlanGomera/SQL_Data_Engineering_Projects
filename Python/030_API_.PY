import requests

url = "https://jsonplaceholder.typicode.com/posts"

reponse = requests.get(url)

data = reponse.json()

print(data[:2])

parsed = []

for post in data:
    parsed.append({
        "post_id": post['id'],
        "user_id": post['userId'],
        "title": post['title']
    })

print(parsed[:2])    