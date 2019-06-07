Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D783872F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 11:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXx4euySFIv18Xz8rsLR/gZtD1chozhiuTaFt5Wg9qc=; b=nxYKdX9ZWiU0Sk
	dgCAfMXH3foOpHiPnkYRLntiXlEsnS5QBJ3kgfqxQyiAvTnIyLAn8YQT3C+MyUw42FrDEqaI5fZXq
	oNpEtkxIZqi5QiGv1bLKWeh0eIhb81d/byILfPxJxNW0TbXPPtxHpWXps4sjaBM5ukjWnOvKzkIJC
	v70M7X0mcvNBl6j8lqCTuc5eyuD6V019rkNdAM5v7d3pbpJbJOQqAfCA4OnRmJAtBgepm8lTnksq1
	gjnS7vxJLwvwBsInAVUaia8HWumGucBJhQ2fU+bWupjwqTnweaTtVwf3bu/gwY4GNG+SEl3Fg17oa
	RZ257XpugMj00N08zixw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZBN4-0002VN-GZ; Fri, 07 Jun 2019 09:41:14 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZBMr-0002UR-Lw
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 09:41:03 +0000
Received: by newverein.lst.de (Postfix, from userid 2005)
 id 931BF68C65; Fri,  7 Jun 2019 11:40:30 +0200 (CEST)
Date: Fri, 7 Jun 2019 11:40:30 +0200
From: Torsten Duwe <duwe@lst.de>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345
 bridge on Teres-I
Message-ID: <20190607094030.GA12373@lst.de>
References: <20190604122150.29D6468B05@newverein.lst.de>
 <20190604122308.98D4868B20@newverein.lst.de>
 <CA+E=qVckHLqRngsfK=AcvstrD0ymEfRkYyhS_kBtZ3YWdE3L=g@mail.gmail.com>
 <20190605101317.GA9345@lst.de> <20190605120237.ekmytfxcwbjaqy3x@flea>
 <E1hYsvP-0000PY-Pz@stardust.g4.wien.funkfeuer.at>
 <20190607062802.m5wslx3imiqooq5a@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607062802.m5wslx3imiqooq5a@flea>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_024102_014339_760EDA12 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 08:28:02AM +0200, Maxime Ripard wrote:
> On Thu, Jun 06, 2019 at 03:59:27PM +0200, Harald Geyer wrote:
> >
> > If think valid compatible properties would be:
> > compatible = "innolux,n116bge", "simple-panel";
> > compatible = "edp-connector", "simple-panel";
> 
> A connector isn't a panel.
> 
> > compatible = "innolux,n116bge", "edp-connector", "simple-panel";
> 
> And the innolux,n116bge is certainly not a connector either.
> 
> > compatible = "edp-connector", "innolux,n116bge", "simple-panel";
> >
> > I can't make up my mind which one I prefere. However neither of these
> > variants requires actually implmenting an edp-connector driver.
> 
> No-one asked to do an edp-connector driver. You should use it in your
> DT, but if you want to have some code in your driver that parses the
> DT directly, I'm totally fine with that.

I must admit I fail to understand what that extra node would be good for.
Logically, the eDP far side is connected to the well-known n116bge.
Inside the laptop case it might as well be a flat ribbon cable or
soldered directly.
In good intention, that's all I wanted to express in the DT. I don't
know whether the relevant mechanical dimensions of the panel and the
connector are standardised, so whether one could in theory assemble it
with a different panel than the one it came with.

OTOH, as I checked during the discussion with anarsoul, the panel's
supply voltage is permanently connected to the main 3.3V rail.
We already agreed that the eDP output port must not neccessarily be
specified, this setup is a good example why: because the panel is
always powered, the anx6345 can always pull valid EDID data from it
so at this stage there's no need for any OS driver to reach beyond
the bridge. IIRC even the backlight got switched off for the blank
screen without.

All I wanted to say is that "there's usually an n116bge behind it";
but this is mostly redundant.

So, shall we just drop the output port specification (along with the
panel node) in order to get one step further?

> I guess you should describe why do you think it's "clear", because I'm
> not sure this is obvious for everyone here. eDP allows to discover
> which device is on the other side and its supported timings, just like
> HDMI for example (or regular DP, for that matter). Would you think
> it's clearly preferable to ship a DT with the DP/HDMI monitor
> connected on the other side exposed as a panel as well?

Well, as I wrote: "in good intention". That's the panel that comes with
the kit but it is very well detected automatically, just like you describe.

So, just leave it out?

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
