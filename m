Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BE722F0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:36:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymu7Yt1MVLII67Kn0dXiUSL4BfD3uqZhSOTEjULar8E=; b=dC9exf1QtgS3Pg
	r9hGCiYg1xEV4G1MoNiujZln1exSci05hpqZAiXfyo0ARFmqdTTtrUcF0a9w46Fxrd3cFCE42BWiB
	p4spP08SwZiu8P9JWfzwI7C4rv86COxKJ85lz221wyb+VhCFQNjbVC757Okw+UyifFHZ9u6LOBlay
	+9QOTipWy4OvmbsOsmrbx2zw3gzidKd9AYak6OdU7MxWwv2Nev+X6qNQPmydJA9N9+YCe4eja/rdt
	QS3qZq0gTnPyj83d/9K8lSCYJKEVRoj+m7u1A61za5U6j5LEBzcFP7GH5v0zVB3n2rI0iC+cc+dAG
	Wt/bVQ8KPuQ1rdc20iMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdmJ-0005z2-KT; Mon, 20 May 2019 08:36:15 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdmC-0005yY-An; Mon, 20 May 2019 08:36:10 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 01:36:07 -0700
X-ExtLoop1: 1
Received: from kuha.fi.intel.com ([10.237.72.189])
 by fmsmga001.fm.intel.com with SMTP; 20 May 2019 01:36:02 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Mon, 20 May 2019 11:36:01 +0300
Date: Mon, 20 May 2019 11:36:01 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Biju Das <biju.das@bp.renesas.com>
Subject: Re: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Message-ID: <20190520083601.GE1887@kuha.fi.intel.com>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
 <1557823643-8616-5-git-send-email-chunfeng.yun@mediatek.com>
 <20190517103736.GA1490@kuha.fi.intel.com>
 <20190517130511.GA1887@kuha.fi.intel.com>
 <1558319951.10179.352.camel@mhfsdcap03>
 <20190520080359.GC1887@kuha.fi.intel.com>
 <OSBPR01MB2103385D996762FA54F8E437B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OSBPR01MB2103385D996762FA54F8E437B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_013608_416041_501D07EA 
X-CRM114-Status: GOOD (  24.71  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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

On Mon, May 20, 2019 at 08:06:41AM +0000, Biju Das wrote:
> Hi Heikki,
> 
> > -----Original Message-----
> > From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> > Sent: Monday, May 20, 2019 9:04 AM
> > To: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > Cc: Rob Herring <robh+dt@kernel.org>; Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org>; Mark Rutland <mark.rutland@arm.com>;
> > Matthias Brugger <matthias.bgg@gmail.com>; Adam Thomson
> > <Adam.Thomson.Opensource@diasemi.com>; Li Jun <jun.li@nxp.com>;
> > Badhri Jagan Sridharan <badhri@google.com>; Hans de Goede
> > <hdegoede@redhat.com>; Andy Shevchenko
> > <andy.shevchenko@gmail.com>; Min Guo <min.guo@mediatek.com>;
> > devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-
> > usb@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> > mediatek@lists.infradead.org; Biju Das <biju.das@bp.renesas.com>; Linus
> > Walleij <linus.walleij@linaro.org>
> > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by
> > node
> > 
> > On Mon, May 20, 2019 at 10:39:11AM +0800, Chunfeng Yun wrote:
> > > Hi,
> > > On Fri, 2019-05-17 at 16:05 +0300, Heikki Krogerus wrote:
> > > > Hi,
> > > >
> > > > On Fri, May 17, 2019 at 01:37:36PM +0300, Heikki Krogerus wrote:
> > > > > On Tue, May 14, 2019 at 04:47:21PM +0800, Chunfeng Yun wrote:
> > > > > > Add fwnode_usb_role_switch_get() to make easier to get
> > > > > > usb_role_switch by fwnode which register it.
> > > > > > It's useful when there is not device_connection registered
> > > > > > between two drivers and only knows the fwnode which register
> > > > > > usb_role_switch.
> > > > > >
> > > > > > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > > > > Tested-by: Biju Das <biju.das@bp.renesas.com>
> > > > >
> > > > > Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> > > >
> > > > Hold on. I just noticed Rob's comment on patch 2/6, where he points
> > > > out that you don't need to use device graph since the controller is
> > > > the parent of the connector. Doesn't that mean you don't really need
> > > > this API?
> > > No, I still need it.
> > > The change is about the way how to get fwnode; when use device graph,
> > > get fwnode by of_graph_get_remote_node(); but now will get fwnode by
> > > of_get_parent();
> > 
> > OK, I get that, but I'm still not convinced about if something like this function
> > is needed at all. I also have concerns regarding how you are using the
> > function. I'll explain in comment to the patch 5/6 in this series...
> 
> FYI, Currently  I am also using this api in my patch series.
> https://patchwork.kernel.org/patch/10944637/

Yes, and I have the same question for you I jusb asked in comment I
added to the patch 5/6 of this series. Why isn't usb_role_switch_get()
enough?

thanks,

-- 
heikki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
