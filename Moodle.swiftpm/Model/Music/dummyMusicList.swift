import SwiftUI

// TODO: 이후 제거
let dummyMusicList: [Music] = [
    Music(lyrics: """
 여수 밤바다 이 조명에 담긴 아름다운 얘기가 있어
 네게 들려주고파 전활 걸어 뭐하고 있냐고
 나는 지금 여수 밤바다 여수 밤바다
 
 아 아 아 아 아 아 아
 
 너와 함께 걷고 싶다
 이 바다를 너와 함께 걷고 싶어
 이 거리를 너와 함께 걷고 싶다
 이 바다를 너와 함께 걷고 싶어
 
 여수 밤바다
 
 여수 밤바다 이 바람에 걸린
 알 수 없는 향기가 있어
 네게 전해주고파 전활 걸어 뭐하고 있냐고
 나는 지금 여수 밤바다 여수 밤바다
 
 아 아 아 아 아 아 아 아
 
 너와 함께 걷고 싶다
 이 바다를 너와 함께 걷고 싶어
 이 거리를 너와 함께 걷고 싶다
 이 바다를 너와 함께 너와 함께 오
 
 바다 이 조명에 담긴 아름다운 얘기가 있어
 네게 들려주고파 전활 걸어 뭐하고 있냐고
 나는 지금 여수 밤바다 여수 밤바다
 아 바다 아아아 하아아아 하아오오
 하 아아아 허오 아아아아
 
 뭐하고 있냐고 나는 지금 여수 밤바다
 """, hashtag: "#Autumn", title: "여수 밤바다", albumCover: Image("벚꽃 엔딩"), artist: "버스커 버스커", url: "여수밤바다"),
    Music(lyrics: """
안돼 그만둬 거기까지 해 
더 다가가면 너 정신 못 차려
안돼 그만해 꽃은 넣어둬 
그냥 좀 바람이 불게 놔줘

왜 그럴까 사람들은 그냥 봄기운이 좋아 
눈치 없이 밖을 나가는 걸까
왜 이럴까 뭐가 설렌다고 봄바람이 좋아 
내 맘도 모르고 더 불어와

flower sunshine 완벽한 하루를 
사실 너와 걸을 수 있다면 얼마나 좋을까
좋아한다고 말하기가 무서워서 
네 곁을 맴돌고 있는 난 
벚꽃도 뭐고 다 필요 없어 
나는 네 곁에 있고 싶어 딱 붙어서
봄이 지나갈 때까지 
다른 사람 다 사라져라 나만, 봄

왜 그럴까 사람들은 그냥 봄기운이 좋아 
눈치 없이 밖을 나가는 걸까
왜 이럴까 뭐가 설렌다고 봄바람이 좋아 
내 맘도 모르고 더 불어와

flower sunshine 완벽한 하루를 
사실 너와 걸을 수 있다면 얼마나 좋을까
좋아한다고 말하기가 무서워서 
네 곁을 맴돌고 있는 난 
벚꽃도 뭐고 다 필요 없어
나는 네 곁에 있고 싶어 딱 붙어서
봄이 지나갈 때까지 다른 사람 다 사라져라

언제 봄이 왔는지 내 맘도 모르고 
봄바람이 자꾸만 불어와
네 곁에 딱 붙어서 떨어지지 않고 싶어 
내 맘을 이제 말하고 싶어
벚꽃도 뭐고 다 필요 없어 나는 
네 곁에 있고 싶어 딱 붙어서
봄이 지나갈 때까지 다른 사람 
다 사라져라 나만, 봄
""", hashtag: "#Spring", title: "나만, 봄", albumCover: Image("나만봄"), artist: "볼빨간사춘기", url: "나만봄"),
    Music(lyrics: """
 나는 내가 빛나는 별인 줄 알았어요
 한 번도 의심한 적 없었죠
 
 몰랐어요 난 내가 벌레라는 것을
 그래도 괜찮아 난 눈부시니까
 
 하늘에서 떨어진 별인 줄 알았어요
 소원을 들어주는 작은 별
 
 몰랐어요 난 내가 개똥벌레라는 것을
 그래도 괜찮아 나는 빛날 테니까
 
 나는 내가 빛나는 별인 줄 알았어요
 한 번도 의심한 적 없었죠
 
 몰랐어요 난 내가 벌레라는 것을
 그래도 괜찮아 난 눈부시니까
 
 한참 동안 찾았던 내 손톱
 하늘로 올라가 초승달 돼 버렸지
 
 주워 담을 수도 없게 너무 멀리 갔죠
 누가 저기 걸어놨어 누가 저기 걸어놨어
 
 우주에서 무주에서 날아온
 밤하늘의 별들이 반딧불이 돼 버렸지
 
 내가 널 만난 것처럼 마치 약속한 것처럼
 나는 다시 태어났지 나는 다시 태어났지
 
 나는 내가 빛나는 별인 줄 알았어요
 한 번도 의심한 적 없었죠
 
 몰랐어요 난 내가 벌레라는 것을
 그래도 괜찮아 난 눈부시니까
 
 하늘에서 떨어진 별인 줄 알았어요
 소원을 들어주는 작은 별
 
 몰랐어요 난 내가 개똥벌레란 것을
 그래도 괜찮아 나는 빛날 테니까
 """, hashtag: "#Autumn", title: "나는 반딧불", albumCover: Image("나는 반딧불"), artist: "중식이", url: "나는반딧불"),
    Music(lyrics: """
 어떠니 잘 지냈니 지난 여름
 유난히도 힘에 겹더라 올핸
 새벽녘엔 제법 쌀쌀한
 바람이 어느덧
 니가 좋아하던 그 가을이 와
 
 사랑도 그러게 별 수 없나 봐
 언제 그랬냐는 듯 계절처럼
 변해가
 
 그리워져 미치도록 사랑한
 그날들이
 내 잃어버린 날들이
 참 많이 웃고 울었던
 그때 그 시절의 우리
 니가 떠올라 밤새
 
 참 아프다 니가 너무 아프다
 너를 닮은
 이 시린 가을이 오면
 보고 싶어서 너를 안고 싶어서
 가슴이 너를 앓는다
 
 어떠니 넌 괜찮니 지금쯤은
 나를 잊고 편안해졌니 이젠
 
 우습지 잘살길 바라면서도
 막상 날 잊었을 널 떠올리면
 서글퍼
 
 그리워져 미치도록 사랑한
 그날들이
 내 잃어버린 날들이
 참 많이 웃고 울었던
 그때 그 시절의 우리
 니가 떠올라 밤새
 
 참 아프다 니가 너무 아프다
 너를 닮은
 이 시린 가을이 오면
 보고 싶어서 너를 안고 싶어서
 가슴이 너를 앓는다
 
 너라는 계절 안에 살아
 여전히 너를 꿈꾸며 고마워져
 
 그 날들이
 내 지나버린 날들이
 추억은 짐이 아니라
 살게 하는 힘이란 걸
 가르쳐준 너니까
 
 또 설렌다 아프도록 설렌다
 너를 닮은
 눈부신 가을이 오면
 니가 떠올라 그리움이 차올라
 눈물로 너를 앓는다
 밤새 또 너를 앓는다
 """, hashtag: "#Autumn", title: "가을안부", albumCover: Image("가을안부"), artist: "먼데이키즈", url: "가을안부"),
    Music(lyrics: """
Yeah girl you should know that
That my heartbeats like
Huh Huh Huh Huh
From the bottom of my heart
I thank god I found you

Rap)
쿵쿵 가슴이 왜 이렇게 가쁘니 yeah
꾹꾹 참아도 자꾸 네 생각이 나잖아 oh
You You I love you and I know you love me too
네가 내게 불러 준 You're my boo

You 아직 꿈만 같아 And you 마치 선물 같아
For you 네 품에 안겨도 늘 불안불안 해 꿈처럼 깰까 봐
You 꼭 안아 줘야만 해 And you 아껴 줘야만 해
For you 큰 맘 먹고 네 꺼 돼준 걸 하늘에게 감사해

하얀 눈이 내려올 때면 온 세상이 물들을 때면
눈꽃이 피어나 또 빛이 나 눈이 부신 너처럼
사랑할 수 밖에 없어서 사랑한 네 손 잡고서
첫 눈 위를 걸어 발자국을 새겨
이 길 끝까지 걸어 갈 거야 With you


You 혹시 알고 있니 And you 느낄 수가 있니
For you 늘 자랑하고픈 네 여자친구가 되고만 싶은 걸
You 전부 다 주고 싶어 And you 잘 해주고 싶어
For you 다음 그 다음 해 겨울도 너의 곁에 있을게

하얀 눈이 내려올 때면 온 세상이 물들을 때면
눈꽃이 피어나 또 빛이 나 눈이 부신 너처럼
사랑할 수 밖에 없어서 사랑한 네 손 잡고서
첫 눈 위를 걸어 발자국을 새겨
이 길 끝까지 걸어 갈 거야 With you


매일 매일 너 때문에 행복해
다른 누구 아닌 나를 모두 가질 너만이 My love

Rap)
나도 믿기지 않아 지금 네가 내 옆에
이렇게 손 꼭 잡은 채 걷는다는 게
하얀 눈보다 더 뽀얀 네 볼에 키스해줄게 Baby
빨갛게 물들게 Baby

다가오는 크리스마스에는 기다리는 그 날만큼은
네 곁에 있을래 하루 종일 미리 미리 약속해
사랑할 수 밖에 없어서 사랑한 네 손 잡고서
첫 눈 위를 걸어 발자국을 새겨
이 길 끝까지 걸어 갈 거야 With you

Narr)
Girl you know
I can't even think without you in my life
Yeah Yeah I know that you know
That's my baby
""", hashtag: "#Winter", title: "미리 메리 크리스마스", albumCover: Image("미리메리크리스마스"),artist: "아이유", url: "미리메리크리스마스"),
Music(lyrics: """
    꽃이 언제 피는지
    그딴 게 뭐가 중요한데
    날씨가 언제 풀리는지
    그딴 거 알면 뭐 할 건데
    추울 땐 춥다고 붙어있고
    더우면 덥다고 니네 진짜 이상해
    너의 달콤한 남친은
    사실 피시방을 더
    가고 싶어하지 겁나 피곤하대
    
    봄이 그렇게도 좋냐 멍청이들아
    벚꽃이 그렇게도 예쁘디 바보들아
    결국 꽃잎은 떨어지지
    니네도 떨어져라
    몽땅 망해라
    
    아무 문제 없는데
    왜 나는 안 생기는 건데
    날씨도 완전 풀렸는데
    감기는 왜 또 걸리는데
    추울 땐 추워서 안생기고
    더우면 더워서 인생은 불공평해
    너의 완벽한 연애는
    아직 웃고 있지만
    너도 차일거야 겁나 지독하게
    
    봄이 그렇게도 좋냐 멍청이들아
    벚꽃이 그렇게도 예쁘디 바보들아
    결국 꽃잎은 떨어지지
    니네도 떨어져라
    몽땅
    
    손 잡지 마 팔짱 끼지 마
    끌어 안지 마
    제발 아무것도 하지 좀 마
    설레지 마 심쿵하지 마
    행복하지 마
    내 눈에 띄지 마
    
    봄이 그렇게도 좋냐 멍청이들아
    벚꽃이 그렇게도 예쁘디 바보들아
    결국 꽃잎은 떨어지지
    니네도 떨어져라
    몽땅 망해라 망해라 망해라 망해라
    """, hashtag: "#Spring", title: "봄이 좋냐?", albumCover: Image("봄이좋냐"), artist: "10CM", url: "봄이좋냐")
    ,Music(lyrics: """
Are you Ready?
Sistar and Brave Sound! We’re No.1
The illest collaboration! Let's get it started!!

I wanna rock! x3
Rock it like this (Hey!) rock it rock it like this (Sistar!)
Rock it like this (Hey!) rock it rock it like this (Party time!)
Rock it like this (Hey!) rock it rock it like this (Sistar!)
Rock it like this (Hey!) rock it rock it like this (Party time!)

웃기고 앉아있네 무슨 사랑이 장난이니
왜 자꾸만 맘대로 하는데
네가 뭐 그리 잘났는데 내 맘 아프게 하니
헛소린 집어치울래

난 빌고 빌었어 네가 네가 불행하라고
속상해서 그땐 그땐 그땐 정말 그랬어
난 빌고 빌었어 네가 네가 망가지라고
(It’s Party Time Party Time)
돌아보니 웃음만 나와

I feel so cool cool 눈을 씻고 찾아봐도
Cool Cool Cool 나만한 Girl 없을걸
I feel so cool cool 여기저기 둘러봐도
Cool Cool Cool 나 같은 Girl 없을걸

yeah I feel so cool cool yeah I feel so e e e
yeah I feel so cool cool yeah I feel so cool cool
yeah I feel so e e e yeah I feel so cool cool 난 괜찮아

I'm so cool like Ice-T 후회는 갖다 버려
priceless 세상의 반 반이 남자 너 때문에
나 나 울지않아 구차하게 너를 잡거나
매달릴 일은 절대 No! Let you know
1 thing straight. Hot보다 무서운게 Cool Cool Cool

난 빌고 빌었어 네가 네가 불행하라고
속상해서 그땐 그땐 그땐 정말 그랬어
난 빌고 빌었어 네가 네가 망가지라고
(It’s Party Time Party Time)
돌아보니 웃음만 나와

I feel so cool cool 눈을 씻고 찾아봐도
Cool Cool Cool 나만한 Girl 없을걸
I feel so cool cool 여기저기 둘러봐도
Cool Cool Cool 나 같은 Girl 없을걸

yeah I feel so cool cool yeah I feel so e e e
yeah I feel so cool cool yeah I feel so cool cool
yeah I feel so e e e yeah I feel so cool cool 난 괜찮아

Sistar Ah High so cool we're cool
uno dos tres cuatro !!
Sistar Ah High so cool we're cool

넌 다시 돌아갈 일 없을걸
날 붙잡지마 (Don't wanna be a fool)
초라한 둘보다 화려한 솔로가 좋아
나 이제 더 쿨 해질거야

Rock it like this (Hey!) rock it rock it like this (Sistar!)
Rock it like this (Hey!) rock it rock it like this (Party time!)
Rock it like this (Hey!) rock it rock it like this (Sistar!)
Rock it like this (Hey!) rock it rock it like this (Party time!)
""", hashtag: "#Summer", title: "So Cool", albumCover: Image("socool"), artist: "Sistar", url: "socool"),
    Music(lyrics: """
한 달 좀 덜 된 기억들 주머니에 넣은 채
걷고 있어 몇 시간을
혹시 몰라 네가 좋아했던 코트를 입은 채
나온 번화가 그때 마침
찬바람 막아줄 네가 이젠 없으니까
추울 때 따스히 안아줄 이가 없으니까
친구들이 불러도 나갈 수 없어 난
창문 너머 그저 바라봐 그때 마침
눈이 오잖아
우리 처음 만난 그 밤에도
한참 동안 눈이 왔잖아
지금 내가 생각나지 않을 리가 없잖아
눈이 오잖아
그때 내가 밤하늘 내린
하얀 눈 예쁘다 했잖아
그랬잖아 지금 눈이 오잖아
Uh 눈이 오잖아
이 말 핑계인 걸 알지만
생각에 잠기곤 해
거릴 거니는 내 곁에 아무도 없을 때
더 크게 들리네
Oh 눈 내리는 소리
이제 인정하자
수많은 끝도 끝났어
찬란한 그때의
우린 이젠 없으니까
돌아온 계절
남아있는 건 없으니까
추억을 지우는 게 내 이별의 숙제
창문 너머 그저 바라봐 그때 마침
눈이 오잖아
우리 처음 만난 그 밤에도
한참 동안 눈이 왔잖아
지금 내가 생각나지 않을 리가 없잖아
눈이 오잖아
그때 내가 밤하늘 내린
하얀 눈 예쁘다 했잖아
그랬잖아
지금 눈이 오잖아
마지막 안녕이 남은 거리에서 혼자
너와의 약속들을 되뇌었어
함께여야 할 너 없는 이 겨울의
첫눈이 오잖아
눈이 오지만
우리 처음 만난 그 밤에도
내렸던 그 눈이 오지만
주머니 속 챙겨 나온 기억
버려야만 해
눈이 오지만
우린 이대로의 모습으로
남아있는 게 맞지만
그래도 지금
그 눈이 오잖아
""", hashtag: "#Winter", title: "눈이 오잖아(Feat.헤이즈)", albumCover: Image("눈이오잖아"), artist: "이무진", url: "눈이오잖아")
    ,
    Music(lyrics: """
와우!! 여름이다

이게 뭐야 이 여름에 방 안에만 쳐박혀 있어
안되겠어 우리 그냥 이쯤에서 헤어져 버려

내 품에서 흘린 눈물 너만큼 나 힘이 들었어
잃어버린 너의 미소 찾을 수 없을까?
안녕하고 돌아서는 그건 아니잖아
사랑을 위한 여행을 하자 바닷가로

빨리 떠나자 야야야야 바다로
그동안의 아픔들 그 속에 모두 버리게
이게 아니야 우리 사랑했잖아
이젠 다시 눈물 없는 사랑으로 만들어봐

사랑하는 연인들이 바닷가를 걷고
난 쓸쓸히 바닷가를 혼자 걸어갈 때
앗 나처럼 혼자 걷는 여잘 보게 됐고
난 그 뒤를 하염없이 쫓아가게 됐어

어딜 갔어 이 밤중에 도대체가 이해가 안 돼
여기까지 여행 와서 나만 혼자 내버려두니

해변에서 만난 여인 많은 얘길 들려주었지
잃어버린 사랑으로 여기에 왔다고
돌아가면 나 역시도 혼자될 거라고
새벽이 오는 바다에 앉아 얘길 했지

해변의 여인 야야야야 그녀와
떠오르는 태양을 우리는 함께 본거야
기다리지 마 이제서야 만났어
이제 다시 이별 없는 사랑으로 만들 거야

해변의 여인 너와 함께 다시
돌아가는 길에 보았지
예전의 그녀 멋진 자동차에
어떤 남자가 함께 있는 걸
""", hashtag: "#Summer", title: "해변의 여인", albumCover: Image("해변의여인"), artist: "COOL", url: "해변의여인"),
    Music(lyrics: """
너만을 유혹하는 춤 (우우우 우우우우!)
심장에 매력 발산 중 (우우우 우우우우!)
손끝만 스쳐도 막 쿵쿵쿵쿵 Oh!
내 맘이 흔들려

Shake it shake it for me
Shake it shake it for me
나나나 나나나 나나나! (Hey!)
나나나 나나나 나나나! (Hey!)
짜릿한 이 느낌 날 춤을 추게 해
지금 이 순간 (Shake it)

Bae bae baby
Love me love me love me now
흔들리는 내 맘 모르겠니
So let's dance
Just shake it let's dance
좀 더 핫하게 완전 와일드하게
Make it louder 우우우
더 크게 make it louder 우우우
날 자꾸 흔들어 흔들어
놀라게 흔들어
(Shake it oh shake it)
밤새 나와 Shake it baby

아주 fun하고 smart하게 (흔들흔들어)
온몸이 찌릿찌릿 우리 둘이 (흔들흔들어)
심하게 통하니 여기 불났으니
When I Move 움직여 자리 잡았으니

Shake it shake it for me
Shake it shake it for me
나나나 나나나 나나나! (Hey!)
나나나 나나나 나나나! (Hey!)
짜릿한 이 느낌 날 춤을 추게 해
지금 이 순간 (Shake it)

Bae bae baby
Love me love me love me now
흔들리는 내 맘 모르겠니
So let's dance
Just shake it let's dance
좀 더 핫하게 완전 와일드하게
Make it louder 우우우
더 크게 make it louder 우우우
날 자꾸 흔들어 흔들어
놀라게 흔들어
(Shake it oh shake it)
밤새 나와 Shake it baby

Shake it oh shake it
Shake it up shake it for me
Shake it oh shake it
Shake it up shake it for me
Shake it oh shake it
Shake it up shake it for me
Shake it oh shake it
Shake it up shake it for me

Shake it for me my baby
Shake it for me my baby

그렇게 모두 모여 dance
Just shake it let's dance
좀 더 핫하게 완전 와일드하게
Make it louder 우우우
더 크게 make it louder 우우우
날 자꾸 흔들어 흔들어
놀라게 흔들어
(Shake it oh shake it)
밤새 나와 Shake it baby
""", hashtag: "#Summer", title: "SHAKE IT", albumCover: Image("shakeit"), artist: "Sistar", url: "shakeit"),
    Music(lyrics: """
 그대여 그대여 그대여 그대여
 
 오늘은 우리 같이 걸어요 이 거리를
 밤에 들려오는 자장노래 어떤가요 오예
 몰랐던 그대와 단 둘이 손 잡고
 알 수 없는 이 떨림과 둘이 걸어요
 
 봄바람 휘날리며
 흩날리는 벚꽃 잎이
 울려 퍼질 이 거리를
 우우 둘이 걸어요
 
 봄바람 휘날리며
 흩날리는 벚꽃 잎이
 울려 퍼질 이 거리를
 우우 둘이 걸어요
 
 오예
 
 그대여 우리 이제 손 잡아요 이 거리에
 마침 들려오는 사랑 노래 어떤가요 오예
 사랑하는 그대와 단 둘이 손잡고
 알 수 없는 이 거리를 둘이 걸어요
 
 봄바람 휘날리며
 흩날리는 벚꽃 잎이
 울려 퍼질 이 거리를
 우우 둘이 걸어요
 
 봄바람 휘날리며
 흩날리는 벚꽃 잎이
 울려 퍼질 이 거리를
 우우 둘이 걸어요
 
 바람 불면 울렁이는 기분 탓에 나도 모르게
 바람 불면 저편에서 그대여 니 모습이 자꾸 겹쳐
 오 또 울렁이는 기분 탓에 나도 모르게
 바람 불면 저편에서 그대여 니 모습이 자꾸 겹쳐
 
 사랑하는 연인들이 많군요
 알 수 없는 친구들이 많아요
 흩날리는 벚꽃 잎이 많군요 좋아요
 
 봄바람 휘날리며
 흩날리는 벚꽃 잎이
 울려 퍼질 이 거리를
 우우 둘이 걸어요
 
 봄바람 휘날리며
 흩날리는 벚꽃 잎이
 울려 퍼질 이 거리를
 우우 둘이 걸어요
 
 그대여 그대여 그대여 그대여
 """, hashtag: "#Spring", title: "벚꽃 엔딩", albumCover: Image("벚꽃 엔딩"), artist: "버스커 버스커", url: "벚꽃엔딩"),
    Music(lyrics: """
널 품기 전 알지 못했다
내 머문 세상 이토록 찬란한 것을

작은 숨결로 닿은 사람
겁 없이 나를 불러준 사랑

몹시도 좋았다
너를 지켜보고 설레고
우습게 질투도 했던
평범한 모든 순간들이

캄캄한 영원
그 오랜 기다림 속으로
햇살처럼 니가 내렸다

널 놓기 전 알지 못했다
내 머문 세상 이토록 쓸쓸한 것을

고운 꽃이 피고 진 이 곳
다시는 없을 너라는 계절

욕심이 생겼다
너와 함께 살고 늙어가
주름진 손을 맞잡고
내 삶은 따뜻했었다고

단 한번 축복
그 짧은 마주침이 지나
빗물처럼 너는 울었다

한번쯤은 행복하고 싶었던 바람
너까지 울게 만들었을까

모두 잊고 살아가라
내가 널 찾을 테니
니 숨결 다시 나를 부를 때

잊지 않겠다
너를 지켜보고 설레고
우습게 질투도 했던
니가 준 모든 순간들을

언젠가 만날
우리 가장 행복할 그날
첫눈처럼 내가 가겠다

너에게 내가 가겠다
""", hashtag: "#Winter", title: "첫눈처럼 너에게 가겠다", albumCover: Image("첫눈처럼너에게가겠다"), artist: "에일리", url: "첫눈처럼너에게가겠다")
]   
