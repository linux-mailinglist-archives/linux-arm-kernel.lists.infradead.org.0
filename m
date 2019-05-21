Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E802490E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 09:35:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SbOdC/oIhix8DEPkRxjIlJ9ue/5H3QlY9TFngtcEsj8=; b=G7Jja8ii/4jdjd
	GM08jNrgkR5bhOGIpy9kkv+a7KpnvwKu09SJ4WL81KlorNvpcn8omdiUAp//eCEOupI5NORQmQGBu
	DlwWQeliw3YUvReKe9ZkMmCKjb5ITD5PgCZosNvWNkYRbFb0Z1RZnCgwCwRFhQ4eIENcowiURtuLe
	E1JzdvWuxbUlsuRNuyqhn+CasRIzuBJ5rnhXZOAiE5rcVwdN/rOAuUxYiTDkts/k+Zj9acMTQm7xB
	pTENGaNmqMgYaSQ3pncoTgRjcAxtpMWPcjMjUlumxMrMObflEJ/s/NsmQ9MxhV0naiHC0Kt+rbFJB
	7sqkw8Jnwrgxdfe78zBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzJP-0000nE-3M; Tue, 21 May 2019 07:35:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzJG-0000lb-Al; Tue, 21 May 2019 07:35:43 +0000
X-UUID: cc5e6503f79d4fbe932c837125bba82a-20190520
X-UUID: cc5e6503f79d4fbe932c837125bba82a-20190520
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 615289992; Mon, 20 May 2019 23:35:11 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 May 2019 00:35:08 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 21 May 2019 15:35:05 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 21 May 2019 15:35:04 +0800
Message-ID: <1558424104.10179.365.camel@mhfsdcap03>
Subject: RE: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Biju Das <biju.das@bp.renesas.com>, Heikki Krogerus
 <heikki.krogerus@linux.intel.com>
Date: Tue, 21 May 2019 15:35:04 +0800
In-Reply-To: <OSBPR01MB2103C4C8920C40E42BC1B2A9B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
 <1557823643-8616-5-git-send-email-chunfeng.yun@mediatek.com>
 <20190517103736.GA1490@kuha.fi.intel.com>
 <20190517130511.GA1887@kuha.fi.intel.com>
 <1558319951.10179.352.camel@mhfsdcap03>
 <20190520080359.GC1887@kuha.fi.intel.com>
 <OSBPR01MB2103385D996762FA54F8E437B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190520083601.GE1887@kuha.fi.intel.com>
 <OSBPR01MB2103C4C8920C40E42BC1B2A9B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_003542_381737_C7E86A11 
X-CRM114-Status: GOOD (  27.04  )
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

