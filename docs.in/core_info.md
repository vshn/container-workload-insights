![alt text](/images/{{ pie_name}}.png "{{ tech_title }}")

|  {{ tech_title }} | Count |
| ------------ | ------------- |
{% for item in items %}
| {{ item.tech }} | {{ item.id_count }} |
{% endfor %}
