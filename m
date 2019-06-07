Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFC138451
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 08:28:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcCCAayHUkSIXsex36gLnzizzvCN7lSaDe4T5AV0XJo=; b=uC+VSCmQAZhMqA
	1m6GEj2/hjfhKLI3cnaMB87bJaEWKnXJ8mdA93ls1zCyEnUwqViUvpIrlFt0ihJfC/MKCOSc9hum4
	DAQMzFXA/Rl4bFWXFvIGxCZckPrEswRRPEvs1lxO22Wj0VHnQqnlxgdcQWcUAeXDqm0KUiwcDhj/P
	QUePAZsxf4uCpunThxDtEdBxQNOnSYhaEFOAmFQQ5x0tGiV+uBRcpszuAdBjRHQ1uigd2oMkNUgUI
	H4Y8tOqN1sVhogI33wORHumMn1Y6YlriF0m+JufXcpyO5foU4cwjSHsoxJUACZkKDiLLtUQbE0tcc
	r9G6noIavZm2UzCgwjxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ8Mm-0000Wk-J6; Fri, 07 Jun 2019 06:28:44 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8MX-0000VN-UY
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 06:28:32 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id A363840003;
 Fri,  7 Jun 2019 06:28:03 +0000 (UTC)
Date: Fri, 7 Jun 2019 08:28:02 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Harald Geyer <harald@ccbib.org>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345 bridge
 on Teres-I
Message-ID: <20190607062802.m5wslx3imiqooq5a@flea>
References: <20190604122150.29D6468B05@newverein.lst.de>
 <20190604122308.98D4868B20@newverein.lst.de>
 <CA+E=qVckHLqRngsfK=AcvstrD0ymEfRkYyhS_kBtZ3YWdE3L=g@mail.gmail.com>
 <20190605101317.GA9345@lst.de>
 <20190605120237.ekmytfxcwbjaqy3x@flea>
 <E1hYsvP-0000PY-Pz@stardust.g4.wien.funkfeuer.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1hYsvP-0000PY-Pz@stardust.g4.wien.funkfeuer.at>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_232830_303000_7982C370 
X-CRM114-Status: GOOD (  32.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 devicetree <devicetree@vger.kernel.org>, Sean Paul <seanpaul@chromium.org>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thierry Reding <thierry.reding@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 03:59:27PM +0200, Harald Geyer wrote:
> Guys, this discussion is getting heated for no reason. Let's put
> personal frustrations aside and discuss the issue on its merits:
>
> Maxime Ripard writes:
> > On Wed, Jun 05, 2019 at 12:13:17PM +0200, Torsten Duwe wrote:
> > > On Tue, Jun 04, 2019 at 08:08:40AM -0700, Vasily Khoruzhick wrote:
> > > > On Tue, Jun 4, 2019 at 5:23 AM Torsten Duwe <duwe@lst.de> wrote:
> > > > >
> > > > > Teres-I has an anx6345 bridge connected to the RGB666 LCD output, and
> > > > > the I2C controlling signals are connected to I2C0 bus. eDP output goes
> > > > > to an Innolux N116BGE panel.
> > > > >
> > > > > Enable it in the device tree.
> > > > >
> > > > > Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> > > > > Signed-off-by: Torsten Duwe <duwe@suse.de>
> > > > > ---
> > > > >  .../boot/dts/allwinner/sun50i-a64-teres-i.dts      | 65 ++++++++++++++++++++--
> > > > >  1 file changed, 61 insertions(+), 4 deletions(-)
> > > > >
> > > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > > > > index 0ec46b969a75..a0ad438b037f 100644
> > > > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > > > > @@ -65,6 +65,21 @@
> > > > >                 };
> > > > >         };
> > > > >
> > > > > +       panel: panel {
> > > > > +               compatible ="innolux,n116bge", "simple-panel";
> > > >
> > > > It's still "simple-panel". I believe I already mentioned that Rob
> > > > asked it to be edp-connector.
>
> Actually just dropping the "simple-panel" compatible would be a poor
> choice. Even if "edp-connector" is specified as binding and implemented in a
> driver, there are older kernel versions and other operating systems to
> keep in mind.

Which older kernels? This is a new binding, adding a new driver, so if
an older kernel uses a separate driver with its own binding, good for
them, but we don't have to support it.

> If the HW works with "simple-panel" driver satisfactorily,
> we should definitely keep the compatible as a fall back for cases where
> the edp-connector driver is unavailable.
>
> If think valid compatible properties would be:
> compatible = "innolux,n116bge", "simple-panel";
> compatible = "edp-connector", "simple-panel";

A connector isn't a panel.

> compatible = "innolux,n116bge", "edp-connector", "simple-panel";

And the innolux,n116bge is certainly not a connector either.

> compatible = "edp-connector", "innolux,n116bge", "simple-panel";
>
> I can't make up my mind which one I prefere. However neither of these
> variants requires actually implmenting an edp-connector driver.

No-one asked to do an edp-connector driver. You should use it in your
DT, but if you want to have some code in your driver that parses the
DT directly, I'm totally fine with that.

> And each of these variants is clearly preferable to shipping DTs
> without description of the panel at all and complies with bindings
> after adding a stub for "edp-connector".

I guess you should describe why do you think it's "clear", because I'm
not sure this is obvious for everyone here. eDP allows to discover
which device is on the other side and its supported timings, just like
HDMI for example (or regular DP, for that matter). Would you think
it's clearly preferable to ship a DT with the DP/HDMI monitor
connected on the other side exposed as a panel as well?

> > And the DT is considered an ABI, so yeah, we will witheld everything
> > that doesn't fit what we would like.
>
> I fail to see how the patch in discussion adds new ABI.

The binding itself is the ABI, and we will have to support that
binding for pretty much forever.

> While I understand the need to pester contributors for more work,
> outright blocking DTs, that properly describe the HW

Properly is arguable.

> and comply with existing bindings

And that's bindings meant for another use-case.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
