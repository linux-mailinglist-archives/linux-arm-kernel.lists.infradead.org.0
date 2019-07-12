Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57C1675C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 22:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s6P35d7AFv2PL7aE+cgFpR61lw+pBoSuoWrelQ8X7jg=; b=NSlV8XWugAnfKo
	rTmRLt7jAC/RhTdm8mgWg1G7KyrYfFJpsv7K/t1LozVXlo+JZv+Ck0ihT7EA/hOAtLODPBQfpi2kS
	jGYPbXExKsReQTjlKPNL7LQNzdRECu8YjFJUEkJdrmnsrCWoyv7+OacAJhZ+wuQTlwq2NWuMVyA4/
	FWX2gjS/0umcC1R05CuonkVAKxJtKdkJCAfzm5EL9Z/7YavDk2hl/XIQwPA4wc8eDo5GjrqLQaaPQ
	VKrUPkYdaeSKQZanjzsa06OvByRCsKkDyquZvo6Qyh5Avh2kIYXHXtDoZklCfJHId0Y6AZJHX/2rP
	GAL7zlBmKfSLOtJsjkLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm1xr-0006lo-6Y; Fri, 12 Jul 2019 20:16:19 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm1xX-0006kz-8D
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 20:16:01 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 5BEF640002;
 Fri, 12 Jul 2019 20:15:44 +0000 (UTC)
Date: Fri, 12 Jul 2019 22:15:43 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345 bridge
 on Teres-I
Message-ID: <20190712201543.krhsfjepd3cqndla@flea>
References: <20190607094030.GA12373@lst.de>
 <66707fcc-b48e-02d3-5ed7-6b7e77d53266@samsung.com>
 <20190612152022.c3cfhp4cauhzhfyr@flea>
 <bb2c2c00-b46e-1984-088f-861ac8952331@samsung.com>
 <20190701095842.fvganvycce2cy7jn@flea>
 <CA+E=qVdsYV2Bxk245=Myq=otd7-7WHzUnSJN8_1dciAzvSOG8g@mail.gmail.com>
 <20190709085532.cdqv7whuesrjs64c@flea>
 <CA+E=qVdz4vfU3rtTTKjYdM+4UA+=FWheJfWOMaDtFMnWQ1rHbw@mail.gmail.com>
 <20190710114042.ybgavnxb4hgqrtor@flea>
 <CA+E=qVdFoT137pADfxz3uMwhOqjqrA9+6hBeOfbJxuH-M-3Pjw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+E=qVdFoT137pADfxz3uMwhOqjqrA9+6hBeOfbJxuH-M-3Pjw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_131559_449270_FE26E909 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Sean Paul <seanpaul@chromium.org>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 03:11:04PM -0700, Vasily Khoruzhick wrote:
> On Wed, Jul 10, 2019 at 4:40 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > There's another issue: if we introduce edp-connector we'll have to
> > > > > specify power up delays somewhere (in dts? or in platform driver?), so
> > > > > edp-connector doesn't really solve the issue of multiple panels with
> > > > > same motherboard.
> > > >
> > > > And that's what that compatible is about :)
> > >
> > > Sorry, I fail to see how it would be different from using existing
> > > panels infrastructure and different panels compatibles. I think Rob's
> > > idea was to introduce generic edp-connector.
> >
> > Again, there's no such thing as a generic edp-connector. The spec
> > doesn't define anything related to the power sequence for example.
> >
> > > If we can't make it generic then let's use panel infrastructure.
> >
> > Which uses a device specific compatible. Really, I'm not sure what
> > your objection and / or argument is here.
> >
> > In addition, when that was brought up in the discussion, you rejected
> > it because it was inconvenient:
> > https://patchwork.freedesktop.org/patch/283012/?series=56163&rev=1#comment_535206
>
> It is inconvenient, but I don't understand how having board-specific
> connectors fixes it.

How it would not fix it?

You'll have one connector, without the need to describe each and every
panel in the device tree and rely on the EDID instead, and you'll have
the option to power up the regulator you need.

I really don't understand what's the issue here, so let's take a step
back. What are is the issue , what are your requirements, and how
would you like that to be described ?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
