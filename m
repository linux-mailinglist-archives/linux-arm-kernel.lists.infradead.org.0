Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDB026089
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 11:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kclf010f7cGLmiwFOEoILNoJeK/JFbtVeVhTK5it3oI=; b=CQxMs82rMVfT77
	4GofXGdt++JcgA8UG45tYF5O+v7VLvaTIQj7ez8AG7A9Iqo9IvPbLQEOoicL0+zAm1hQ0ijP6L03x
	+ps/0QIb4Eg0J+B5QCVBr8e2BOXuF44f6UWu5cB1qr90NBTYSoOiXk2hCfQfOrTv6IQbQVZ1xH+5c
	K9SDKBAXHf1jJUTv4R1EvCSYJn1onRtuhWVNQSLE+VT67oofbMov/u5DFu27KDQ+iMtCfV13/xTH5
	cHLkkEX43+cZtalRoUM7p/Ul8BsxahSu4QfAkB92SV2gkxEdbpiXFfNEHCp2tIO5e/RQJT9bQjzV7
	6lbx1g91aQQMmprOIdvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNaO-0006Kv-1w; Wed, 22 May 2019 09:31:00 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNaE-0006Gh-6K; Wed, 22 May 2019 09:30:51 +0000
X-UUID: 2c07b653a6c744a896a6a6320cb54f45-20190522
X-UUID: 2c07b653a6c744a896a6a6320cb54f45-20190522
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 111888458; Wed, 22 May 2019 01:30:41 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 22 May 2019 02:30:39 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 22 May 2019 17:30:37 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 22 May 2019 17:30:36 +0800
Message-ID: <1558517436.10179.388.camel@mhfsdcap03>
Subject: RE: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Biju Das <biju.das@bp.renesas.com>
Date: Wed, 22 May 2019 17:30:36 +0800
In-Reply-To: <OSBPR01MB21032206146152983C8F4E8EB8000@OSBPR01MB2103.jpnprd01.prod.outlook.com>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
 <1557823643-8616-5-git-send-email-chunfeng.yun@mediatek.com>
 <20190517103736.GA1490@kuha.fi.intel.com>
 <20190517130511.GA1887@kuha.fi.intel.com>
 <1558319951.10179.352.camel@mhfsdcap03>
 <20190520080359.GC1887@kuha.fi.intel.com>
 <OSBPR01MB2103385D996762FA54F8E437B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190520083601.GE1887@kuha.fi.intel.com>
 <OSBPR01MB2103C4C8920C40E42BC1B2A9B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190521095839.GI1887@kuha.fi.intel.com>
 <OSBPR01MB21032206146152983C8F4E8EB8000@OSBPR01MB2103.jpnprd01.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_023050_251972_3934B740 
