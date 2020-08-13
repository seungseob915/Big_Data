import urllib.request

def makeURL(sNode, search_text ):
    base = "https://openapi.naver.com/v1/search"
    node = "/%s.xml" % sNode
    parameters = "?query=%s" % urllib.parse.quote(search_text)    #urllib.parse.quote() 함수는 url에 한글이나 공백이 들어갈 수 없기 때문에 인코딩해주는 작업을 해줌
    url = base + node + parameters
    return url

def requestURL(url):
    req = urllib.request.Request(url) 
   
    client_id ="W21JlGTkb63rygCRE0bI"
    client_secret = "P1ShtypGJu"

    req.add_header("X-Naver-Client-Id", client_id)  # open api 키를 header에 추가
    req.add_header("X-Naver-Client-Secret", client_secret)  # open api 키를 header에 추가
    try:
        response = urllib.request.urlopen(req)  # 크롤링
        if response.status == 200:  # 200이면 정상 응답
            print("Url Request Success")
            data = response.read().decode('utf-8')
            return data  # 크롤링 결과 반환
    except Exception as e:  # url로 요청 중 오류가 발생 시 실행
        print(e)
        print("Error for URL : %s" %url)
        return None


def main():
    sNode = 'news'  # 'news', 'blog', 'cafearticle'
    search_text = input(">검색할 키워드를 입력하세요. : ")

    targetURL = makeURL(sNode, search_text )    #1. URL 만들기
    result = requestURL(targetURL)               #2. URL로 크롤링
    print(result)                                 #3. 크롤링 결과 출력


main()
