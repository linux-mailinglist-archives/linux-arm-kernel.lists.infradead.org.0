Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7E124CC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:33:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ATdmjH1+hM0739khdSqws3EGxavxr4AXbOkBScNI0NA=; b=fiB0Wv6ek5zL46
	pCiJMRWZjmbFG2X2eagFnidsV/dvKGfnZYMGDYMLu0M2Lq1f65cqoax1byaMtt7BmnzDdwJ5TLZqU
	kVNBnFqiPW02WmjI515P+x5giJ6tbKWdI1qknZjBq7t7mgsas2Kj61K26T4/6Wg1TIRYOp+q+LJn1
	yVCR/IquT11bdVvFa6wlPJ833nhGZJ55rskKOUeQK60hMBMglSbIjjqSzlMMMtc4O3+KsiAB7j943
	RMWQG+Ha5ABEyfDdOCuGzfkwSgo/+q483seM/AJIFAvKovzAgxIATglE9sSGnrz9PxDr7eM5rviHn
	Hl5wdE1FpGhHb8uReqYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT258-0000Bj-HM; Tue, 21 May 2019 10:33:18 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT251-0000BA-Ao; Tue, 21 May 2019 10:33:13 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 03:33:09 -0700
X-ExtLoop1: 1
Received: from kuha.fi.intel.com ([10.237.72.189])
 by fmsmga001.fm.intel.com with SMTP; 21 May 2019 03:33:05 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Tue, 21 May 2019 13:33:04 +0300
Date: Tue, 21 May 2019 13:33:04 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Message-ID: <20190521103304.GJ1887@kuha.fi.intel.com>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
 <1557823643-8616-5-git-send-email-chunfeng.yun@mediatek.com>
 <20190517103736.GA1490@kuha.fi.intel.com>
 <20190517130511.GA1887@kuha.fi.intel.com>
 <1558319951.10179.352.camel@mhfsdcap03>
 <20190520080359.GC1887@kuha.fi.intel.com>
 <OSBPR01MB2103385D996762FA54F8E437B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190520083601.GE1887@kuha.fi.intel.com>
 <OSBPR01MB2103C4C8920C40E42BC1B2A9B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <1558424104.10179.365.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558424104.10179.365.camel@mhfsdcap03>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_033311_386963_9D82E9AD 
