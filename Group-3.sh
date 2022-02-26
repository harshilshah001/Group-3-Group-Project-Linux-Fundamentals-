#SCRIPT : Find all image files in your file system with a size greater than 10 kb and which name contain any vowels. 
#Our Approach: 
#tasks:

#-user chooses the path where it needs to find the file
#-user can also choose to save the output file in another file
#-user enters file size; case to select size range
#-user chooses file extension; case to select extensions

#outline:

#-functions used
#-find command to filter file choices
#-while loop & case used

#!/bin/bash
path1=/home/swamishreeji/Pictures
path2=/home/swamishreeji/Music


function JPG {

	var22=$1
        var23=$2
        var24=$3
        path=$4

        find $path -type f -size $var22 -size $var23 -name "*[aeiouAEIOU]*.jpg" > $var24
        VAR1=$(cat $var24 | wc -l)
         if test "$VAR1" == 0
         then
		 echo
                 echo "Sorry No Result Found"
         else
		 echo "Your Output"
		 echo
                 cat $var24
         fi

}

function PNG {

	var25=$1
        var26=$2
        var27=$3
        pathp=$4

        find $pathp -type f -size $var25 -size $var26 -name "*[aeiouAEIOU]*.png" > $var27
	 VAR4=$(cat $var27 | wc -l)
         if test "$VAR4" == 0
         then
		 echo
                 echo "Sorry No Result Found"
         else
		 echo "Your Output"
		 echo
		 cat $var27
         fi
}

function main_menu {

echo
echo "Choose the path to find the image"
echo "Enter 1 to choose First path - $path1"
echo "Enter 2 to choose Second path - $path2"
echo "Enter 3 to Exit the program"
echo

}

main_menu

