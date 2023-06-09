<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lessonWriting</title>
<link rel="stylesheet" href="${contextPath}/resources/css/global.css">
<link rel="stylesheet" href="${contextPath}/resources/css/lessonWriting.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/3e3bbde124.js" crossorigin="anonymous"></script>

</head>
<body>

    <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    
    
    
    <section class="allSection">
        <form action="">

            <div class="imgBox">
                이미지
            </div>

            <!-- input 박스 요소들 -->
            <div class="inputBox">

                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="mail"></ion-icon>
                    </span>
                    <input type="text" required>
                    <label>NAME</label>
                </div>

                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="lock-closed"></ion-icon>
                    </span>
                    <input type="text" required>
                    <label>LOCATION</label>
                </div>

                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="person"></ion-icon>
                    </span>
                    <input type="text" required>
                    <label>SOCIAL MEDIA</label>
                </div>

                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="person"></ion-icon>
                    </span>
                    <input type="text" required>
                    <label>MOTTO</label>
                </div>

                <div class="input-box inputBoxText">
                    <span class="icon">
                        <ion-icon name="person"></ion-icon>
                    </span>
                    <textarea name="" id="" cols="30" rows="10" required></textarea>
                    <label class="textLabel">TELL YOUR STROY</label>
                </div>

            </div>




            <div class="lessonCheckWrapper">

                <div class="genreWrapper">
                    <p id="genreP" class="">GENRE</p>
                    <div class="genreBox">
                        <table class="genreTable">
                            <tr>
                                <td>
                                    <input type="checkbox" id="ELECTRONIC" name="ELECTRONIC" value="ELECTRONIC">
                                    <label for="ELECTRONIC">ELECTRONIC</label>
                                </td>
                                <td>
                                    <input type="checkbox" id="AQUSTIC" name="AQUSTIC" value="AQUSTIC">
                                    <label for="AQUSTIC">AQUSTIC</label>
                                </td>
                                <td>
                                    <input type="checkbox" id="FOLK" name="FOLK" value="FOLK">
                                    <label for="FOLK">FOLK</label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <input type="checkbox" id="BLUES" name="BLUES" value="BLUES">
                                    <label for="BLUES">BLUES</label>
                                </td>

                                <td>
                                    <input type="checkbox" id="METAL" name="METAL" value="METAL">
                                    <label for="METAL">METAL</label>
                                </td>

                                <td>
                                    <input type="checkbox" id="JAZZ" name="JAZZ" value="JAZZ">
                                    <label for="JAZZ">JAZZ</label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <input type="checkbox" id="ROCK" name="ROCK" value="ROCK">
                                    <label for="ROCK">ROCK</label>
                                </td>

                                <td>
                                    <input type="checkbox" id="POP" name="POP" value="POP">
                                    <label for="POP">POP</label>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>


                <div class="lessonWrapper">
                    <p id="lessonP" class="">LESSON</p>
                    <div class="lessonBox">
                        <table class="lessonTable">
                            <tr>
                                <td>
                                    <input type="checkbox" id="GUITAR" name="GUITAR" value="GUITAR">
                                    <label for="GUITAR">GUITAR</label>
                                </td>
                                <td>
                                    <input type="checkbox" id="BASS" name="BASS" value="BASS">
                                    <label for="BASS">BASS</label>
                                </td>
                                <td>
                                    <input type="checkbox" id="KEYBOARD" name="KEYBOARD" value="KEYBOARD">
                                    <label for="KEYBOARD">KEYBOARD</label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <input type="checkbox" id="VOCAL" name="VOCAL" value="VOCAL">
                                    <label for="VOCAL">VOCAL</label>
                                </td>

                                <td>
                                    <input type="checkbox" id="SOUND" name="SOUND" value="SOUND">
                                    <label for="SOUND">SOUND</label>
                                </td>

                                <td>
                                    <input type="checkbox" id="COMPOSITION" name="COMPOSITION" value="COMPOSITION">
                                    <label for="COMPOSITION">COMPOSITION</label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <input type="checkbox" id="DRUM" name="DRUM" value="DRUM">
                                    <label for="DRUM">DRUM</label>
                                </td>

                                <td>
                                    <input type="checkbox" id="HORN" name="HORN" value="HORN">
                                    <label for="HORN">HORN</label>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                
            </div>








            
                        
            <!-- 장르 구역 -->
            <!-- <div class="genreBox">
                <span>장르</span>
                <hr>
                <table>
                    <tr>
                        <td>
                            <input type="checkbox" id="ELECTRONIC" name="genre1" value="ELECTRONIC">
                            <label for="ELECTRONIC">ELECTRONIC</label>
                        </td>
                        <td>
                            <input type="checkbox" id="AQUSTIC" name="genre2" value="AQUSTIC">
                            <label for="AQUSTIC">AQUSTIC</label>
                        </td>
                        <td>
                            <input type="checkbox" id="FOLK" name="genre3" value="FOLK">
                            <label for="FOLK">FOLK</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" id="BLUES" name="genre4" value="BLUES">
                            <label for="BLUES">BLUES</label>
                        </td> 
                        <td>
                            <input type="checkbox" id="METAL" name="genre5" value="METAL">
                            <label for="METAL">METAL</label>
                        </td>
                        <td>
                            <input type="checkbox" id="JAZZ" name="genre6" value="JAZZ">
                            <label for="JAZZ">JAZZ</label>
                        </td>
                       
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" id="ROCK" name="genre7" value="ROCK">
                            <label for="ROCK">ROCK</label>
                        </td>
                        <td>
                            <input type="checkbox" id="POP" name="genre8" value="POP">
                            <label for="POP">POP</label>
                        </td>
                    </tr>
                </table>
            </div> -->
                
                



            <!-- 레슨 구역 -->
            <!-- <div class="lessonBox">
                <span>레슨</span>
                <hr>
                <table>
                    <tr>
                        <td>
                            <input type="checkbox" id="GUITAR" name="lesson1" value="GUITAR">
                            <label for="GUITAR">GUITAR</label>
                        </td>
                        <td>
                            <input type="checkbox" id="BASS" name="lesson2" value="BASS">
                            <label for="BASS">BASS</label>
                        </td>
                        <td>
                            <input type="checkbox" id="KEYBOARD" name="lesson3" value="KEYBOARD">
                            <label for="KEYBOARD">KEYBOARD</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" id="VOCAL" name="lesson4" value="VOCAL">
                            <label for="VOCAL">VOCAL</label>
                        </td> 
                        <td>
                            <input type="checkbox" id="SOUND" name="lesson5" value="SOUND">
                            <label for="SOUND">SOUND</label>
                        </td>
                        <td>
                            <input type="checkbox" id="COMPOSITION" name="lesson6" value="COMPOSITION">
                            <label for="COMPOSITION">COMPOSITION</label>
                        </td>
                       
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" id="DRUM" name="lesson7" value="DRUM">
                            <label for="DRUM">DRUM</label>
                        </td>
                        <td>
                            <input type="checkbox" id="HORN" name="lesson8" value="HORN">
                            <label for="HORN">HORN</label>
                        </td>
                    </tr>
                </table>
            </div> -->

        </form>

        <div class="writingBtnBox">
            <button id="writingBtn">SUBMIT</button>
        </div>
    </section>



    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    
    <script src = "${contextPath}/resources/js/lessonWriting.js"></script>
</body>
</html>