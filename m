Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 609D235A4D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 12:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XO83K8l1d8UmJLOkii4HeZ5fyOiqFwxh1PSl3tFC5p8=; b=B8W1NdKLmncra6
	zbekB798YgDf5iWSl4nTLS/jchpXYiIs35UKzsheEMecRqkIMELn3OjZSweyawqrag0Epbd1pJ4ej
	GPGENbZNIQ2PfF+osHQzoF5BTafI6byqYKQ2f8Ga0rabHfuccbppTTOVb1+Yf7EaxQGUrm+30jO5X
	XtBtSqISJp/W0ahAkRslTQ9r3KIUyOTCvAtShSn/jHbJWvBTyQ0RB7vC7b53m1g63FYl1NmIbcVm5
	ity2HlVi00yARpt2mo7Ai54oBom1moeO5yWbdHqGlDSt1NMyOVYSD4z5saLWZA6UGWUuAYuj1X5NL
	cNJR8xFHDc7YTwe87fMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYSva-0000sz-68; Wed, 05 Jun 2019 10:13:54 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYSvR-0000rr-Pk
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 10:13:47 +0000
Received: by newverein.lst.de (Postfix, from userid 2005)
 id 5F8F468B05; Wed,  5 Jun 2019 12:13:17 +0200 (CEST)
Date: Wed, 5 Jun 2019 12:13:17 +0200
From: Torsten Duwe <duwe@lst.de>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345
 bridge on Teres-I
Message-ID: <20190605101317.GA9345@lst.de>
References: <20190604122150.29D6468B05@newverein.lst.de>
 <20190604122308.98D4868B20@newverein.lst.de>
 <CA+E=qVckHLqRngsfK=AcvstrD0ymEfRkYyhS_kBtZ3YWdE3L=g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+E=qVckHLqRngsfK=AcvstrD0ymEfRkYyhS_kBtZ3YWdE3L=g@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_031345_984490_E2950D70 
X-CRM114-Status: GOOD (  17.90  )
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
 devicetree <devicetree@vger.kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 08:08:40AM -0700, Vasily Khoruzhick wrote:
> On Tue, Jun 4, 2019 at 5:23 AM Torsten Duwe <duwe@lst.de> wrote:
> >
> > Teres-I has an anx6345 bridge connected to the RGB666 LCD output, and
> > the I2C controlling signals are connected to I2C0 bus. eDP output goes
> > to an Innolux N116BGE panel.
> >
> > Enable it in the device tree.
> >
> > Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> > Signed-off-by: Torsten Duwe <duwe@suse.de>
> > ---
> >  .../boot/dts/allwinner/sun50i-a64-teres-i.dts      | 65 ++++++++++++++++++++--
> >  1 file changed, 61 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > index 0ec46b969a75..a0ad438b037f 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > @@ -65,6 +65,21 @@
> >                 };
> >         };
> >
> > +       panel: panel {
> > +               compatible ="innolux,n116bge", "simple-panel";
> 
> It's still "simple-panel". I believe I already mentioned that Rob
> asked it to be edp-connector.
> 
For which there are neither bindings nor drivers.

Is anybody seriously proposing to hold back support for existing
(open source!) hardware in favour of an *imaginable* *possibly* better
solution? Especially when this exact line is already used in some other places?
(there's a space missing btw...)

I'm more than glad to follow any constructive improvements towards better
modularity. However there were none so far, and on top of that, it's a laptop.
I see little advantage in mentioning an internal connector when the panel
connected is always the same.

FWIW, Rob should also have received these patches.

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
