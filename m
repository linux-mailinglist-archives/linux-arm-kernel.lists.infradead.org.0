Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E2622DA0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNGDNA3DKfNRsqJe/gDcBaqZ+0v4NPBzN8d7TYgcZAw=; b=izpIPnJvbjtBWP
	SkaYAJWiby5iVE+JSFr81hwUS9ibft7hIiNgmyalDFLN9YA1YIeQNKzHjyC/3d/43XJ6q2IuY3PhM
	wpvr/uf4AxMYfNs/4tS9iop3MRktrcOBBt7CfEdMDKkeVF7zCfAlSYsY+zq4tTRTKcBgmyIvv11Na
	Hg+LMzM25ejC2l6eoKn7fIPXNNSAPCjW1bwws0J/iflPl4PZgRRnH9h8RochvLW7Ck8TNKEo6H1Bi
	95ISiMESGh8WaCmelhr8OiN1YARowEcii9yTHaiMjf45pwbqfcr5Vt57t9hpiRHe+VQZlVITmUJLV
	fieOBOSoQ3gaCI1TlQdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdHK-0007sS-OY; Mon, 20 May 2019 08:04:14 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdHD-0007rp-7O; Mon, 20 May 2019 08:04:08 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 01:04:06 -0700
X-ExtLoop1: 1
Received: from kuha.fi.intel.com ([10.237.72.189])
 by fmsmga001.fm.intel.com with SMTP; 20 May 2019 01:04:00 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Mon, 20 May 2019 11:03:59 +0300
Date: Mon, 20 May 2019 11:03:59 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Message-ID: <20190520080359.GC1887@kuha.fi.intel.com>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
 <1557823643-8616-5-git-send-email-chunfeng.yun@mediatek.com>
 <20190517103736.GA1490@kuha.fi.intel.com>
 <20190517130511.GA1887@kuha.fi.intel.com>
 <1558319951.10179.352.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558319951.10179.352.camel@mhfsdcap03>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_010407_275197_E3EC6C8E 
X-CRM114-Status: GOOD (  30.65  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Biju Das <biju.das@bp.renesas.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 10:39:11AM +0800, Chunfeng Yun wrote:
> Hi,
> On Fri, 2019-05-17 at 16:05 +0300, Heikki Krogerus wrote:
> > Hi,
> > 
> > On Fri, May 17, 2019 at 01:37:36PM +0300, Heikki Krogerus wrote:
> > > On Tue, May 14, 2019 at 04:47:21PM +0800, Chunfeng Yun wrote:
> > > > Add fwnode_usb_role_switch_get() to make easier to get
> > > > usb_role_switch by fwnode which register it.
> > > > It's useful when there is not device_connection registered
> > > > between two drivers and only knows the fwnode which register
> > > > usb_role_switch.
> > > > 
> > > > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > > Tested-by: Biju Das <biju.das@bp.renesas.com>
> > > 
> > > Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> > 
> > Hold on. I just noticed Rob's comment on patch 2/6, where he points out
> > that you don't need to use device graph since the controller is the
> > parent of the connector. Doesn't that mean you don't really need this
> > API?
> No, I still need it. 
> The change is about the way how to get fwnode;
> when use device graph, get fwnode by of_graph_get_remote_node();
> but now will get fwnode by of_get_parent();

OK, I get that, but I'm still not convinced about if something like
this function is needed at all. I also have concerns regarding how you
are using the function. I'll explain in comment to the patch 5/6 in
this series...

> > > > ---
> > > > v5 changes:
> > > >  1. remove linux/of.h suggested by Biju
> > > >  2. add tested by Biju
> > > > 
> > > > Note: still depends on [1]
> > > >  [1]: [v6,08/13] usb: roles: Introduce stubs for the exiting functions in role.h
> > > >       https://patchwork.kernel.org/patch/10909971/
> > > > 
> > > > v4 changes:
> > > >   1. use switch_fwnode_match() to find fwnode suggested by Heikki
> > > >   2. this patch now depends on [1]
> > > > 
> > > >  [1] [v6,08/13] usb: roles: Introduce stubs for the exiting functions in role.h
> > > >     https://patchwork.kernel.org/patch/10909971/
> > > > 
> > > > v3 changes:
> > > >   1. use fwnodes instead of node suggested by Andy
> > > >   2. rebuild the API suggested by Heikki
> > > > 
> > > > v2 no changes
> > > > ---
> > > >  drivers/usb/roles/class.c | 24 ++++++++++++++++++++++++
> > > >  include/linux/usb/role.h  |  8 ++++++++
> > > >  2 files changed, 32 insertions(+)
> > > > 
> > > > diff --git a/drivers/usb/roles/class.c b/drivers/usb/roles/class.c
> > > > index f45d8df5cfb8..4a1f09a41ec0 100644
> > > > --- a/drivers/usb/roles/class.c
> > > > +++ b/drivers/usb/roles/class.c
> > > > @@ -135,6 +135,30 @@ struct usb_role_switch *usb_role_switch_get(struct device *dev)
> > > >  }
> > > >  EXPORT_SYMBOL_GPL(usb_role_switch_get);
> > > >  
> > > > +/**
> > > > + * fwnode_usb_role_switch_get - Find USB role switch by it's parent fwnode
> > > > + * @fwnode: The fwnode that register USB role switch
> > > > + *
> > > > + * Finds and returns role switch registered by @fwnode. The reference count
> > > > + * for the found switch is incremented.
> > > > + */
> > > > +struct usb_role_switch *
> > > > +fwnode_usb_role_switch_get(struct fwnode_handle *fwnode)
> > > > +{
> > > > +	struct usb_role_switch *sw;
> > > > +	struct device *dev;
> > > > +
> > > > +	dev = class_find_device(role_class, NULL, fwnode, switch_fwnode_match);
> > > > +	if (!dev)
> > > > +		return ERR_PTR(-EPROBE_DEFER);
> > > > +
> > > > +	sw = to_role_switch(dev);
> > > > +	WARN_ON(!try_module_get(sw->dev.parent->driver->owner));
> > > > +
> > > > +	return sw;
> > > > +}
> > > > +EXPORT_SYMBOL_GPL(fwnode_usb_role_switch_get);
> > 
> > This function only basically converts the fwnode to usb_role_switch,
> > but I would actually prefer that we walked through the device graph
> > here instead of expecting the caller to do that.
> > 
> > So this function should probable be called fwnode_to_usb_role_switch()
> > and not fwnode_usb_role_switch_get(), but I guess you don't need it
> > at all, right?
> > 
> > 
> > thanks,
> > 
> 

-- 
heikki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