Hi,
On Mon, 2019-05-20 at 09:45 +0000, Biju Das wrote:
> 
> Hi Heikki,
> 
> Thanks for the feedback.
> 
> > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by
> > node
> > 
> > On Mon, May 20, 2019 at 08:06:41AM +0000, Biju Das wrote:
> > > Hi Heikki,
> > >
> > > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > > usb_role_switch by node
> > > >
> > > > On Mon, May 20, 2019 at 10:39:11AM +0800, Chunfeng Yun wrote:
> > > > > Hi,
> > > > > On Fri, 2019-05-17 at 16:05 +0300, Heikki Krogerus wrote:
> > > > > > Hi,
> > > > > >
> > > > > > On Fri, May 17, 2019 at 01:37:36PM +0300, Heikki Krogerus wrote:
> > > > > > > On Tue, May 14, 2019 at 04:47:21PM +0800, Chunfeng Yun wrote:
> > > > > > > > Add fwnode_usb_role_switch_get() to make easier to get
> > > > > > > > usb_role_switch by fwnode which register it.
> > > > > > > > It's useful when there is not device_connection registered
> > > > > > > > between two drivers and only knows the fwnode which register
> > > > > > > > usb_role_switch.
> > > > > > > >
> > > > > > > > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > > > > > > Tested-by: Biju Das <biju.das@bp.renesas.com>
> > > > > > >
> > > > > > > Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> > > > > >
> > > > > > Hold on. I just noticed Rob's comment on patch 2/6, where he
> > > > > > points out that you don't need to use device graph since the
> > > > > > controller is the parent of the connector. Doesn't that mean you
> > > > > > don't really need this API?
> > > > > No, I still need it.
> > > > > The change is about the way how to get fwnode; when use device
> > > > > graph, get fwnode by of_graph_get_remote_node(); but now will get
> > > > > fwnode by of_get_parent();
> > > >
> > > > OK, I get that, but I'm still not convinced about if something like
> > > > this function is needed at all. I also have concerns regarding how
> > > > you are using the function. I'll explain in comment to the patch 5/6 in this
> > series...
> > >
> > > FYI, Currently  I am also using this api in my patch series.
> > > https://patchwork.kernel.org/patch/10944637/
> > 
> > Yes, and I have the same question for you I jusb asked in comment I added
> > to the patch 5/6 of this series. Why isn't usb_role_switch_get() enough?
> 
> Currently no issue. It will work with this api as well, since the port node is part of controller node.
> For eg:-
> https://patchwork.kernel.org/patch/10944627/
> 
> However if any one adds port node inside the connector node, then this api may won't work as expected.
> Currently I get below error
> 
> [    2.299703] OF: graph: no port node found in /soc/i2c@e6500000/hd3ss3220@47
> 
> For eg:-
> 
> 	hd3ss3220@47 {
> 		compatible = "ti,hd3ss3220";
> 		...
> 		....
> 		usb_con: connector {
>                                      ....
>                                      ....
> 			port {
> 				hd3ss3220_ep: endpoint@0 {
> 					reg = <0>;
> 					remote-endpoint = <&usb3peri_role_switch>;
> 				};
> 			};
> 		};
> 	};
> 
> Regards,
> Biju

I tested 3 cases:

case 1:

connector {
    compatible = "linux,typeb-conn-gpio", "usb-b-connector";
    label = "micro-USB";
    type = "micro";
    id-gpios = <&pio 12 GPIO_ACTIVE_HIGH>;
    vbus-supply = <&usb_p0_vbus>;

    port {
        bconn_ep: endpoint@0 {
            remote-endpoint = <&usb_role_sw>;
        };
    };
};

&mtu3 {
    usb-role-switch;

    port {
        usb_role_sw: endpoint@0 {
            remote-endpoint = <&bconn_ep>;
        };
    };
};

the driver of connector could use usb_role_switch_get(dev) to get
mtu3's USB Role Switch. (dev is the device of connector)

case 2:

&mtu3 {
    usb-role-switch;

    connector {
        compatible = "linux,typeb-conn-gpio", "usb-b-connector";
        label = "micro-USB";
        type = "micro";
        id-gpios = <&pio 12 GPIO_ACTIVE_HIGH>;
        vbus-supply = <&usb_p0_vbus>;
    };
};

the driver of connector using usb_role_switch_get(dev) failed to get
mtu3's USB Role Switch.
error log:
#OF: graph: no port node found in /usb@11271000/connector
this is because connector hasn't child node connected to remote
endpoint which register USB Role Switch

case 3:

rsw_iddig: role_sw_iddig {
    compatible = "linux,typeb-conn-gpio";
    status = "okay";

    connector {
        compatible = "usb-b-connector";
        label = "micro-USB";
        type = "micro";
        id-gpios = <&pio 12 GPIO_ACTIVE_HIGH>;
        vbus-supply = <&usb_p0_vbus>;

        port {
            bconn_ep: endpoint@0 {
                remote-endpoint = <&usb_role_sw>;
            };
        };
    };
};

&mtu3 {
    usb-role-switch;

    port {
        usb_role_sw: endpoint@0 {
            remote-endpoint = <&bconn_ep>;
        };
    };
};


the driver of connector using usb_role_switch_get(dev) also failed to
get mtu3's USB Role Switch. Because usb_role_switch_get() only search
its child nodes (connector node), but not child's child (port node)
This case is the same as Biju's

Usually type-c is similar with case 3;
the next version v6 of this series will use case 2 as Rob suggested,
see [v5, 2/6]

for case 2, will need the new API fwnode_usb_role_switch_get();
for case 3, use the new API, or need modify usb_role_switch_get();



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
