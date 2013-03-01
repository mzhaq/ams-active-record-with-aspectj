package com.zhaq.ams.web;

import com.zhaq.ams.domain.Person;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("searchPerson")
public class SearchController {

    @RequestMapping(method = RequestMethod.GET)
    public
    @ModelAttribute("message")
    String getInitialMessage() {
        return "Enter Search Details Please!";
    }

    @RequestMapping(method = RequestMethod.POST)
    public
    @ModelAttribute("message")
    String getGreeting(@RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName, @RequestParam("phoneNumber") String phoneNumber) {
        List<Person> players = Person.findPersonByDetails(firstName, lastName, phoneNumber);
        if (players != null) {
            String searchResult = "Found...\n ";

            for (int index = 0; index < players.size(); index++) {
                String unitNumber = players.get(index).getAddress().getUnitNumber();
                if (unitNumber != null || unitNumber != "") {
                    unitNumber = unitNumber + "/";
                }

                searchResult = searchResult + index + ": " +
                        players.get(index).getFirstName() + " " +
                        players.get(index).getLastName() + ", " +
                        players.get(index).getPhoneNumber() + ", " +
                        unitNumber +
                        players.get(index).getAddress().getStreetNumber() + ", " +
                        players.get(index).getAddress().getStreetName() + ", " +
                        players.get(index).getAddress().getCity() + ", " +
                        players.get(index).getAddress().getState() + ", " +
                        players.get(index).getAddress().getCountry() + ", " +

                        "\n";
            }
            return searchResult;
        } else {
            return "Person not found!";
        }
    }
}