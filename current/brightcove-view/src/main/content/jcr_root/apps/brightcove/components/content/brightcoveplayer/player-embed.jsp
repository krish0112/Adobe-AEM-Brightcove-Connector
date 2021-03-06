<%--
 Adobe AEM Brightcove Connector

 Copyright (C) 2017 Coresecure Inc.

 Authors:
   Alessandro Bonfatti
   Yan Kisen
   Pablo Kropilnicki

 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.

 - Additional permission under GNU GPL version 3 section 7
 If you modify this Program, or any covered work, by linking or combining
 it with httpclient 4.1.3, httpcore 4.1.4, httpmine 4.1.3, jsoup 1.7.2,
 squeakysand-commons and squeakysand-osgi (or a modified version of those
 libraries), containing parts covered by the terms of APACHE LICENSE 2.0
 or MIT License, the licensors of this Program grant you additional
 permission to convey the resulting work.
--%>
<%@ page import="com.adobe.granite.license.ProductInfoService" %>
<%@ page import="com.adobe.granite.license.ProductInfo" %>
<%@include file="/apps/brightcove/components/shared/global.jsp" %>
<%--

Actual player code is separated into smaller script to make overlaying the implementation easier by setting this component is set as the resourceSuperType.


*** All page context variables are set in the parent script which should include /apps/brightcove/components/shared/component-global.jsp ***

Available Variables:

        - ${brc_componentID}
        - ${brc_account}
        - ${brc_videoID}
        - ${brc_playlistID}

        - ${brc_playerID}
        - ${brc_playerKey}
        - ${brc_playerDataEmbed}

        - ${brc_hasSize}
        - ${brc_width}
        - ${brc_height}

Brightcove Reference:

      - http://docs.brightcove.com/en/video-cloud/brightcove-player/guides/embed-in-page.html

--%>
<div id="container-${brc_componentID}" class="brightcove-container" data-playerid="${brc_componentID}" data-account="${brc_account}"
     data-player="${brc_playerID}"
     data-embed="${brc_playerDataEmbed}"
     data-usage="cms:aem${aemversion}:javascript"
     data-video-id="${brc_videoID}"
        <c:if test="${brc_hasSize}">
            data-width="${brc_width}px"
            data-height="${brc_height}px"
        </c:if>>
</div>
<cq:includeClientLib js="brc.html5-player"/>
