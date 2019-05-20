Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 150CF22A01
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 04:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nuDK4I5CPktPSEznceDGYiQQZ1qsMGMClbvf0nQXtAs=; b=c+0BYj46FqWHSr
	li148ryArMOS/H1ywt1mlFwMXRZxlxH7VKFxwYy7VJBhTTW75iPP7aavhNbKFpyU5736Cgk1zqc9Z
	fiYw5Hk6B8NyXCw5GKXvNHs0zrn0fHCulKskaRME+MANppVUFooIvu0eCaLDdWe8ttrDVtMM0jM2J
	79oKJm7/VF9AqGoPuuy0HEG+3nH5i8QaIOzmxkBwHTpJF/1toLtYYXMWcWsbrhOexuhvLqx3V5nHq
	hb9QVRvUxPmWIsvznkrRcvZkEyhugC6xpM3YjsACIKEyjAsctni+s2PJF7+i71c5by9QzOJJrooOn
	wxRLIKXDoogP6XcAAtNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSYD4-0006zA-5v; Mon, 20 May 2019 02:39:30 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSYCv-0006yJ-SH; Mon, 20 May 2019 02:39:24 +0000
X-UUID: e84445936ce9488198b0965ad5799d31-20190519
X-UUID: e84445936ce9488198b0965ad5799d31-20190519
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1197673448; Sun, 19 May 2019 18:39:17 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 May 2019 19:39:16 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 20 May 2019 10:39:13 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 20 May 2019 10:39:11 +0800
Message-ID: <1558319951.10179.352.camel@mhfsdcap03>
Subject: Re: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Date: Mon, 20 May 2019 10:39:11 +0800
In-Reply-To: <20190517130511.GA1887@kuha.fi.intel.com>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
 <1557823643-8616-5-git-send-email-chunfeng.yun@mediatek.com>
 <20190517103736.GA1490@kuha.fi.intel.com>
 <20190517130511.GA1887@kuha.fi.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_193921_926665_EF4860C7 
X-CRM114-Status: GOOD (  24.40  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Biju Das <biju.das@bp.renesas.com>, Badhri Jagan
 Sridharan <badhri@google.com>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>, Matthias
 Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Fri, 2019-05-17 at 16:05 +0300, Heikki Krogerus wrote:
> Hi,
> 
> On Fri, May 17, 2019 at 01:37:36PM +0300, Heikki Krogerus wrote:
> > On Tue, May 14, 2019 at 04:47:21PM +0800, Chunfeng Yun wrote:
> > > Add fwnode_usb_role_switch_get() to make easier to get
> > > usb_role_switch by fwnode which register it.
> > > It's useful when there is not device_connection registered
> > > between two drivers and only knows the fwnode which register
> > > usb_role_switch.
> > > 
> > > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > Tested-by: Biju Das <biju.das@bp.renesas.com>
> > 
> > Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> 
> Hold on. I just noticed Rob's comment on patch 2/6, where he points out
> that you don't need to use device graph since the controller is the
> parent of the connector. Doesn't that mean you don't really need this
> API?
No, I still need it. 
The change is about the way how to get fwnode;
when use device graph, get fwnode by of_graph_get_remote_node();
but now will get fwnode by of_get_parent();

> 
> > > ---
> > > v5 changes:
> > >  1. remove linux/of.h suggested by Biju
> > >  2. add tested by Biju
> > > 
> > > Note: still depends on [1]
> > >  [1]: [v6,08/13] usb: roles: Introduce stubs for the exiting functions in role.h
> > >       https://patchwork.kernel.org/patch/10909971/
> > > 
> > > v4 changes:
> > >   1. use switch_fwnode_match() to find fwnode suggested by Heikki
> > >   2. this patch now depends on [1]
> > > 
> > >  [1] [v6,08/13] usb: roles: Introduce stubs for the exiting functions in role.h
> > >     https://patchwork.kernel.org/patch/10909971/
> > > 
> > > v3 changes:
> > >   1. use fwnodes instead of node suggested by Andy
> > >   2. rebuild the API suggested by Heikki
> > > 
> > > v2 no changes
> > > ---
> > >  drivers/usb/roles/class.c | 24 ++++++++++++++++++++++++
> > >  include/linux/usb/role.h  |  8 ++++++++
> > >  2 files changed, 32 insertions(+)
> > > 
> > > diff --git a/drivers/usb/roles/class.c b/drivers/usb/roles/class.c
> > > index f45d8df5cfb8..4a1f09a41ec0 100644
> > > --- a/drivers/usb/roles/class.c
> > > +++ b/drivers/usb/roles/class.c
> > > @@ -135,6 +135,30 @@ struct usb_role_switch *usb_role_switch_get(struct device *dev)
> > >  }
> > >  EXPORT_SYMBOL_GPL(usb_role_switch_get);
> > >  
> > > +/**
> > > + * fwnode_usb_role_switch_get - Find USB role switch by it's parent fwnode
> > > + * @fwnode: The fwnode that register USB role switch
> > > + *
> > > + * Finds and returns role switch registered by @fwnode. The reference count
> > > + * for the found switch is incremented.
> > > + */
> > > +struct usb_role_switch *
> > > +fwnode_usb_role_switch_get(struct fwnode_handle *fwnode)
> > > +{
> > > +	struct usb_role_switch *sw;
> > > +	struct device *dev;
> > > +
> > > +	dev = class_find_device(role_class, NULL, fwnode, switch_fwnode_match);
> > > +	if (!dev)
> > > +		return ERR_PTR(-EPROBE_DEFER);
> > > +
> > > +	sw = to_role_switch(dev);
> > > +	WARN_ON(!try_module_get(sw->dev.parent->driver->owner));
> > > +
> > > +	return sw;
> > > +}
> > > +EXPORT_SYMBOL_GPL(fwnode_usb_role_switch_get);
> 
> This function only basically converts the fwnode to usb_role_switch,
> but I would actually prefer that we walked through the device graph
> here instead of expecting the caller to do that.
> 
> So this function should probable be called fwnode_to_usb_role_switch()
> and not fwnode_usb_role_switch_get(), but I guess you don't need it
> at all, right?
> 
> 
> thanks,
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
