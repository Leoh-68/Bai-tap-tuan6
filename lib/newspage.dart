
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:readmore/readmore.dart';

 

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  Widget feedBox(String avatarUrl, String userName, String date,
    String contentText, String contentImg) {
    final number= Random().nextInt(100);
    final number2= Random().nextInt(1000);
    final number3= Random().nextInt(1000);
    int countN=0;   
  return Container(
    margin: EdgeInsets.only(bottom: 20.0),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      color: Color(0xFF262626),
    ),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(avatarUrl),
                radius: 25.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                      
                    ),
                    Row(
                      children: [
                        Text(
                      date,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(
                      Icons.public,
                      color: Colors.white,
                      size:16.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          if (contentText != "")
            
              _content(contentText),
              //style: TextStyle(color: Colors.white, fontSize: 16.0),
              
          
          SizedBox(
            height: 10.0,
          ),
          if (contentImg != "") Image.network(contentImg),
          SizedBox(
            height: 10.0,
        
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Row(
                  children:[
                  Icon(
                  Icons.thumb_up,
                  size:10.0,
                  color: Colors.white,
                ),
                  ],
                ),               
              ),
              Container(       
                padding: const EdgeInsets.all(4.0),       
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Row(
                  children:[
                  Icon(
                  Icons.favorite,
                  size:10.0,
                  color: Colors.white,
                ),
                  ],
                ),
                
              ),
              Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                ),
                child: Row(
                  children:[
                  Icon(
                  Icons.sentiment_very_satisfied_outlined,
                  size:10.0,
                  color: Colors.white,
                ),
                  ],
                ),               
              ),
              const SizedBox(width: 4.0),
              Expanded(
                child: Text(
                number.toString(),
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
              ), 
              Text(
                '${number2.toString()} bình luận ',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(width: 8.0),
              Text(
                '${number3.toString()} lượt chia sẻ',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.5,
            color: Color(0xFF505050),
          ),
          
          Row(
            children: [
              actionButton(Icons.thumb_up, "Thích", Color(0xFF505050)),
              actionButton(Icons.chat_bubble_outline, "Bình luận", Color(0xFF505050)),
              actionButton(Icons.share, "Chia sẻ", Color(0xFF505050)),
            ],
          )
        ],
      ),
    ),
  );
}
  Widget _content(String contentText)
  {
    return Container(
      child: ReadMoreText(
        contentText,
        trimLines: 3,
        textAlign: TextAlign.justify,
        trimMode: TrimMode.Line,
        trimCollapsedText: " Xem thêm ",
        trimExpandedText: " Thu gọn ",
        lessStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey[600],
        ),
        moreStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey[600],
        ),
        style: TextStyle(
          fontSize: 16,
          height: 2,
          color: Colors.white, 
        ),
      ),
    );
  }

  Widget storyTile(String avatarUrl, String storyUrl, String userName) {
  return Container(
    margin: EdgeInsets.only(right: 20.0),
    height: 144.0,
    width: 120.0,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(
          image: NetworkImage(storyUrl),
          fit: BoxFit.cover,
        )),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(avatarUrl),
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            userName,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 18.0,
            ),
          )
        ],
      ),
    ),
  );
}

  Widget actionButton(IconData icon, String actionTitle, Color iconColor) {
    return Expanded(
      child: FlatButton.icon(
       onPressed: () {},
        icon: Icon(
         icon,
          color: iconColor,
        ),
        label: Text(
          actionTitle,
          style: TextStyle(
            color: Colors.black,
         ),
       ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

  List<String> avatarUrl = [
    "https://pbs.twimg.com/profile_images/1300137889267937280/4zf4z8dg_400x400.jpg",
    "https://static.wikia.nocookie.net/kamenrider/images/8/8c/Horobi_Rebuilt.png",
    "https://static.wikia.nocookie.net/ultramananthology/images/5/51/Trigger_Multi_Type.png",
    "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/af8de697-78cf-4d19-aa04-448521cc7e95/ddzj24p-1b04fc18-b6cf-446d-8cca-62df20749197.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2FmOGRlNjk3LTc4Y2YtNGQxOS1hYTA0LTQ0ODUyMWNjN2U5NVwvZGR6ajI0cC0xYjA0ZmMxOC1iNmNmLTQ0NmQtOGNjYS02MmRmMjA3NDkxOTcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.F2unDVLP4MN6HgzDaIvReVfgE-BvZmvIcjJj69HzUus",
    "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAQEhUQEhIVFhIVFxUVFRASEhcXEBUXFREYFhcVFhUYHSggGholGxUVITEhJSkrLy4uFx8zODMtNyotLisBCgoKDg0OGxAQGzcmICU3Ky43LS0tLS03LS0tKy0tLS0tLS01LS0tLS0uLSstMC8tLS0tLS8tLS0tLi0tLS0tLf/AABEIAOEA4QMBEQACEQEDEQH/xAAbAAEAAQUBAAAAAAAAAAAAAAAAAQIEBQYHA//EAEEQAAIBAgEGDAQEAgsBAAAAAAABAgMRBQQGEiExURMiNEFhcXKBkaGxwjJCUtGCssHwYpIUIyQzQ1Njk6Kz4XP/xAAaAQEAAwEBAQAAAAAAAAAAAAAAAwQFAQIG/8QALxEBAAIBAgQFAwMFAQEAAAAAAAECAwQREiExM0FRYXGREyIyQoGxI1Kh0fDhQ//aAAwDAQACEQMRAD8A7QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAASosCtUmBPBATwSAcEgI4JAQ6XSBS4MCkAAAAAAAAAAAAAAAAAAAAACuNNgTOUILSk0ktspNJLvZyZiOcuTMRG8sRledGTw1R0pv8AhVo/zP8AS5XtqqR05qt9bjr05sRlGdlZ/BCEV03k/HUvIr21d56Qq21156Rt/lj62PZVL/Fl1RSjbwRHOfJPihnU5Z/Ut/6fXe2tV/3Jfc8Tkv5z8vE5bz+qfmRZdW/zan+5P7nPqX85+XPqX/un5l7U8XymOytPvlpfmueozZI8XqNRlj9UryhnPlMdrjPtRs/+NiSuqyR15pa63LHXmymS53QeqpTcemL0l4an6k9dZH6oWaa+s/lDN5Jl9GsuJOMuj5l1xetFmmSt/wAZW6ZaX/GXrKluPaRQ1YCAAAAAAplIBFc4FQAAAAAAAExjcCucowTlJpJbZN2S7zkzERvLkzERvLXMTzqSvGgr/wCpJavwx5+/wKeTV+FFDLrvDH8tayrKqlV6VSbk+l6l1LYu4p2va072ln3va872nd4nl5Q2BCQFQAAAAASm07rU1sa2rqYGcw3OWtTsqn9ZHp1VF+Ln7/Es49TavK3Ncxay9eVucNqyDEaWUK8JX3xeqUetfrsL2PJW8cmjjzUyRvWXtOnYkSqAAACHICmMd/7YFYAAAAAAAFcIXAtsUxSnk0by1yfwwXxS+y6SLLlrjjmhzZ64o5/DSMTxOrlErzepbIL4V930szcmW2SebIy5rZZ+74WRGiAAEWAkAAAAAAACWBVRqyg1KLcZLZJOzR2JmJ3h2tprO8NvwPONVLU61oz2KeyMuh7n5PyL+HUxblbq09Pq4t9t+rOzhuLa88gAEWAkAAAAAAACqEbgWWN4vHJo76j+GHul0evpDmzRjj1V9RqIxR6tFyivOpJzm25Pa36dC6DLtabTvLGtabTvbq8jjgAAAAAGdwHAOHjwk5OMLtJR+KVtru9ivq/euzg0/HHFPRc0+l+pHFboyWWZp03F8FKSlzKTvF9D1XXWT30ldvtT30Ndvtnm1GcWm01ZptNPamnZoz5jbkzJjadpQAAAAAADZ83MftajWerZCo+bdGT9GXdPqP02aGl1W32X+W0VIc5eaTyAAAAAAAApcgK4q4HjiuIRyam5vW9kY88nu+7I8uSMdd5RZssYq7y5/lOUTqSc5u8ntf6LcjJtabTvLEvebzxS8jjyAAJYEAAAHQc3OTUup/mZq4O3Db03aqyRMnc5xn+/q9uXqZGb85YWfuW91i2RokgAAAAAA2/NbGdK1Co+Mvgk/mS+V9K9OrXf02bf7LNPSajf7LdfBn6kecuL7zAAAAAAAA9VaKbbstrb2JITycmdmgY3iTyio5fItUFuW/re3w3GTmy/Utv4MTPmnLffw8GPIkIAAAAAAAB0HN3k1Ls+5mrg7cNvTdqrJEydznGuUVe3L1MjN3JYWfu291kRogAAAAAAFUJNNNOzTTTW1NbGhE7c4ImY5w6BgmIrKKSk/iXFmunf1Paa2HJ9Su7b0+b6tN/FcyViVOgAAAAAKqcbsDB54YhowVCL1z1y6IJ7O9+jKmrybRwx4qOty7V4I8f4aeZ7LADYAAAAAAAHQs3eTUuz7mauDtw29N2qsiTJ3Oca5RV7cvUyM3clhZ+7b3WRGiAAAA2AAAAMnm9iHAVk2+JO0Z7tb1S7n5Nk2DJwX9JWNNl+nf0lvlWPOaraeQAAAAAe1PUrgc5xTLHWqzqczfF6IrVHy197MfJfjtNmDmyfUvNlqeEaJMAogSAAAAAEnR0HN3k1Lq9zNTB24bem7VWRJk7nONcoq9uXqZGbuSws/dt7rIjRAACGwISAqAAADA6Bm7lnDUItu8o8SXXHn71Z95q4L8dIbWmyceOJ8ei7asTLCAAACUgLPOXKeDyedtsuIvxan5X8CHUW4ccq+qvw4p9eTQDKYqGwISAqAAAAACQFwOgZu8mpdn3M1cHbht6btVZImTuc41yir25epkZu5LCz923usiNEAGwKUgKgAAAAA2LMzKdGpKnzTjpLri/1TfgW9Jba01XtDfa018211VrNBqKAAACqktYGuZ71/wC6p9qT8kvWRR1lukM7X2/GrVikzgAAAAAAAAAA6Dm7yal2fczVwduG3pu1VkiZO5zjXKKvbl6mRm7ksLP3be6yI0QAAAAAAAAAvMGraFelL+NJ9UuK/KTJMVuG8SlwW4clZdEqrUa7deIAAB6UQNMzvnfKLfTCK83L9TN1U/1GRrZ3y/swhWVAABF0HDSW84Gkt50NJbwGkt5wNJbwGkt4HQs3OTUuz7ma2Dtw3NN2qskTJ3OMaa/pFXty9TIzdyWFn7tvdZXRGhNJbzgaS3gNJbwGkt4DSW8CTrpcAAu1rW1a0Do6fpaUb70n+ptRO76GJ3jd5HXQAB60ecDRM55f2qp0aH/VEy9RP9Sf+8GLq5/rW/b+IYsgVwDN5r4ZCvOUpq8IW4vNJyva/QrPV0os6bFF5mZ8FvSYYyWmbdIbnHJ4LUoRS3KKsaPDHk1YrWPBPAQ+mPghtDvDHkOhD6Y+CG0HDHkhZPD6Y/yobQcMeSeAh9MfBDaDhjyOAh9MfBDaDhjyOAh9MfBDaDhjyVxSWpbNyOupAodGL+VeCObQ5wwjgIfTHwQ4YOGPI4CH0x8ENoOGPI4CH0x8ENoOGPI4CH0x8ENoOGPI4CH0x8ENoOGPI4CH0x8ENoOGPJhs5MHpzpSqRiozgnK8VbSS1tO23UV9RhrNZtHWFTVYKzSbRHOGkpGayQAB0nD3ehTe+nD8iNjH+EN7F+FfaEntIAAPWjzgaJnMv7VV/B/1RMrUd2f+8GLq+9b9v4hiyFXAM7mniMKM5Qm7Rna0nsTjfU9177egs6XJFZmJ8VzR5opaYt4t1TvrRpNZIAAAAAAAAAAAAAAAABhs5cShTpSp3TqTTiop60pKzk9ytcr6jLFazHjKrqs1a0mvjLRTMY4AA6ThytQpr/Th+RGxj/CP2b2L8K+0JPaQAAelEDS874Wyi/1Qi/WPtM3VR/UZGtjbL+0MKVlQAALBwDoAAAAAHQc3eTUuz7mauDtw29N2qskTJ3Oca5RV7cvUyM3clhZ+7b3WRGiAAAAAAJBwDoAa3bQ46eo6MUtyS8rG1EbQ+iiNo2eR10AAV0nrA1rPejrp1O1Fvwa9xR1leks3X1/GzVykzwABKQEAAAAABDYHQc2+TUuz7ma2Dtw29N2qsmSp3Oca5RV7cvUyM3clhZ+7b3WRGiAAACUgIAAAAF3hNHTr0o75xb6ovSfkmSYq8V4hJhrxZKw6HXnZGu3njG+0CoABKYFjnPk3CZPK22Fpr8O3/i5EGprxY59Oatq6cWKfTm0Iy2MASgDAgAAAAQ2BCQHQ83eTUuz7mauDtw29N2qskTJ3Oca5RV7cvUyM3clhZ+7b3WRGiAAEoAwIAAAAGfzOye9WVTmhGy7U/wDxS8S1pK72mfJd0NN7zbybXPb+9potUAAAAHrGzVn1NAc5xHJHRqTpv5Xq6Y7YvwaMfJTgtNWBlpwXmq2PDwlgQAAAAAEWAkDoObvJqXZ9zNXB24bem7VWSJk7nONcoq9uXqZGbuSws/dt7rIjRAACWBAAAAAAb5m1kPBUI32z48l1rUv5UjU09OGkerZ0uPgxxv481/J3J1lAAAAArpyswNfzyw+8VXitceLPst6n3N+fQU9Xj3jjhQ12LeOOPBqRQZgAAAAAAAAA6Dm7yal2fczVwduG3pu1VkiZO5zjXKKvbl6mRm7ksLP3be6yI0QAAAAAAABkcCyDh6yi1xFxp7rLm73q8SXDj477eCfT4vqX28G/1XqsazbeIAAAAAUuQHu4qcXGSummmnsaaszkxExtLkxExtLnuL4fLJ6jpvZthLfHm71sZk5cc47bMPNinFfhWRGiAAACWBAAAB0HN3k1Ls+5mrg7cNvTdqrJEydznGuUVe3L1MjN3JYWfu291i2RokgAAAAAAm3Mtr1JLa9wG/4Bhv8AR6Vn8cuNN9PNHqX3NXBi+nX1bWmw/Tpz6yu5O5MsIAAAAAABMZWAt8Zw2OU09HZJa4S3Pp6HzkWbFGSuyHPhjLXbxc/rUpQk4SVpRdmnzGVMTE7SxLVms7SoOOAAAAAAAOg5ucmpdXuZq4O3Db03aqyRMnc5xrlFXty9TIzdyWFn7lvdZEaIAAAAAABtOamD7MoqL/5xf53+njuLumw/rn9mjo9P/wDS37f7bLVlzF5ovMAAAAAAAABXTnbqAxuP4KsoWlGyqpanzSX0y+/MV8+CMkbx1VdTp4yxvHVo1am4ScZJqS1OL2ozZiYnaWRNZidpUnHAAAAAANizfx+NGPBVU9BNuMkr2u7tNbr32by3g1EUjhsvabVRjjht0ZPLM6aEYvg7zlzLRcY97aWrqJr6qkR9vNYvrccR9vOWmVJuTcm7uTbb3tu7M6Z3neWTMzM7ypAAAABsABsObuAuparVX9XtjB/P0v8Ah9erbbwafi+63Rd02l4vvv0/n/xt85W1I0Gq8QAAAAAAAAAABKq2/ewCyxbBoZSrvVNLi1EtfVJc6IcuGMkeqDPp65Y9fNpWX5BUoS0akbbpL4ZdTM2+O1J2lkZMVsc7WWx4RgAABJ0GcEAAAAABDYCEHJpJNt6kkm2+hI76Q7G88obbgebVrVK6u9qpbUumW99GzrLuHTbfdf4aOn0e33ZPj/bZJztsLrQeIAAAAAAAAAAAhv8AfMBSo3A9YysBNejCrFwnFSi/la/evpPNqxaNpebUi0bWhq+J5qyV5UHpL/Lk+N3S5+/xKWTSTHOjOy6GY50+Gu1qUoPRlFxkvlkrPzKkxMTtKjas1naYUHHEgLgQAAAAAEN2AyuG5vV62trQh9U1rfVHa++yLGPT3t6QtYtLe/pHq2/DMIo5OuKry56ktcn9l0IvY8NadGliwUx9Ovmu51NxKmeYAAAAAAAAAAAAAAAAB6RqbwKcoyenVWjOMZLdJXt1bjzasWjaYebUreNrRuwmV5p0pa6c5Qe58aPnr8ytbSVn8Z2U76Gk/jO3+WIyjNjKY/CozX8MrPwlb1K9tLkjpzVraLLHTmsKuF5RHbRqd0G14xuRzivHWEE4ckdayt5UZLbGS64tHjhnyeJrMeCFCW5+DG0m0vankNaWylUfVTlbxsdjHaekf4eoxXnpWfheUM3sqn/h6K3zkl5a35EsafJPglrpMs+DKZLmi9tWr+GmvdL7E1dH/dPwsU0H90/DOZFhNCjrjBaX1y1y8Xs7izTDSnSFzHgx4/xhdupuJUzzbuBAAAAAAAAAAAAAAAAAAAAAKlNgVKr0AVcKgHCICeEQEcIgIdXoApdRgUNgAAAAAuAAAAAAAAAAAAAAAAhoAkBIAAAAAAAAAAAAADAhICQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB//2Q==",
  ];
  List<String> storyUrl = [
    "https://1.bp.blogspot.com/-dAZYVntJIKs/X1EYM9bKGBI/AAAAAAAAwuc/BIFyv_ZdzJQqoSUg4cgW90n0REUzwhnKQCLcBGAsYHQ/s1920/Kamen-Rider-Zero-One-Aruto-Ja-Naito.jpg",
    "https://ss-images.saostar.vn/wp700/pc/1618584599248/saostar-l3a1en4ywav1245w.png",
    "https://c.tenor.com/HLRl6WaJJH4AAAAC/kamen-rider-zero-one-kamen-rider-horobi.gif",
    "https://scontent.fvca1-1.fna.fbcdn.net/v/t39.30808-6/242591003_436758061142056_8069626387764463091_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=0debeb&_nc_ohc=Rqihg0P6oXoAX8shHPo&_nc_ht=scontent.fvca1-1.fna&oh=b037088981461e1abbfeae848b3fea9c&oe=6193CBFA",
  ];
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: NetworkImage(avatarUrl[0]),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 25.0),
                                  hintText: "Bạn đang nghĩ gì?",
                                  filled: true,
                                  fillColor: Colors.grey,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide.none,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1.5,
                      ),
                      Row(
                        children: [
                          actionButton(
                              Icons.videocam, "Phát trực tiếp", Color(0xFFF23E5C)),
                          actionButton(
                              Icons.photo_library, "Ảnh", Color(0xFF58C472)),
                          actionButton(Icons.video_call, "Phòng họp mặt",
                              Color(0xFF6A1B9A)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 160.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    storyTile(avatarUrl[4], storyUrl[0], "Tạo tin"),
                    storyTile(avatarUrl[1], storyUrl[1], "Hổ Bi cuồng Ark"),
                    storyTile(avatarUrl[2], storyUrl[3], "Renbu Shima"),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              feedBox(avatarUrl[0], "Chủ tịch Aruto", "6 phút ",
                  "Hey! Aruto ja naitooo",storyUrl[0] ),
              feedBox(avatarUrl[1], "Hổ Bi cuồng Ark","7 phút ",
                  "Bang nhạc Metsubojinrai chính thức thành lập.", storyUrl[1]),
              feedBox(avatarUrl[2], "Renbu Shima", "một ngày trước ",
                  "The first entry of the Ultraman Series, Ultra Q, featured mankind encountering the giant monsters known as Kaiju. The series was released in 1966 by the special effects studio Tsuburaya Productions, which was founded in 1963 by special effects wizard Eiji Tsuburaya, the man who brought such monsters to life as the King of the Monsters himself, Godzilla"
                  , storyUrl[3]),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
