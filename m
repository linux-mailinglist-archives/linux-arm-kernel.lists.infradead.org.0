Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83613223C4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 17:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzJ1MfOkdzggGtl/voNUhLdYd8soykXW32Um8YRBl7Q=; b=HrE2r+hsp0gDau
	Wb4XfjvbvsKzHyPzvTXqvjBPxR8wmZkYq/bmNCIRw2axPG+Z/trjYPnuRAuDFy6qMZ0WaT4hrlFx7
	lMULFWm82xAetleL/EbUBWZcIWP8FDP/OX6wF8UmeM0551HoxLEZLnIUB8ZEsJ30xKvqiLdyAnmlr
	r7uHffbYbWGZWhhLqZk69mzIeVU+ShyZzT1w+ZgZcVYm2te7Ui4BQ/ju4xaCdWIBOw9UHRwDvTTOg
	hL7zuIbVjZCgA7uDuN5L0+6fZ+M9dFjPPlH3m7UQ6UzwDrbq2LwtEdSHaEcEY9lfLBcx7aRm3MTLo
	lftEHeuXpfv97uhnh0wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hS0vr-0006bz-O9; Sat, 18 May 2019 15:07:31 +0000
Received: from mailoutvs18.siol.net ([185.57.226.209] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hS0vk-0006b9-3o
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 15:07:26 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 0CAD3520CA6;
 Sat, 18 May 2019 17:07:13 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 5YviEmiBTKUs; Sat, 18 May 2019 17:07:12 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id B1759520CBE;
 Sat, 18 May 2019 17:07:12 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id E64AC520CA6;
 Sat, 18 May 2019 17:07:11 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH] ARM: dts: sun8i-h3: Fix wifi in Beelink X2 DT
Date: Sat, 18 May 2019 17:07:11 +0200
Message-ID: <36237813.UWQAqNRFN9@jernej-laptop>
In-Reply-To: <20190517073048.y6mzgbhhryfmuckl@flea>
References: <20190516161039.18534-1-jernej.skrabec@siol.net>
 <20190517073048.y6mzgbhhryfmuckl@flea>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_080724_317470_D43C8D3A 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.209 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne petek, 17. maj 2019 ob 09:30:48 CEST je Maxime Ripard napisal(a):
> Hi,
> 
> On Thu, May 16, 2019 at 06:10:39PM +0200, Jernej Skrabec wrote:
> > mmc1 node where wifi module is connected doesn't have properly defined
> > power supplies so wifi module is never powered up. Fix that by
> > specifying additional power supplies.
> > 
> > Additionally, this STB may have either Realtek or Broadcom based wifi
> > module. One based on Broadcom module also needs external clock to work
> > properly. Fix that by adding clock property to wifi_pwrseq node.
> > 
> > Fixes: e582b47a9252 ("ARM: dts: sun8i-h3: Add dts for the Beelink X2 STB")
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  arch/arm/boot/dts/sun8i-h3-beelink-x2.dts | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/sun8i-h3-beelink-x2.dts
> > b/arch/arm/boot/dts/sun8i-h3-beelink-x2.dts index
> > 6277f13f3eb3..6a0ac85b4616 100644
> > --- a/arch/arm/boot/dts/sun8i-h3-beelink-x2.dts
> > +++ b/arch/arm/boot/dts/sun8i-h3-beelink-x2.dts
> > @@ -89,7 +89,10 @@
> > 
> >  	wifi_pwrseq: wifi_pwrseq {
> >  	
> >  		compatible = "mmc-pwrseq-simple";
> > 
> > +		pinctrl-names = "default";
> 
> pinctrl-names only make sense with another pinctrl-[0-255]
> property. Did you forgot something here?

No, I just took BananaPi M2+ as a example, which has pinctrl-names property 
too and no "pinctrl-*". But digging through history of this DT, it seems that 
this is just leftover which somebody forgot to remove.

I'll send v2.

Best regards,
Jernej



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
