Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD0524C15
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 11:59:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wdxNjkDBMnpFyFXD0hTGKWLuvEDl7vU+k1IvRnvaRHo=; b=JJgVBvYUt1s+qb
	dc0fmautLm+Dj4TR4rih10cfD41pGwFoCh3gwWG1w/2M5rua2Qk3AerrMBsnJTf6rnA8fy6GFoW0T
	UO1W7NJwreRvA76D5hHToYMlQLEBT2TwRdWTrgLFmraACybZqrnK70oBwUlBhUdnSsT6XGlVmQlsH
	b/b1pE0xYYE5v6+ygcefq3lTwGFY7gCDkfmrofsy1vwil7GgwrA3S2rv/99g9qtq4W5kCoF8+dRMj
	lVFOIIbMrdpCp9teEmQZ8bxG0oxDCCnYJEoTLrPACnOLJOv9b8xbBN1y9yOk+nEaQmzrXJxjlKe4I
	RZVCeyHxDwvWCj3Qfq2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1Xq-00008W-40; Tue, 21 May 2019 09:58:54 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1Xh-000084-QR; Tue, 21 May 2019 09:58:47 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 02:58:45 -0700
X-ExtLoop1: 1
Received: from kuha.fi.intel.com ([10.237.72.189])
 by fmsmga001.fm.intel.com with SMTP; 21 May 2019 02:58:40 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Tue, 21 May 2019 12:58:39 +0300
Date: Tue, 21 May 2019 12:58:39 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Biju Das <biju.das@bp.renesas.com>
Subject: Re: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Message-ID: <20190521095839.GI1887@kuha.fi.intel.com>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
 <1557823643-8616-5-git-send-email-chunfeng.yun@mediatek.com>
 <20190517103736.GA1490@kuha.fi.intel.com>
 <20190517130511.GA1887@kuha.fi.intel.com>
 <1558319951.10179.352.camel@mhfsdcap03>
 <20190520080359.GC1887@kuha.fi.intel.com>
 <OSBPR01MB2103385D996762FA54F8E437B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190520083601.GE1887@kuha.fi.intel.com>
 <OSBPR01MB2103C4C8920C40E42BC1B2A9B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OSBPR01MB2103C4C8920C40E42BC1B2A9B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_025845_861566_8C702E77 
X-CRM114-Status: GOOD (  25.83  )
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
 Badhri Jagan Sridharan <badhri@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 09:45:46AM +0000, Biju Das wrote:
> 
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

We need to understand why is that happening?

It looks like we have an issue somewhere in the code, and instead of
fixing that, you are working around it. Let's not do that.

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

thanks,

-- 
heikki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
