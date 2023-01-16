`timescale 1ns / 1ps

module airfield_control_system(clk,passengers,weather,airfield,led1,led2);

input clk;
input weather; // weather conditions are favorable or unsuitable. 0 means bad weather
// The weather condition will act as a control input.
input [5:0] passengers; // capacity could be max 60
input airfield; // airfield availability , "is there a plane or not" 0 means available

output reg[2:0] led1; // led1 is the right led in the photo.
output reg[2:0] led2; //led2 is the left led in the photo. 

//Led1 has 2 color , led2 has 3 color.
// led[0] --> green (keep moving)
// led[1] --> red (wait)
// led[2] --> yellow ( keep moving but be careful)

initial begin

    led1[0] = 0; // In the first case, the airfield is not available and the led turns red.
    led1[1] = 1;
    led1[2] = 0;
    led2[0] = 0; // If led1 is red, led2 should light up red.
    led2[1] = 1;
    led2[2] = 0;
end
always @ (posedge clk)
begin
    if (airfield == 0) // runway available
    begin
        if ( weather == 1 )
        begin
            if ( passengers < 60) //its not emergency and 
            begin                 //could be only 1 plane
                led1[0] <= 1;
                led1[1] <= 0 ;    // We turned our LED1 on green 
                led2[2] <= 0;     // and LED2 on red.
                led2[0] <= 0;
                led2[1] <= 1;
                led2[2] <= 0;
            end
            else // if passengers > 60) // The waiting area is crowded,
            begin                       //so an emergency is declared.
                led1[0] <= 1;
                led1[1] <= 0; //Since there was no aircraft at the airport before,
                led1[2] <= 0; //although LED1 was green, LED2 turns yellow.
                led2[0] <= 0;
                led2[1] <= 0;
                led2[2] <= 1;
            end
       end
    end
    if (airfield == 0) 
    begin                  //If the weather conditions are not suitable,
        if (weather == 0 ) //take-off and landing are not allowed.
        begin
            led1[0] <= 0;
            led1[1] <= 1;
            led1[2] <= 0;
            led2[0] <= 0;
            led2[1] <= 1;
            led2[2] <= 0;
        end
    end
     if (airfield == 1) //there is plane at runway
     begin
        if (weather == 1)
        begin
            if (passengers > 60)
            begin
                led1[0] <= 0;
                led1[1] <= 0;
                led1[2] <= 1;
                led2[0] <= 0;
                led2[1] <= 1;
                led2[2] <= 0;
            end
            else //if passengers < 60) 
            begin
                led1[0] <= 0;
                led1[1] <= 1;
                led1[2] <= 0;
                led2[0] <= 0;
                led2[1] <= 1;
                led2[2] <= 0;
            end
       end
    end
  if (airfield == 1)
     begin
        if (weather == 0)
        begin
            led1[0] <= 0;
            led1[1] <= 1;
            led1[2] <= 0;
            led2[0] <= 0;
            led2[1] <= 1;
            led2[2] <= 0;
        end
    end    
end 
endmodule
