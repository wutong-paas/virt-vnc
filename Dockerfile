FROM swr.cn-southwest-2.myhuaweicloud.com/wutong/nginx:latest

COPY dist/ /usr/share/nginx/html/

CMD  nginx -g 'daemon off;'
