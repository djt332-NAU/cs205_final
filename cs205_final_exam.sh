# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Non-Legendary Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Defense: [VALUE]
# ======= END SUMMARY =======

# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.

# 001, Dalton Tippings, djt332, cs205_final
BEGIN{FS="\t"}
{
# If the pokemon is not legendary
if ($13=="False"){
# Add a count to the total of non-legendary pokemon
legTot+=1
# Add the hp given the if condition
HP+=$6
# Add the defense given the if condition
Def+=$8
}
}
END{
# Print Summary
print "======= SUMMARY OF POKEMON.DAT ======"
print "   Total Non-Legendary Pokemon: " legTot
print "   Avg. HP: " (HP/legTot)
print "   Avg. Defense: " (Def/legTot)
print "======= END SUMMARY ======="
}
