<?php
$conn = getConn();
?>
<section class="text-gray-600 body-font min-h-screen-90" data-aos="flip-down"
         data-aos-easing="linear"
         data-aos-duration="500">
    <div class="container px-5 py-24 mx-auto">
        <div class="flex flex-col text-center w-full mb-20">
            <h1 class="text-4xl text-center font-bold text-gray-900 lg:text-center">En quelques chiffres</h1>
            <p class="lg:w-2/3 mx-auto leading-relaxed text-base"></p>
        </div>
        <div class="flex flex-wrap -m-4 text-center">
            <div class="p-4 md:w-1/3 sm:w-1/2 w-full">
                <div class="border-2 border-gray-200 px-4 py-6 rounded-lg">
                    <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="text-indigo-500 w-12 h-12 mb-3 inline-block" viewBox="0 0 24 24">
                        <path d="M17 21v-2a4 4 0 00-4-4H5a4 4 0 00-4 4v2"></path>
                        <circle cx="9" cy="7" r="4"></circle>
                        <path d="M23 21v-2a4 4 0 00-3-3.87m-4-12a4 4 0 010 7.75"></path>
                    </svg>

                    <h2 class="title-font font-medium text-3xl text-gray-900"><?php
                        $SQL = "SELECT COUNT(*) FROM IMP_Client";
                        $result = $conn->query($SQL);
                        $row = $result->fetch_row();
                        echo $row[0];

                        ?></h2>
                    <p class="leading-relaxed">Client</p>
                </div>
            </div>
            <div class="p-4 md:w-1/3 sm:w-1/2 w-full">
                <div class="border-2 border-gray-200 px-4 py-6 rounded-lg">
                    <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="text-indigo-500 w-12 h-12 mb-3 inline-block" viewBox="0 0 24 24">
                        <path d="M8 17l4 4 4-4m-4-5v9"></path>
                        <path d="M20.88 18.09A5 5 0 0018 9h-1.26A8 8 0 103 16.29"></path>
                    </svg>
                    <h2 class="title-font font-medium text-3xl text-gray-900"><?php
                        $SQL = "SELECT COUNT(*) FROM IMP_Commande";
                        $result = $conn->query($SQL);
                        $row = $result->fetch_row();
                        echo $row[0];

                        ?></h2>
                    <p class="leading-relaxed">Commande</p>
                </div>
            </div>
            <div class="p-4 md:w-1/3 w-full">
                <div class="border-2 border-gray-200 px-4 py-6 rounded-lg">

                    <svg xmlns="http://www.w3.org/2000/svg"   fill="currentColor" class="text-indigo-500 w-12 h-12 mb-3 inline-block" viewBox="0 -960 960 960" ><path d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/></svg>

                    <h2 class="title-font font-medium text-3xl text-gray-900"><?php
                        $SQL = "SELECT ROUND(AVG(AVI_Note),1) FROM IMP_Avis";
                        $result = $conn->query($SQL);
                        $row = $result->fetch_row();
                        echo $row[0];

                        ?></h2>
                    <p class="leading-relaxed">Note Moyenne</p>
                </div>
            </div>
        </div>
    </div>
</section>