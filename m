Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C681C1D16
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=58178w8rtdoHnKBUEIZYZq6ebEVwBnF4JLZ+oxQ2BZ0=; b=NcTGl2ZxKCQMIyqjtWw26d65f
	pF6Etab1WudMtBdxESjrl01CgZT2f7pDNoY1qz2i+LxjiiG0gnTAcY3lSSyBsOVsqLd0PfiKbEf+I
	b74upLtVLYRuWfU/MxgZtzGvSKh64kMKHlnXcXImijHWF/ClBR0iOP9DiY8Yt+1xhLfHv6VRmXVu0
	TE4zid1pCpbV3f4FIgJk/9HLk2ryBVlh82kZJCcJlIX0VaNwFIQcEckb2wokFn3Vbc40Z93wJFnbN
	jQ3OmzNTM+8sbfmM4R8Q5LJ+leod3YC/IbtwsEZp/mDSW6CWl2Gg5cqDBuolRM5EsdBS5uQG4g9N1
	f1a7TlfcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqyG-0002Fz-PY; Mon, 30 Sep 2019 08:23:52 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqw7-0000Oh-5n
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:21:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9329CAF7E;
 Mon, 30 Sep 2019 08:21:37 +0000 (UTC)
Message-ID: <84cee6b1523fc67aeb5a48666229437fa33e07d2.camel@suse.de>
Subject: Re: [PATCH V3 6/8] ARM: bcm: Add support for BCM2711 SoC
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>, Florian Fainelli
 <f.fainelli@gmail.com>,  Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,  Ray Jui
 <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Date: Mon, 30 Sep 2019 10:21:35 +0200
In-Reply-To: <c420bf03-784e-073f-b0d7-471d0fb48d22@gmx.net>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <1569672435-19823-7-git-send-email-wahrenst@gmx.net>
 <6b251871-59ae-6040-cbbc-74207b2169f3@gmail.com>
 <c420bf03-784e-073f-b0d7-471d0fb48d22@gmx.net>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_012139_522141_BA7680AB 
