
|  {{ tech_title }} | Count |
| ------------ | ------------- |
{% for item in items %}
| {{ item.tech }} | {{ item.id_count }} |
{% endfor %}


![alt text](/images/webservers.png "{{ tech_title }}")