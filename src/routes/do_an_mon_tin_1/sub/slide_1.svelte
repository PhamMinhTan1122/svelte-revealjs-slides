<script>
  import Slide from "../../../component/slide.svelte";
  
</script>

<Slide animate>
  <div class="content">
    <h2 class="h2-padding">Ms Access</h2>
    <h2 class="h2-padding">Ms Access</h2>
  </div>
  <div class="subText">
  <h3 class="text-black text-xl">
    <span>Bài</span>
    <span>thuyết</span>
    <span>trình</span>
    <span>của</span>
    <span>nhóm</span>
    <span>3</span>
  </h3>  
</div>
</Slide>

<style>
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  /* body { */
  /*   display: flex; */
  /*   background: #000; */
  /*   min-height: 100vh; */
  /*   align-items: center; */
  /*   justify-content: center; */
  /* } */

  .content {
    position: relative;
    text-align: center;
  }

  .content h2 {
    color: #fff;
    font-size: 150px;
    font-weight: bold;
    position: absolute;
    left: 50%;
    transform: translate(-50%, -50%);
    white-space: nowrap;
  }

  .content h2:nth-child(1) {
    color: transparent;
    -webkit-text-stroke: 2px #38a852;
  }

  .content h2:nth-child(2) {
    color: #38a852;
    animation: animate 4s ease-in-out infinite;
  }

  @keyframes animate {
    0%, 100% {
      clip-path: polygon(
        0% 45%,
        16% 44%,
        33% 50%,
        54% 60%,
        70% 61%,
        84% 59%,
        100% 52%,
        100% 100%,
        0% 100%
      );
    }
    50% {
      clip-path: polygon(
        0% 60%,
        15% 65%,
        34% 66%,
        51% 62%,
        67% 50%,
        84% 45%,
        100% 46%,
        100% 100%,
        0% 100%
      );
    }
  }

  .subText {
    text-align: center;
    margin-top: 100px;
  }

  .subText h3 {
    color: #000;
    font-size: 24px;
    letter-spacing: 4px;
  }
 /* .highlight { */
 /*    display: inline-block; */
 /*    background-color: #ea4335; */
 /*    color: #fff; */
 /*    padding: 5px; */
 /*    text-align: center; */
 /*    border-radius: 20px; */
 /*  } */

  .subText span {
    text-align: center;
    font-size: 50px;
    -webkit-text-stroke-width: 1.25px;
    -webkit-text-stroke-color: #000;
    text-shadow: 0 0px #f3c623, 0 0px #f2aaaa;
    transform: translate(0, 100%) rotate(5deg);
    animation: jump 3s ease-in-out infinite;
    display: inline-block;
    color: #fff;
  }

  @keyframes jump {
    33% {
      text-shadow: 0 20px #f37121, 0 40px #f2aaaa;
    }
    50% {
    transform: translate(0, 0) rotate(-5deg);
      text-shadow: 0 0px #8fc0a9, 0 0px #84a9ac;
    }
    66.67% {
      text-shadow: 0 -20px #d54062, 0 -40px #8fc0a9;
    }
  }


  @media screen and (max-height: 200px) {
    .subText {
      transform: scale(0.3, 0.3);
    }
  }

  @media screen and (max-width: 576px) {
    .subText span {
      font-size: 20px;
    }
  }
</style>