X-CRM114-Status: GOOD (  23.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, devicetree@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com
Content-Type: multipart/mixed; boundary="===============2211876158456325123=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2211876158456325123==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Myrx/pu0R5B67LIndQoy"


--=-Myrx/pu0R5B67LIndQoy
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2019-09-29 at 01:09 +0200, Stefan Wahren wrote:
> Am 28.09.19 um 21:16 schrieb Florian Fainelli:
> > On 9/28/2019 5:07 AM, Stefan Wahren wrote:
> > > Add the BCM2711 to ARCH_BCM2835, but use new machine board code
> > > because of the differences.
> > >=20
> > > Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> > > Reviewed-by: Eric Anholt <eric@anholt.net>
> > > ---
> > >  arch/arm/mach-bcm/Kconfig    |  3 ++-
> > >  arch/arm/mach-bcm/Makefile   |  3 ++-
> > >  arch/arm/mach-bcm/bcm2711.c  | 24 ++++++++++++++++++++++++
> > >  arch/arm64/Kconfig.platforms |  5 +++--
> > >  4 files changed, 31 insertions(+), 4 deletions(-)
> > >  create mode 100644 arch/arm/mach-bcm/bcm2711.c
> > >=20
> > > diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
> > > index 5e5f1fa..39bcbea 100644
> > > --- a/arch/arm/mach-bcm/Kconfig
> > > +++ b/arch/arm/mach-bcm/Kconfig
> > > @@ -161,6 +161,7 @@ config ARCH_BCM2835
> > >  	select GPIOLIB
> > >  	select ARM_AMBA
> > >  	select ARM_ERRATA_411920 if ARCH_MULTI_V6
> > > +	select ARM_GIC if ARCH_MULTI_V7
> > >  	select ARM_TIMER_SP804
> > >  	select HAVE_ARM_ARCH_TIMER if ARCH_MULTI_V7
> > >  	select TIMER_OF
> > Are not we missing a select ZONE_DMA here?
> Yes. I think for arm and arm64.

No need in arm64, see arch/arm64/Kconfig:270.

> > > @@ -169,7 +170,7 @@ config ARCH_BCM2835
> > >  	select PINCTRL_BCM2835
> > >  	select MFD_CORE
> > >  	help
> > > -	  This enables support for the Broadcom BCM2835 and BCM2836 SoCs.
> > > +	  This enables support for the Broadcom BCM2711 and BCM283x SoCs.
> > >  	  This SoC is used in the Raspberry Pi and Roku 2 devices.
> > >=20
> > >  config ARCH_BCM_53573
> > > diff --git a/arch/arm/mach-bcm/Makefile b/arch/arm/mach-bcm/Makefile
> > > index b59c813..7baa8c9 100644
> > > --- a/arch/arm/mach-bcm/Makefile
> > > +++ b/arch/arm/mach-bcm/Makefile
> > > @@ -42,8 +42,9 @@ obj-$(CONFIG_ARCH_BCM_MOBILE_L2_CACHE) +=3D
> > > kona_l2_cache.o
> > >  obj-$(CONFIG_ARCH_BCM_MOBILE_SMC) +=3D bcm_kona_smc.o
> > >=20
> > >  # BCM2835
> > > -obj-$(CONFIG_ARCH_BCM2835)	+=3D board_bcm2835.o
> > >  ifeq ($(CONFIG_ARCH_BCM2835),y)
> > > +obj-y				+=3D board_bcm2835.o
> > > +obj-y				+=3D bcm2711.o
> > >  ifeq ($(CONFIG_ARM),y)
> > >  obj-$(CONFIG_SMP)		+=3D platsmp.o
> > >  endif
> > > diff --git a/arch/arm/mach-bcm/bcm2711.c b/arch/arm/mach-bcm/bcm2711.=
c
> > > new file mode 100644
> > > index 0000000..dbe2967
> > > --- /dev/null
> > > +++ b/arch/arm/mach-bcm/bcm2711.c
> > > @@ -0,0 +1,24 @@
> > > +// SPDX-License-Identifier: GPL-2.0+
> > > +/*
> > > + * Copyright (C) 2019 Stefan Wahren
> > > + */
> > > +
> > > +#include <linux/of_address.h>
> > > +
> > > +#include <asm/mach/arch.h>
> > > +
> > > +#include "platsmp.h"
> > > +
> > > +static const char * const bcm2711_compat[] =3D {
> > > +#ifdef CONFIG_ARCH_MULTI_V7
> > > +	"brcm,bcm2711",
> > > +#endif
> > > +};
> > > +
> > > +DT_MACHINE_START(BCM2711, "BCM2711")
> > > +#ifdef CONFIG_ZONE_DMA
> > > +	.dma_zone_size	=3D SZ_1G,
> > > +#endif
> > > +	.dt_compat =3D bcm2711_compat,
> > > +	.smp =3D smp_ops(bcm2836_smp_ops),
> > > +MACHINE_END
> > > diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platfo=
rms
> > > index 16d7614..b5d31dc 100644
> > > --- a/arch/arm64/Kconfig.platforms
> > > +++ b/arch/arm64/Kconfig.platforms
> > > @@ -37,11 +37,12 @@ config ARCH_BCM2835
> > >  	select PINCTRL
> > >  	select PINCTRL_BCM2835
> > >  	select ARM_AMBA
> > > +	select ARM_GIC
> > >  	select ARM_TIMER_SP804
> > >  	select HAVE_ARM_ARCH_TIMER
> > >  	help
> > > -	  This enables support for the Broadcom BCM2837 SoC.
> > > -	  This SoC is used in the Raspberry Pi 3 device.
> > > +	  This enables support for the Broadcom BCM2837 and BCM2711 SoC.
> > > +	  This SoC is used in the Raspberry Pi 3 and 4 device.
> > Nit:
> >=20
> > These SoCs are used in the Raspberry Pi 3 and 4 devices.
> >=20
> > With that:
> >=20
> > Acked-by: Florian Fainelli <f.fainelli@gmail.com>


--=-Myrx/pu0R5B67LIndQoy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2Ruw8ACgkQlfZmHno8
x/607gf/T7F1F9TuUbe8aIGsRlSvNgxZPSTGgLBGeDZRYw6phxrx+UNH8Nb2jsfo
ab03yUsBptZfAuk4o6HSdQK2EPmUNo4SgKVTONXY0tNli/bQYVBz5/1VYVSQe12e
jKq+cMrl9XfyaLw+OFEHUHwDeFRrmGBILkXbxA30bmGV3tQY2DMHGjPMeJB8NfhW
d2W7TotzlPRW6kRpCcqaTY/0rEl8++x1hXd+O9aNK17ARwbpH7WJ1Vrk2gA4bLDD
3PzHo5PHQfgBrEDwG8lMfT5fLDzMKJN0dBMhq+8ndFKMEA045Xv7HlWr+tRn90A3
mfl96C1tEBdZqejT5xaSNuBKr7O75Q==
=XPxo
-----END PGP SIGNATURE-----

--=-Myrx/pu0R5B67LIndQoy--



--===============2211876158456325123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2211876158456325123==--


