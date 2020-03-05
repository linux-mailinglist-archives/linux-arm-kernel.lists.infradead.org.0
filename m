Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A26B179D04
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 01:52:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WgazoQoXDYgmkMX0yxboR7CwVDiYlPqXQg918u0Twxo=; b=pbZRe4oawT7Yvd
	ODr8ALR6zu8t0lGCqfWOak9cX4HwNUi42cfT1+GfVpJsk+TFoJYI89KTvHAva2GbBox00wc7fN/jJ
	eC+fKM5U72/V8Av3g0WEdSpn1Ac9py2DcZpcNI1SC1klC+rkDq/gRpqVQu7+I3iiS0Q2dNadZa9K7
	JQpC9svMYeDtdS0vk3K9Lc8mVbg8jOr8L5NlyryUBbouOYJl3NkfwSgjCLRNvLO2gd4nDiK3GhhZC
	fF+5QHxO/6c7IbgjTOnH2URxsXW3wdNnPQKI3fthC/3aBoV5ONmrGGzUIYdvJGf2PYuuVWrz/NGo1
	D4cxHlDicLE59QJzcAFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ekC-0004Dd-RD; Thu, 05 Mar 2020 00:52:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ek0-00049U-E9; Thu, 05 Mar 2020 00:51:59 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j9ejr-0001D9-7L; Thu, 05 Mar 2020 01:51:47 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 1/2] ARM: Rockchip: Handle rk3288/rk3288w revision
Date: Thu, 05 Mar 2020 01:51:46 +0100
Message-ID: <35989681.7qWAQounLj@diego>
In-Reply-To: <5fa8402863c7fb4171d8b2021a776b9ac0be1596.camel@collabora.com>
References: <20200302155703.278421-1-mylene.josserand@collabora.com>
 <2221545.2vEflg7qi2@diego>
 <5fa8402863c7fb4171d8b2021a776b9ac0be1596.camel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_165156_626659_D2EF6FC6 
X-CRM114-Status: GOOD (  35.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: =?ISO-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@collabora.com>,
 sboyd@kernel.org, mturquette@baylibre.com, linux@armlinux.org.uk,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ezequiel,

Am Donnerstag, 5. M=E4rz 2020, 01:03:30 CET schrieb Ezequiel Garcia:
> Hi Heiko,
> =

> On Wed, 2020-03-04 at 11:59 +0100, Heiko St=FCbner wrote:
> > Hi,
> > =

> > Am Montag, 2. M=E4rz 2020, 16:57:02 CET schrieb Myl=E8ne Josserand:
> > > Determine which revision of rk3288 by checking the HDMI version.
> > > According to the Rockchip BSP kernel, on rk3288w, the HDMI
> > > revision equals 0x1A which is not the case for the rk3288 [1].
> > > =

> > > As these SOC have some differences, the new function
> > > 'soc_is_rk3288w' will help us to know on which revision
> > > we are.
> > =

> > what happened to just having a different compatible in the dts?
> > Aka doing a =

> > =

> > rk3288w.dtsi with
> > =

> > #include "rk3288.dtsi"
> > =

> > &cru {
> > 	compatible =3D "rockchip,rk3288w-cru";
> > }
> > =

> =

> I guess you have something like this in mind:
> =

> static void __init rk3288_clk_init(struct device_node *np)
> {
>         __rk3288_clk_init(np, RK3288_SOC_REV_RK3288W);
> }
> CLK_OF_DECLARE(rk3288_cru, "rockchip,rk3288-cru", rk3288_clk_init);
> =

> static void __init rk3288w_clk_init(struct device_node *np)
> {
>         __rk3288_clk_init(np, RK3288_SOC_REV_RK3288);
> }
> CLK_OF_DECLARE(rk3288_cru, "rockchip,rk3288w-cru", rk3288w_clk_init);
> =

> And the rest is mostly untouched, except the revision is
> no longer queried and is now passed by the DT?

Essentially yes, but I guess I was more thinking along the lines of
the rk3188/rk3066a/rk3188a (drivers/clk/rockchip/clk-rk3188.c)


> This would be cleaner for the kernel, with the obvious
> drawback being that you now have to maintain
> another DTS.

Right now we would end up with the pretty minimal devicetree
having just that cru. So not very invasive.


> This could be an inconvenience. I believe
> RK3288W is meant as a direct replacement for RK3288,
> so folks building products would expect to just use
> RK3288W, and not really bother with passing a
> different DTS or what not.

Not sure I follow. As below, I don't think boards will magically switch
between soc variants, so a boards devicetree should just include
the variant - especially as I don't really know how many
additional new boards we will see with it (rk3288 being quite old itself).


> > I somehow don't expect boards to just switch between soc variants
> > on the fly.
> > =

> =

> While I agree they are nasty, quirks like this
> are not uncommon.
> =

> > Also, doing things in mach-rockchip is not very future-proof:
> > =

> =

> There is actually no reason to keep this in mach-rockchip, right?
> =

> The quirk could be placed in other places. For instance,
> directly in the clock driver.

Mapping the hdmi controller inside the clock driver to read some "random"
register that hopefully indicates an (undocumented) distinction between soc
variants.

Somehow just having that minimal devicetree for the "w" sounds
way cleaner ;-) .


It's definitly cool to have support for the rk3288w but I don't like
adding hacks for something that is after all some sort of niche product.


Heiko