X-CRM114-Status: GOOD (  34.29  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan Sridharan <badhri@google.com>,
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

On Tue, May 21, 2019 at 03:35:04PM +0800, Chunfeng Yun wrote:
> Hi,
> On Mon, 2019-05-20 at 09:45 +0000, Biju Das wrote:
> > 
> > Hi Heikki,
> > 
> > Thanks for the feedback.
> > 
> > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by
> > > node
> > > 
> > > On Mon, May 20, 2019 at 08:06:41AM +0000, Biju Das wrote:
> > > > Hi Heikki,
> > > >
> > > > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > > > usb_role_switch by node
> > > > >
> > > > > On Mon, May 20, 2019 at 10:39:11AM +0800, Chunfeng Yun wrote:
> > > > > > Hi,
> > > > > > On Fri, 2019-05-17 at 16:05 +0300, Heikki Krogerus wrote:
> > > > > > > Hi,
> > > > > > >
> > > > > > > On Fri, May 17, 2019 at 01:37:36PM +0300, Heikki Krogerus wrote:
> > > > > > > > On Tue, May 14, 2019 at 04:47:21PM +0800, Chunfeng Yun wrote:
> > > > > > > > > Add fwnode_usb_role_switch_get() to make easier to get
> > > > > > > > > usb_role_switch by fwnode which register it.
> > > > > > > > > It's useful when there is not device_connection registered
> > > > > > > > > between two drivers and only knows the fwnode which register
> > > > > > > > > usb_role_switch.
> > > > > > > > >
> > > > > > > > > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > > > > > > > Tested-by: Biju Das <biju.das@bp.renesas.com>
> > > > > > > >
> > > > > > > > Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> > > > > > >
> > > > > > > Hold on. I just noticed Rob's comment on patch 2/6, where he
> > > > > > > points out that you don't need to use device graph since the
> > > > > > > controller is the parent of the connector. Doesn't that mean you
> > > > > > > don't really need this API?
> > > > > > No, I still need it.
> > > > > > The change is about the way how to get fwnode; when use device
> > > > > > graph, get fwnode by of_graph_get_remote_node(); but now will get
> > > > > > fwnode by of_get_parent();
> > > > >
> > > > > OK, I get that, but I'm still not convinced about if something like
> > > > > this function is needed at all. I also have concerns regarding how
> > > > > you are using the function. I'll explain in comment to the patch 5/6 in this
> > > series...
> > > >
> > > > FYI, Currently  I am also using this api in my patch series.
> > > > https://patchwork.kernel.org/patch/10944637/
> > > 
> > > Yes, and I have the same question for you I jusb asked in comment I added
> > > to the patch 5/6 of this series. Why isn't usb_role_switch_get() enough?
> > 
> > Currently no issue. It will work with this api as well, since the port node is part of controller node.
> > For eg:-
> > https://patchwork.kernel.org/patch/10944627/
> > 
> > However if any one adds port node inside the connector node, then this api may won't work as expected.
> > Currently I get below error
> > 
> > [    2.299703] OF: graph: no port node found in /soc/i2c@e6500000/hd3ss3220@47
> > 
> > For eg:-
> > 
> > 	hd3ss3220@47 {
> > 		compatible = "ti,hd3ss3220";
> > 		...
> > 		....
> > 		usb_con: connector {
> >                                      ....
> >                                      ....
> > 			port {
> > 				hd3ss3220_ep: endpoint@0 {
> > 					reg = <0>;
> > 					remote-endpoint = <&usb3peri_role_switch>;
> > 				};
> > 			};
> > 		};
> > 	};
> > 
> > Regards,
> > Biju
> 
> I tested 3 cases:
> 
> case 1:
> 
> connector {
>     compatible = "linux,typeb-conn-gpio", "usb-b-connector";
>     label = "micro-USB";
>     type = "micro";
>     id-gpios = <&pio 12 GPIO_ACTIVE_HIGH>;
>     vbus-supply = <&usb_p0_vbus>;
> 
>     port {
>         bconn_ep: endpoint@0 {
>             remote-endpoint = <&usb_role_sw>;
>         };
>     };
> };
> 
> &mtu3 {
>     usb-role-switch;
> 
>     port {
>         usb_role_sw: endpoint@0 {
>             remote-endpoint = <&bconn_ep>;
>         };
>     };
> };
> 
> the driver of connector could use usb_role_switch_get(dev) to get
> mtu3's USB Role Switch. (dev is the device of connector)
> 
> case 2:
> 
> &mtu3 {
>     usb-role-switch;
> 
>     connector {
>         compatible = "linux,typeb-conn-gpio", "usb-b-connector";
>         label = "micro-USB";
>         type = "micro";
>         id-gpios = <&pio 12 GPIO_ACTIVE_HIGH>;
>         vbus-supply = <&usb_p0_vbus>;
>     };
> };
> 
> the driver of connector using usb_role_switch_get(dev) failed to get
> mtu3's USB Role Switch.
> error log:
> #OF: graph: no port node found in /usb@11271000/connector
> this is because connector hasn't child node connected to remote
> endpoint which register USB Role Switch
> 
> case 3:
> 
> rsw_iddig: role_sw_iddig {
>     compatible = "linux,typeb-conn-gpio";
>     status = "okay";
> 
>     connector {
>         compatible = "usb-b-connector";
>         label = "micro-USB";
>         type = "micro";
>         id-gpios = <&pio 12 GPIO_ACTIVE_HIGH>;
>         vbus-supply = <&usb_p0_vbus>;
> 
>         port {
>             bconn_ep: endpoint@0 {
>                 remote-endpoint = <&usb_role_sw>;
>             };
>         };
>     };
> };
> 
> &mtu3 {
>     usb-role-switch;
> 
>     port {
>         usb_role_sw: endpoint@0 {
>             remote-endpoint = <&bconn_ep>;
>         };
>     };
> };
> 
> 
> the driver of connector using usb_role_switch_get(dev) also failed to
> get mtu3's USB Role Switch. Because usb_role_switch_get() only search
> its child nodes (connector node), but not child's child (port node)
> This case is the same as Biju's
> 
> Usually type-c is similar with case 3;
> the next version v6 of this series will use case 2 as Rob suggested,
> see [v5, 2/6]
> 
> for case 2, will need the new API fwnode_usb_role_switch_get();

Thanks for the explanation.

In this case, if I understood this correctly, the USB controller, which
is also the role switch, is the parent of the connector. So shouldn't
we simply consider that in the current API?

diff --git a/drivers/usb/roles/class.c b/drivers/usb/roles/class.c
index f45d8df5cfb8..2f898167b99a 100644
--- a/drivers/usb/roles/class.c
+++ b/drivers/usb/roles/class.c
@@ -125,6 +125,13 @@ struct usb_role_switch *usb_role_switch_get(struct device *dev)
 {
        struct usb_role_switch *sw;

+       /*
+        * Simplest case is that a connector is looking for the controller,
+        * which is its parent.
+        */
+       if (device_property_present(dev->parent, "usb-role-switch"))
+               return to_role_switch(dev->parent);
+
        sw = device_connection_find_match(dev, "usb-role-switch", NULL,
                                          usb_role_switch_match);


> for case 3, use the new API, or need modify usb_role_switch_get();

I did not completely understand this case, but isn't it the same as
case 2 in the end, after you change it as Rob suggested?


thanks,

-- 
heikki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
