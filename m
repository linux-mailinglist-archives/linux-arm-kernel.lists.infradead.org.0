Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 029005ED0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 21:58:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUn8Frq5GEzsupKmpOrn+fa18LKff3ulgzjO4WpbWU8=; b=CRh0pN2dyLNA5A
	YKSGJTmGrJUS6WgfkBtlOQhY3WnVUEPbqSb9YT+tbuM8UgPm6+ScibX/d2LvJU9QmOzehzA0YR0R8
	dP8APKQtLtRcunkWrZeYkB8UeGSqVgvKHxb9JExOZwCTP0jMjxnItJY+ltLNoRna9uONjbTPQDPDf
	kSn3Jtckhw0ABO8vnwJMQZ5hYjwBt3zv2DTF+vIWpZsxWxT52bWRqUzN1cdOX+447ikkXs5CblL7c
	9WtCzQ7Saj37E/T+rzjmkSLoyVGpv3JB6+baWxTPzy2ESKmu6Hmg+sCMVKvo3GhowSoYE+HPaCLgU
	JhN2QPWTQyG+N2orsOYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hilOm-0008JH-Gz; Wed, 03 Jul 2019 19:58:36 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hilOX-0008Hs-6a
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 19:58:23 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 742B8240004;
 Wed,  3 Jul 2019 19:57:58 +0000 (UTC)
Date: Wed, 3 Jul 2019 17:30:56 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 01/25] arm64: dts: allwinner: Switch A64 dts(i) to use
 SPDX identifier
Message-ID: <20190703153056.jhks4yb4ag56rrx5@flea>
References: <20190703124609.21435-1-jagan@amarulasolutions.com>
 <20190703124609.21435-2-jagan@amarulasolutions.com>
 <20190703132838.nhewz5wzsijl65s5@flea>
 <CAMty3ZDyx_RSkU=OndsvzS5reOzab0DBkrarSeHt+-gtsdyKuQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMty3ZDyx_RSkU=OndsvzS5reOzab0DBkrarSeHt+-gtsdyKuQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_125821_554157_7DB7D576 
X-CRM114-Status: GOOD (  20.62  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
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
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 07:52:27PM +0530, Jagan Teki wrote:
> On Wed, Jul 3, 2019 at 6:58 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Wed, Jul 03, 2019 at 06:15:45PM +0530, Jagan Teki wrote:
> > > Adopt the SPDX license identifier headers to ease license
> > > compliance management on Allwinner A64 dts(i) files.
> > >
> > > While the text specifies "of the GPL or the X11 license"
> > > but the actual license text matches the MIT license as
> > > specified at [0]
> > >
> > > [0] https://spdx.org/licenses/MIT.html
> > >
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > ---
> > >  .../dts/allwinner/sun50i-a64-bananapi-m64.dts | 39 +------------------
> > >  .../dts/allwinner/sun50i-a64-nanopi-a64.dts   | 39 +------------------
> > >  .../dts/allwinner/sun50i-a64-olinuxino.dts    | 39 +------------------
> > >  .../dts/allwinner/sun50i-a64-orangepi-win.dts | 39 +------------------
> > >  .../dts/allwinner/sun50i-a64-pine64-plus.dts  | 39 +------------------
> > >  .../boot/dts/allwinner/sun50i-a64-pine64.dts  | 39 +------------------
> > >  .../allwinner/sun50i-a64-sopine-baseboard.dts | 39 +------------------
> > >  .../boot/dts/allwinner/sun50i-a64-sopine.dtsi | 39 +------------------
> > >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 39 +------------------
> > >  9 files changed, 9 insertions(+), 342 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> > > index 208373efee49..efdd84c362b0 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> > > @@ -1,43 +1,6 @@
> > > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> >
> > You say that this is a GPL2 only license
> >
> > >  /*
> > >   * Copyright (c) 2016 ARM Ltd.
> > > - *
> > > - * This file is dual-licensed: you can use it either under the terms
> > > - * of the GPL or the X11 license, at your option. Note that this dual
> > > - * licensing only applies to this file, and not this project as a
> > > - * whole.
> > > - *
> > > - *  a) This library is free software; you can redistribute it and/or
> > > - *     modify it under the terms of the GNU General Public License as
> > > - *     published by the Free Software Foundation; either version 2 of the
> > > - *     License, or (at your option) any later version.
> >
> > While this is GPL2 or later.
>
> Yes, this is where I was confused with compared to existing
> architectures. It seems like it is a call from author of the file or
> make GPL-2.0 for generic purpose [1], not really sure.

What are you confused about? This is GPL2 or later, and it shouldn't
really be changed (unless we have the consent of all the contributors
of all the DTs, but that's a can of worm I don't want to reopen).

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
