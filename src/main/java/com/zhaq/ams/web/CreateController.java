package com.zhaq.ams.web;

import com.zhaq.ams.domain.Address;
import com.zhaq.ams.domain.Person;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
public class CreateController {

    @RequestMapping(value = "createPerson", method = RequestMethod.POST)
    public ModelAndView createPerson(@ModelAttribute("person") @Valid Person person,
                                     BindingResult bindingResult, Model uiModel,
                                     HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("person", person);
            person.setAddress((Address) httpServletRequest.getSession().getAttribute("address"));
            return new ModelAndView("createPerson", "person", person);
        } else {
            try {
                uiModel.asMap().clear();
                person.setAddress((Address) httpServletRequest.getSession().getAttribute("address"));
                person.persist();
                return new ModelAndView("createPerson", "person", person);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    @RequestMapping(value = "createAddress", method = RequestMethod.POST)
    public ModelAndView createAddress(@ModelAttribute("address") @Valid Address address, BindingResult bindingResult,
                                      Model uiModel, HttpServletRequest httpServletRequest) {
        ModelAndView modelAndView;
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("address", address);
            modelAndView = new ModelAndView("createAddress", "address", address);
            return modelAndView;
        } else {
            uiModel.asMap().clear();
            httpServletRequest.getSession().setAttribute("address", address);
            Person person = new Person();
            person.setAddress(address);
            modelAndView = new ModelAndView("createPerson", "person", person);
            return modelAndView;
        }
    }

    @RequestMapping(value = "home", method = RequestMethod.POST)
    public String gotoHomePOST() {
        return gotoHomeGET();
    }

    @RequestMapping(value = "home", method = RequestMethod.GET)
    public String gotoHomeGET() {
        return "home";
    }

    @RequestMapping(value = "createAddress", method = RequestMethod.GET)
    void init(Address address,
              BindingResult bindingResult, Model uiModel,
              HttpServletRequest httpServletRequest) {
        // do nothing
    }

    @RequestMapping(value = "updateAddress", method = RequestMethod.PUT)
    void update(Address address,
                BindingResult bindingResult, Model uiModel,
                HttpServletRequest httpServletRequest) {
        // do nothing
    }

    @RequestMapping(value = "createPerson", method = RequestMethod.GET)
    void init(Person person,
              BindingResult bindingResult, Model uiModel,
              HttpServletRequest httpServletRequest) {
        // do nothing
    }

    @RequestMapping(value = "updatePerson", method = RequestMethod.PUT)
    void update(Person person,
                BindingResult bindingResult, Model uiModel,
                HttpServletRequest httpServletRequest) {
        // do nothing
    }
}
