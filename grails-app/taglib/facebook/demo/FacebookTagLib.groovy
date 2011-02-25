package facebook.demo

import grails.converters.JSON

class FacebookTagLib {
  def facebookGraphService
      def fbBasicInfo = { attrs ->
        if (session.facebook) {
          def myInfo = JSON.parse (facebookGraphService.getFacebookProfile().toString() )
           out << "Welcome " << myInfo.first_name +" "+myInfo.last_name 
         out << "<br /><img src='${facebookGraphService.getProfilePhotoSrc(myInfo.id);}'/>"
          out << "<br/>"


        } else {
          out << "Not logged in to Facebook"
        }
    }
    def fbInfo = { attrs ->
        if (session.facebook) {
          def myInfo = JSON.parse (facebookGraphService.getFacebookProfile().toString() )
           out << """<table>
            <tr><th>Name</th><th>Value</th></tr>
            """
          out << "<tr> <td>Id</td><td>" << myInfo.id + "</td></tr>"
          out << "<tr> <td>First Name:</td><td>" << myInfo.first_name +"</td></tr>"
          out << "<tr> <td>Last Name:</td><td>" << myInfo.last_name +"</td></tr>"
          out << "<tr> <td>Gender:</td><td>" << myInfo.gender +"</td></tr>"
          out << "<tr> <td>Timezone:</td><td>" << myInfo.timezone  +"</td></tr>"
          out << "<tr> <td>Home Town:</td><td>" << myInfo?.hometown?.name +"</td></tr>"
          out << "<tr> <td>Link:</td><td>" << myInfo.link  +"</td></tr>"
          out << "<tr> <td>Photo:</td><td>" << "<img src='${facebookGraphService.getProfilePhotoSrc(myInfo.id);}'/>" +"</td></tr>"
          out << "</table>"


        } else {
          out << "Not logged in to Facebook"
        }
    }

  def fbFriendsInfo = { attrs ->
        if (session.facebook) {
          def myInfo = JSON.parse (facebookGraphService.getFriends().toString() )
           out << """<table>
            <tr><th>Id</th><th>Name</th></tr>
            """
          myInfo["data"].each{
            out << "<tr> <td>" << it.id + "</td><td>" + it.name +"</td></tr>"
          }
          out << "</table>"


        } else {
          out << "Not logged in to Facebook"
        }
    }

}