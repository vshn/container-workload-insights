

| Web Server | Count |
| ------------ | ------------- |
{% for item in web_servers %}
| {{ item.tech }} | {{ item.id_count }} |
{% endfor %}


![alt text](/images/webservers.png "Web Servers")