> > (1) having random soc-specific APIs spanning the kernel feels wrong,
> >     especially as at some point it might not be contained to our own sp=
ecial
> >     drivers like the cru. I cannot really see people being enthusiastic=
 if
> >     something like this would be needed in say the core Analogix-DP bri=
dge ;-)
> > (2) I guess the rk3288w will not be the last soc doing this and on arm6=
4 you
> >     can't do it that way, as there is no mach-rockchip there
> > =

> > So my personal preference would really would be just a specific compati=
ble
> > for affected ip blocks.
> > =

> > Heiko
> > =

> > > [1]:https://github.com/rockchip-linux/u-boot/blob/f992fe3334aa5090acb=
448261982628b5a3d37a5/arch/arm/include/asm/arch-rockchip/cpu.h#L30..L34
> > > =

> > > Signed-off-by: Myl=E8ne Josserand <mylene.josserand@collabora.com>
> > > ---
> > >  arch/arm/mach-rockchip/rockchip.c | 45 +++++++++++++++++++++++++++++=
++
> > >  include/soc/rockchip/revision.h   | 22 +++++++++++++++
> > >  2 files changed, 67 insertions(+)
> > >  create mode 100644 include/soc/rockchip/revision.h
> > > =

> > > diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockch=
ip/rockchip.c
> > > index f9797a2b5d0d..b907ba390093 100644
> > > --- a/arch/arm/mach-rockchip/rockchip.c
> > > +++ b/arch/arm/mach-rockchip/rockchip.c
> > > @@ -9,12 +9,14 @@
> > >  #include <linux/kernel.h>
> > >  #include <linux/init.h>
> > >  #include <linux/io.h>
> > > +#include <linux/of_address.h>
> > >  #include <linux/of_platform.h>
> > >  #include <linux/irqchip.h>
> > >  #include <linux/clk-provider.h>
> > >  #include <linux/clocksource.h>
> > >  #include <linux/mfd/syscon.h>
> > >  #include <linux/regmap.h>
> > > +#include <soc/rockchip/revision.h>
> > >  #include <asm/mach/arch.h>
> > >  #include <asm/mach/map.h>
> > >  #include <asm/hardware/cache-l2x0.h>
> > > @@ -22,6 +24,49 @@
> > >  #include "pm.h"
> > >  =

> > >  #define RK3288_TIMER6_7_PHYS 0xff810000
> > > +#define RK3288_HDMI_REV_REG	0x04
> > > +#define RK3288W_HDMI_REV	0x1A
> > > +
> > > +static const struct of_device_id rk3288_dt_hdmi_match[] __initconst =
=3D {
> > > +	{ .compatible =3D "rockchip,rk3288-dw-hdmi" },
> > > +	{ }
> > > +};
> > > +
> > > +int rk3288_get_revision(void)
> > > +{
> > > +	static int revision =3D RK3288_SOC_REV_UNKNOWN;
> > > +	struct device_node *dn;
> > > +	void __iomem *hdmi_base;
> > > +
> > > +	if (revision !=3D RK3288_SOC_REV_UNKNOWN)
> > > +		return revision;
> > > +
> > > +	dn =3D of_find_matching_node(NULL, rk3288_dt_hdmi_match);
> > > +	if (!dn) {
> > > +		pr_err("%s: Couldn't find HDMI node\n", __func__);
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	hdmi_base =3D of_iomap(dn, 0);
> > > +	of_node_put(dn);
> > > +
> > > +	if (!hdmi_base) {
> > > +		pr_err("%s: Couldn't map %pOF regs\n", __func__,
> > > +		       hdmi_base);
> > > +		return -ENXIO;
> > > +	}
> > > +
> > > +	if (readl_relaxed(hdmi_base + RK3288_HDMI_REV_REG) =3D=3D
> > > +	    RK3288W_HDMI_REV)
> > > +		revision =3D RK3288_SOC_REV_RK3288W;
> > > +	else
> > > +		revision =3D RK3288_SOC_REV_RK3288;
> > > +
> > > +	iounmap(hdmi_base);
> > > +
> > > +	return revision;
> > > +}
> > > +EXPORT_SYMBOL(rk3288_get_revision);
> > >  =

> > >  static void __init rockchip_timer_init(void)
> > >  {
> > > diff --git a/include/soc/rockchip/revision.h b/include/soc/rockchip/r=
evision.h
> > > new file mode 100644
> > > index 000000000000..226419c60af0
> > > --- /dev/null
> > > +++ b/include/soc/rockchip/revision.h
> > > @@ -0,0 +1,22 @@
> > > +/* SPDX-License-Identifier: GPL-2.0-only */
> > > +/*
> > > + * Copyright 2020 Collabora
> > > + */
> > > +
> > > +#ifndef __SOC_ROCKCHIP_REVISION_H__
> > > +#define __SOC_ROCKCHIP_REVISION_H__
> > > +
> > > +enum rk3288_soc_revision {
> > > +	RK3288_SOC_REV_UNKNOWN,
> > > +	RK3288_SOC_REV_RK3288,
> > > +	RK3288_SOC_REV_RK3288W,
> > > +};
> > > +
> > > +int rk3288_get_revision(void);
> > > +
> > > +static inline bool soc_is_rk3288w(void)
> > > +{
> > > +	return rk3288_get_revision() =3D=3D RK3288_SOC_REV_RK3288W;
> > > +}
> > > +
> > > +#endif /* __SOC_ROCKCHIP_REVISION_H__ */
> > > =

> > =

> > =

> > =

> > =

> =

> =

> =






_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