while : 
do
        read ch_path
        case $ch_path in
        1)
		echo
                echo "Select Size Range of Image"
		echo "Enter 1 for 10kb to 50kb"
                echo "Enter 2 for 50kb to 100kb"
                echo "Enter 3 for greater than 100kb"
                echo "Enter 4 for exit"
		echo

                read ch_size
                case $ch_size in
                1)
			echo
                        echo "Select Extension Type"
			echo "Enter 1 for extension type .jpg"
                        echo "Enter 2 for extension type .png"
			echo

                        read x
                        if test "$x" == 1; then
                                echo
				echo "Do you want to save the output in jp1.txt named file"
                                echo "Enter 1 To save the output in jp1.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                     echo "Saved Output in jp1.txt file"
				     echo
					JPG +10k -50k jp1.txt /home/swamishreeji/Pictures  
                                       
                                else
					echo
                                        JPG +10k -50k jp1.txt /home/swamishreeji/Pictures
                                     
                                fi
				main_menu

                        elif

                                test "$x" == 2
                        then
                                echo
				echo "Do you want to save the output in pn1.txt named file"
                                echo "Enter 1 To save the output in pn1.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        echo "Saved the output in pn1.txt file"
					echo
                                        PNG +10k -50k pn1.txt /home/swamishreeji/Pictures

                                else
					echo
                                        PNG +10k -50k pn1.txt /home/swamishreeji/Pictures
                                
                                fi
				main_menu

                        fi
                        ;;
                2)
                        echo
			echo "Select Extension Type"
			echo "Enter 1 for extension type .jpg"
                        echo "Enter 2 for extension type .png"
			echo

                        read x
                        if test "$x" == 1; then

                                echo
				echo "Do you want to save the output in jp2.txt named file"
                                echo "Enter 1 To save the output in jp2.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        echo "Saved the output in jp2.txt file"
					echo
                                        JPG +50k -100k jp2.txt /home/swamishreeji/Pictures
                                else
					echo
                                        JPG +50k -100k jp2.txt /home/swamishreeji/Pictures
                              
                                fi
				main_menu

                        elif test "$x" == 2; then
                                echo
				echo "Do you want to save the output in pn2.txt named file"
                                echo "Enter 1 To save the output in pn2.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        echo "Saved the output in pn2.txt file"
					echo
                                        PNG +50k -100k pn2.txt /home/swamishreeji/Pictures
                                else
					echo
                                        PNG +50k -100k pn2.txt /home/swamishreeji/Pictures      

                                fi
				main_menu

                        fi
                        ;;
                3)
                        echo
			echo "Select Extension Type"
			echo "Enter 1 for  extension type .jpg"
                        echo "Enter 2 for extension type .png"
			echo

                        read x
                        if test "$x" == 1; then
                                echo
				echo "Do you want to save the output in jp3.txt named file"
                                echo "Enter 1 To save the output in jp3.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        echo "Saved the output in jp3.txt file"
					echo
                                        JPG +100k -3000k jp3.txt /home/swamishreeji/Pictures
                                else
					echo
                                        JPG +100k -3000k jp3.txt /home/swamishreeji/Pictures
                                fi
				main_menu

                        elif test "$x" == 2; then
                                echo
				echo "Do you want to save the output in pn3.txt named file"
                                echo "Enter 1 To save the output in pn3.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                      
                                        echo "Saved the output in pn3.txt file"
					echo
                                        PNG +100k -3000k pn3.txt /home/swamishreeji/Pictures
                                else
					echo
                                        PNG +100k -3000k pn3.txt /home/swamishreeji/Pictures

                                fi
				main_menu

                        fi

                        ;;
                4)
                        exit
                        ;;
                *)
                        echo "Please Enter Valid Input and You can Enter again Valid Input among [1,2,3]"
			echo
                        ;;
                esac
                ;;
        2)
		echo
                echo "Select Size Range of the Image"
		echo "Enter 1 for 10kb to 50kb"
                echo "Enter 2 for 50kb to 100kb"
                echo "Enter 3 for greater than 100kb"
                echo "Enter 4 for  exit"
		echo
                
		read ch_size
                case $ch_size in
                1)
                        echo
			echo "Select Extension Type"
			echo "Enter 1 for extension type .jpg"
                        echo "Enter 2 for extension type .png"
			echo

                        read x
                        if test "$x" == 1; then

                                echo
				echo "Do you want to save the output in jp1_p2.txt named file"
                                echo "Enter 1 To save the output in jp1_p2.txt file"
                                echo "Enter 2 Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                       
                                        echo "Saved the output in jp1_p2.txt file"
					echo
                                        JPG +10k -50k jp1_p2.txt /home/swamishreeji/Music
                                else
					echo
                                        JPG +10k -50k jp1_p2.txt /home/swamishreeji/Music
                                fi
				main_menu

                        elif

                                test "$x" == 2
                        then

                                echo
				echo "Do you want to save the output in pn1_p2.txt named file"
                                echo "Enter 1 To save the output in pn1_p2.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        
                                        echo "Saved the output in pn1_p2.txt file"
					echo
                                        PNG +10k -50k pn1_p2.txt /home/swamishreeji/Music
                                else
					echo
                                        PNG +10k -50k pn1_p2.txt /home/swamishreeji/Music

                                fi
				main_menu

                        fi

                        ;;

                2)
                        echo
			echo "Select Extension Type"
			echo "Enter 1 for extension type .jpg"
                        echo "Enter 2 for extension type .png"
			echo

                        read x
                        if test "$x" == 1; then

                                echo
				echo "Do you want to save the output in jp2_p2.txt named file"
                                echo "Enter 1 To save the output in jp2_p2.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                   
                                        echo "Saved the output in jp2_p2.txt file"
					echo
                                        JPG +50k -100k jp2_p2.txt /home/swamishreeji/Music
                                else
					echo
                                        JPG +50k -100k jp2_p2.txt /home/swamishreeji/Music

                                fi
				main_menu

                        elif
                                test "$x" == 2
                        then

                                echo
				echo "Do you want to save the output in pn2_p2.txt named file"
                                echo "Enter 1 To save the output in pn2_p2.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                       
                                        echo "Saved the output in pn2_p2.txt file"
					echo
                                        PNG +50k -100k pn2_p2.txt /home/swamishreeji/Music
                                else
					echo
                                        PNG +50k -100k pn2_p2.txt /home/swamishreeji/Music
                     
                                fi
				main_menu

                        fi

                        ;;

                3)
                        echo
			echo "SElect Extension Type"
			echo "Enter 1 for  extension type .jpg"
                        echo "Enter 2 for  extension type .png"
			echo

                        read x
                        if test "$x" == 1; then
                                echo
				echo "Do you want to save the output in jp3_p2.txt named file"
                                echo "Enter 1 To save the output in jp3_p2.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                     
                                        echo "Saved the output in jp3_p2.txt file"
					echo
                                        JPG +100k -3000k jp3_p2.txt /home/swamishreeji/Music
                                else
					echo
                                        JPG +100k -3000k jp3_p2.txt /home/swamishreeji/Music
                                      
                                fi
				main_menu

                        elif test "$x" == 2; then
                                echo
				echo "Do you want to save the output in pn3_p2.txt named file"
                                echo "Enter 1 To save the output in pn3_p2.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                       
                                        echo "Saved the output in pn3_p2.txt file"
					echo
                                        PNG +100k -3000k pn3_p2.txt /home/swamishreeji/Music
                                else
					echo
                                        PNG +100k -3000k pn3_p2.txt /home/swamishreeji/Music

                                fi
				main_menu

                        fi

                        ;;
                4)
                        exit
                        ;;
                *)
                        echo "Please Enter Valid Input and You can Enter again Valid Input among [1,2,3]"
			echo
                        ;;
                esac
                ;;
        3)
                exit
                ;;
        *)
                echo "Please Enter Valid Input and You can Enter again Valid Input among [1,2,3]"
		echo
                ;;
        esac

done