X-CRM114-Status: GOOD (  28.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Biju,
On Wed, 2019-05-22 at 08:05 +0000, Biju Das wrote:
> Hi Heikki,
> 
> Thanks for the feedback.
> 
> > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by
> > node
> > 
> > On Mon, May 20, 2019 at 09:45:46AM +0000, Biju Das wrote:
> > >
> > >
> > > Hi Heikki,
> > >
> > > Thanks for the feedback.
> > >
> > > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > > usb_role_switch by node
> > > >
> > > > On Mon, May 20, 2019 at 08:06:41AM +0000, Biju Das wrote:
> > > > > Hi Heikki,
> > > > >
> > > > > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > > > > usb_role_switch by node
> > > > > >
> > > > > > On Mon, May 20, 2019 at 10:39:11AM +0800, Chunfeng Yun wrote:
> > > > > > > Hi,
> > > > > > > On Fri, 2019-05-17 at 16:05 +0300, Heikki Krogerus wrote:
> > > > > > > > Hi,
> > > > > > > >
> > > > > > > > On Fri, May 17, 2019 at 01:37:36PM +0300, Heikki Krogerus wrote:
> > > > > > > > > On Tue, May 14, 2019 at 04:47:21PM +0800, Chunfeng Yun
> > wrote:
> > > > > > > > > > Add fwnode_usb_role_switch_get() to make easier to get
> > > > > > > > > > usb_role_switch by fwnode which register it.
> > > > > > > > > > It's useful when there is not device_connection
> > > > > > > > > > registered between two drivers and only knows the fwnode
> > > > > > > > > > which register usb_role_switch.
> > > > > > > > > >
> > > > > > > > > > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > > > > > > > > Tested-by: Biju Das <biju.das@bp.renesas.com>
> > > > > > > > >
> > > > > > > > > Acked-by: Heikki Krogerus
> > > > > > > > > <heikki.krogerus@linux.intel.com>
> > > > > > > >
> > > > > > > > Hold on. I just noticed Rob's comment on patch 2/6, where he
> > > > > > > > points out that you don't need to use device graph since the
> > > > > > > > controller is the parent of the connector. Doesn't that mean
> > > > > > > > you don't really need this API?
> > > > > > > No, I still need it.
> > > > > > > The change is about the way how to get fwnode; when use device
> > > > > > > graph, get fwnode by of_graph_get_remote_node(); but now will
> > > > > > > get fwnode by of_get_parent();
> > > > > >
> > > > > > OK, I get that, but I'm still not convinced about if something
> > > > > > like this function is needed at all. I also have concerns
> > > > > > regarding how you are using the function. I'll explain in
> > > > > > comment to the patch 5/6 in this
> > > > series...
> > > > >
> > > > > FYI, Currently  I am also using this api in my patch series.
> > > > > https://patchwork.kernel.org/patch/10944637/
> > > >
> > > > Yes, and I have the same question for you I jusb asked in comment I
> > > > added to the patch 5/6 of this series. Why isn't usb_role_switch_get()
> > enough?
> > >
> > > Currently no issue. It will work with this api as well, since the port node is
> > part of controller node.
> > > For eg:-
> > > https://patchwork.kernel.org/patch/10944627/
> > >
> > > However if any one adds port node inside the connector node, then this
> > api may won't work as expected.
> > > Currently I get below error
> > >
> > > [    2.299703] OF: graph: no port node found in
> > /soc/i2c@e6500000/hd3ss3220@47
> > 
> > We need to understand why is that happening?
> > 
> 
> Form the stack trace  the parent node is "parent_node=hd3ss3220@47" , instead of the "connector" node.
> That is the reason for the above error.
> 
> [    2.442429]  of_graph_get_next_endpoint.part.0+0x28/0x168
> [    2.447889]  of_fwnode_graph_get_next_endpoint+0x5c/0xb0
> [    2.453267]  fwnode_graph_get_next_endpoint+0x20/0x30
> [    2.458374]  device_connection_find_match+0x74/0x1a0
> [    2.463399]  usb_role_switch_get+0x20/0x28
> [    2.467542]  hd3ss3220_probe+0xc4/0x218
> 
> The use case is
> 
> &i2c0 {
> 	hd3ss3220@47 {                                                           
>                  	compatible = "ti,hd3ss3220"; 
>                                    
>                  	usb_con: connector {                                             
>                           		compatible = "usb-c-connector";                                                      
>                          		port {                                                   
>                                 		 hd3ss3220_ep: endpoint {                         
>                                         			remote-endpoint = <&usb3_role_switch>;   
>                                 		};                                               
>                          		};                                                       
>                 	 };                                                               
> 	 }; 
> };
>    
> &usb3_peri0 {                                                                    
>          companion = <&xhci0>;                                                    
>          usb-role-switch;                                                         
>                                                                                   
>          port {                                                                   
>                 usb3_role_switch: endpoint {                                     
>                         remote-endpoint = <&hd3ss3220_ep>;                       
>                  };                                                               
>          };                                                                       
> };   
> 
> Q1) How do we modify the usb_role_switch_get() function to search 
> Child(connector) and child's endpoint?
How about firstly finding connector node in fwnode_graph_devcon_match(),
then search each endpoint?

> 
> > It looks like we have an issue somewhere in the code, and instead of fixing
> > that, you are working around it. Let's not do that.
> 
> OK.
> 
> Regards,
> Biju
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
