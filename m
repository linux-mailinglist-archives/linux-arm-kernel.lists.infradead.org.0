Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9971177A91
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:36:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eLYZGT9n+pjDcLrEBz28tExsbQ6/U6H9mtjl+hMHlHk=; b=QaZgOzJEwT73/u
	uqvVqYIpDf/OfQIpvPxPRw8mUtnruPsgm+pHMmgxRWK8MUmWzkeQlGLFqQ/2ECNrSnilr1ocSSBlD
	AeypwBqX8aeNIQDLtciiCBwmVUhg+Jh6ABKTHdtooCeatqYvtFMoGrC6dKOC4itTYPYgkFMH/2GhR
	nlFrdSS3s8DQ63CqbwKWHnS1VECHlTEQr8NT3RNmjYBsyjfp1Hq9jTl7H7ZAHylg5n29A82Y3TLDp
	aFFr661cD875tsJJDvZlkz1WpLQkmiUHjrOJmuQrM4zbIsuOVs8zqNZsLcjfCMWMr5Xtcvm57oScS
	u3iDhb2uiLfOSlYje4/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j99b0-00025G-Vd; Tue, 03 Mar 2020 15:36:34 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j99at-00024R-K4
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 15:36:30 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 43BEA80EE;
 Tue,  3 Mar 2020 15:37:11 +0000 (UTC)
Date: Tue, 3 Mar 2020 07:36:22 -0800
From: Tony Lindgren <tony@atomide.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [PATCH 1/3] drm/omap: Prepare DSS for probing without legacy
 platform data
Message-ID: <20200303153622.GR37466@atomide.com>
References: <20200224191230.30972-1-tony@atomide.com>
 <20200224191230.30972-2-tony@atomide.com>
 <d5ce999e-3b26-334e-fc62-adee4753a3ed@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d5ce999e-3b26-334e-fc62-adee4753a3ed@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_073628_732666_7BF2EB96 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Suman Anna <s-anna@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>, Jyri Sarha <jsarha@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tomi Valkeinen <tomi.valkeinen@ti.com> [200303 09:19]:
> On 24/02/2020 21:12, Tony Lindgren wrote:
> > In order to probe display subsystem (DSS) components with ti-sysc
> > interconnect target module without legacy platform data and using
> > devicetree, we need to update dss probing a bit.
> > 
> > In the device tree, we will be defining the data also for the interconnect
> > target modules as DSS really is a private interconnect. There is some
> > information about that in 4460 TRM in "Figure 10-3. DSS Integration" for
> > example where it mentions "32-bit interconnect (SLX)".
> > 
> > The changes we need to make are:
> > 
> > 1. Parse also device tree subnodes for the compatible property fixup
> > 
> > 2. Update the component code to consider device tree subnodes
> > 
> > Cc: dri-devel@lists.freedesktop.org
> > Cc: Jyri Sarha <jsarha@ti.com>
> > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
> > Signed-off-by: Tony Lindgren <tony@atomide.com>
> > ---
> > 
> > This is needed for dropping DSS platform data that I'll be posting
> > seprately. If this looks OK, can you guys please test and ack?
> > 
> > ---
> >   drivers/gpu/drm/omapdrm/dss/dss.c             | 25 ++++++++++++++++---
> >   .../gpu/drm/omapdrm/dss/omapdss-boot-init.c   | 25 +++++++++++++------
> >   2 files changed, 39 insertions(+), 11 deletions(-)
> 
> Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> 
> This doesn't conflict with drm-next (with Laurent's recent patches), so it
> should be fine for you to have this in your branch.

OK thank you. I've pushed out omap-for-v5.7/dss-probe which has just
this commit against v5.6-rc1 [0][1]. Let's consider commit cef766300353
("drm/omap: Prepare DSS for probing without legacy platform data")
immutable so we can both merge it in as needed.

I have not added any tag yet as it seems that we could add also
apply Sebastian's few preparatory dts changes to this branch when
ready.

> And not a biggie, but I wonder if the changes to these two files should be
> in separate patches, due to omapdss-boot-init going away. Well, probably
> doesn't matter.

Hmm yeah good reason to put every change into a seprate patch
for future. I really did not expect this to conflict with anything
after years of no changes :)

Regards,

Tony

[0] git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap.git omap-for-v5.7/dss-probe
[1] https://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap.git/commit/?h=omap-for-v5.7/dss-probe&id=cef766300353613aa273791f70b3125d1f0420ae

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
