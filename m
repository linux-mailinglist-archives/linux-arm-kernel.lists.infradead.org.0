Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AD212E507
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 11:42:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iUMDdkmCiSTniExZloH15+lGyfQYOeYN5xcEZiQ+eTQ=; b=ITq855agpcVHwd
	ghaIaNS/tU4uUi+tSg/oTja+frvDg0FYc5r8mtqz3D8mX1fVn00aaPRKOXUkztHI8KYMhz0Nox/N/
	jIOlNbp4mSMizSB4y3I1vd76zvutCABznEUKcwrxs5LMPD1+gsPP2ZsJQA1FfAfoKrKS7poyP7tp1
	nKl/uOhIVmHu+R7FUbzm3AqYXkObxw/6Dcrj1H4/BjLcuaeQc/Kz1ZATfpeZsofDAm4zGzkaqymVx
	KE/5q2Q/56gPx5cDMZ8u4e0kE/CHukupg5pgxEJVUV20QXLlynUqpzTzGnStoDBgMp+okDJvCS2lV
	yshi7Ewhgs4ik8TMAq7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imxvw-0005UG-Ed; Thu, 02 Jan 2020 10:42:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imxvo-0005TQ-4Q
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 10:42:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B5FFA328;
 Thu,  2 Jan 2020 02:42:17 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7830A3F703;
 Thu,  2 Jan 2020 02:42:16 -0800 (PST)
Date: Thu, 2 Jan 2020 10:41:58 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 3/3] ARM: dts: sun8i: R40: Add SPI controllers nodes and
 pinmuxes
Message-ID: <20200102104158.06d9baa0@donnerap.cambridge.arm.com>
In-Reply-To: <20200102095711.dkd2cnbyitz6mvyx@gilmour.lan>
References: <20200102012657.9278-1-andre.przywara@arm.com>
 <20200102012657.9278-4-andre.przywara@arm.com>
 <20200102095711.dkd2cnbyitz6mvyx@gilmour.lan>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_024220_261117_E0A14FDD 
X-CRM114-Status: GOOD (  25.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2 Jan 2020 10:57:11 +0100
Maxime Ripard <mripard@kernel.org> wrote:

Hi Maxime,

thanks for having a look!

> On Thu, Jan 02, 2020 at 01:26:57AM +0000, Andre Przywara wrote:
> > The Allwinner R40 SoC contains four SPI controllers, using the newer
> > sun6i design (but at the legacy addresses).
> > The controller seems to be fully compatible to the A64 one, so no driver
> > changes are necessary.
> > The first three controller can be used on two sets of pins, but SPI3 is
> > only routed to one set on Port A.
> >
> > Tested by connecting a SPI flash to a Bananapi M2 Berry on the SPI0
> > PortC header pins.
> >
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  arch/arm/boot/dts/sun8i-r40.dtsi | 89 ++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 89 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> > index 8dcbc4465fbb..af437391dcf4 100644
> > --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> > +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> > @@ -418,6 +418,41 @@
> >  				bias-pull-up;
> >  			};
> >
> > +			spi0_pc_pins: spi0-pc-pins {
> > +				pins = "PC0", "PC1", "PC2", "PC23";
> > +				function = "spi0";
> > +			};
> > +
> > +			spi0_pi_pins: spi0-pi-pins {
> > +				pins = "PI10", "PI11", "PI12", "PI13", "PI14";
> > +				function = "spi0";
> > +			};  
> 
> This split doesn't really work though :/
> 
> The PC pins group has MOSI, MISO, CLK and CS0, while the PI pins group
> has CS0, CLK, MOSI, MISO and CS1.
> 
> Meaning that if a board uses a GPIO CS pin, we can't really express
> that

Does that actually work? I dimly remember checking our sunxi driver a while ago and I wasn't sure that would be functional there.

> and any board using the PI pins for its SPI bus will try to
> claim CS0 and CS1, no matter how many devices are connected on the bus
> (and if there's one, there might be something else connected to PI14).

True.

> And you can't have a board using CS1 with the PC signals either.
> 
> You should split away the CS pins into separate groups, like we're
> doing with the A20 for example.

Ah, yeah, makes sense, thanks for the pointer.
 
> And please add /omit-if-no-ref/ to those groups.

I was a bit reluctant to do this:
First there does not seem to be any good documentation about it, neither in the official DT spec nor in dtc, even though I think I understand what it does ;-)
Second it seems to break in U-Boot atm. Looks like applying your dtc patch fixes that, though. Do you know if U-Boot allows cherry-picking dtc patches? If yes, I could post your patch.

But more importantly: what are the guidelines for using this tag? I understand the desire to provide every possible pin description on one hand, but wanting to avoid having *all of them* in *each* .dtb on the other.
But how does this play along with overlays? Shouldn't at least those interface pins that are exposed on headers stay in each .dtb? Can we actually make this decision in the SoC .dtsi file?
And should there be a dtc command line option to ignore those tags, or even to apply this tag (virtually) to every node?

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
