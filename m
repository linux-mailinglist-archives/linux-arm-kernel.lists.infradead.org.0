Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2184BCBFCC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 17:54:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCo6Ks7DGDtZy67sMknXlLOHK8L2gUjy90hRAELgYfA=; b=nvFQaC4jRSsWFF
	sctBVr5yqZEKfdEI+h6LYa4oarM/yofH9wF4bcwZDfF14FdGMLfAZQ2ovbLbd9lq1cI+aoJQtU2pi
	umW/vRQ5l95rYgTxm0WDU9NiSYJVjbG/C3zuHcj9Dt362GMDF9r+WUXzQDjikTxZhwVhKWw7Go4RQ
	oRiWXQVdDmkLHmm0T3g64BoFTRB5Lb3Q7lFJHfRHK9BgOqGgoYiLHUD8uVO8x30nb5/oKG8JkhG2V
	Jy9rG9cW0XZ5SrRbTIRcb5/TMfb45CRp/Seysq6V/jyxl+cqBUuUqee4Amp6aZdC/1n1Wnw3mmM8E
	mgD0J8IcHggTA7QwUHKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGPuj-0007pq-3k; Fri, 04 Oct 2019 15:54:41 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGPuZ-0007pH-B2
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 15:54:32 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 3F26980BF;
 Fri,  4 Oct 2019 15:55:02 +0000 (UTC)
Date: Fri, 4 Oct 2019 08:54:26 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [PATCH] ARM: omap2plus_defconfig: Fix selected panels after
 generic panel changes
Message-ID: <20191004155426.GM5610@atomide.com>
References: <20191003165539.50318-1-tony@atomide.com>
 <03ca02c1-2816-17cd-03fd-5b72e5d0ec96@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <03ca02c1-2816-17cd-03fd-5b72e5d0ec96@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_085431_418220_C20DCE7E 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-omap@vger.kernel.org, Jyri Sarha <jsarha@ti.com>,
 linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tomi Valkeinen <tomi.valkeinen@ti.com> [191004 08:42]:
> On 03/10/2019 19:55, Tony Lindgren wrote:
> > The old omapdrm panels got removed for v5.4 in favor of generic panels,
> > and the Kconfig options changed. Let's update omap2plus_defconfig
> > accordingly so the same panels are still enabled.
> > 
> > Cc: Jyri Sarha <jsarha@ti.com>
> > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
> > Signed-off-by: Tony Lindgren <tony@atomide.com>
> > ---
> >   arch/arm/configs/omap2plus_defconfig | 12 ++++++------
> >   1 file changed, 6 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
> > --- a/arch/arm/configs/omap2plus_defconfig
> > +++ b/arch/arm/configs/omap2plus_defconfig
> > @@ -356,14 +356,14 @@ CONFIG_DRM_OMAP_CONNECTOR_HDMI=m
> >   CONFIG_DRM_OMAP_CONNECTOR_ANALOG_TV=m
> >   CONFIG_DRM_OMAP_PANEL_DPI=m
> >   CONFIG_DRM_OMAP_PANEL_DSI_CM=m
> > -CONFIG_DRM_OMAP_PANEL_SONY_ACX565AKM=m
> > -CONFIG_DRM_OMAP_PANEL_LGPHILIPS_LB035Q02=m
> > -CONFIG_DRM_OMAP_PANEL_SHARP_LS037V7DW01=m
> > -CONFIG_DRM_OMAP_PANEL_TPO_TD028TTEC1=m
> > -CONFIG_DRM_OMAP_PANEL_TPO_TD043MTEA1=m
> > -CONFIG_DRM_OMAP_PANEL_NEC_NL8048HL11=m
> >   CONFIG_DRM_TILCDC=m
> >   CONFIG_DRM_PANEL_SIMPLE=m
> > +CONFIG_DRM_PANEL_LG_LB035Q02=m
> > +CONFIG_DRM_PANEL_NEC_NL8048HL11=m
> > +CONFIG_DRM_PANEL_SHARP_LS037V7DW01=m
> > +CONFIG_DRM_PANEL_SONY_ACX565AKM=m
> > +CONFIG_DRM_PANEL_TPO_TD028TTEC1=m
> > +CONFIG_DRM_PANEL_TPO_TD043MTEA1=m
> >   CONFIG_FB=y
> >   CONFIG_FIRMWARE_EDID=y
> >   CONFIG_FB_MODE_HELPERS=y
> 
> Sorry, I didn't remember to update these. Some additions:
> 
> These can be dropped, they no longer exist:
> 
> CONFIG_DRM_OMAP_ENCODER_TFP410=m
> CONFIG_DRM_OMAP_CONNECTOR_DVI=m
> CONFIG_DRM_OMAP_PANEL_DPI=m
> 
> This can be added to get the DVI output working on many of the boards:
> 
> CONFIG_DRM_TI_TFP410=m

We have patches already posted for these by Adam and me so we
should be good to go with just $subject patch missing now.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
