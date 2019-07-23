Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1903071948
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:32:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gN9z6nYn9kN5FpWt4a4ibeMEd1Ic0R/ulCkp3TCeXIc=; b=hf5vGmNwDXcNpdAFL9e8JctTY
	HEA/qWN3x0fQeudTE6PYseyvEm5OTwXPWJt9x+12b2xB8/+Ap8KmtsWWAsE9UxXyn+ZJxYhlX40S/
	U+LPbhKJOHO/lNcfj5hUPjWDFRc01Or/wdz7OONHjB2MN3Yr+p/5Ji8bqz3vxF63CGICBezK68pzw
	jj2uZSmdg8ExpU8bwHcpWECPDgNGYFgwgAP8Jr496gszUmuTAkgMsQbmww2fx9jqJMPoxzmv7ZVeZ
	JbfjiAD0+hQK26ekkFCWGuZ9QGv8Hn9qxmw3OkuvqHTcoy9ri4RB2GiyQelid43K07+slr+o5dtmZ
	6VF65qyYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpuuP-0001Ne-FU; Tue, 23 Jul 2019 13:32:49 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hputv-00016g-SU; Tue, 23 Jul 2019 13:32:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1E57CAEFC;
 Tue, 23 Jul 2019 13:32:14 +0000 (UTC)
Message-ID: <04c5eaa03f3a124dbbce6186e11e19acc4539cc8.camel@suse.de>
Subject: Re: [PATCH 00/18] ARM: Add minimal Raspberry Pi 4 support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Christoph Hellwig <hch@lst.de>, Stefan Wahren <wahrenst@gmx.net>
Date: Tue, 23 Jul 2019 15:32:11 +0200
In-Reply-To: <20190723093442.GA27239@lst.de>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
 <96113adb5fcab9c2f4bb5fa82b84ff5f9c07fd07.camel@suse.de>
 <bc650090-db86-ccac-01dc-23f08ad7b19b@gmx.net>
 <20190723093442.GA27239@lst.de>
User-Agent: Evolution 3.32.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_063220_269406_32BE4E9B 
X-CRM114-Status: GOOD (  24.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Matthias Brugger <mbrugger@suse.com>, Stephen Boyd <sboyd@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7968231298019261399=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7968231298019261399==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-3BnHBRqm9Yrvkdvr/sj8"


--=-3BnHBRqm9Yrvkdvr/sj8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-07-23 at 11:34 +0200, Christoph Hellwig wrote:
> On Mon, Jul 22, 2019 at 08:10:17PM +0200, Stefan Wahren wrote:
> > i rebased this series also and got this only on the RPi 4.
> >=20
> > After reverting the following:
> >=20
> > 79a986721de dma-mapping: remove dma_max_pfn
> > 7559d612dff0 mmc: core: let the dma map ops handle bouncing
> >=20
> > This crash disappear, but wifi seems to be still broken.
> >=20
> > Would be nice, if you can investigate further.
>=20
> That means dma addressing on this system doesn't just work for some
> memory, and the mmc bounce buffering was papering over that just for
> mmc.  Do you have highmem on this system?=20
>=20
> You might want to try this series, which has been submitted upstream:
>=20
> http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/arm-swiot=
lb

Hi Christoph,
I tried your series on top of Stefan's, it has no effect. I guess it's no
surprise as with mult_v7_defconfig, you get SWIOTLB=3Dn & LPAE=3Dn.

FYI DMA addressing constraints for RPi4 are the following: devices can only
access the first GB of ram even though the board might have up to 4GB of ra=
m.
The DMA addresses are aliased with a 0xc0000000 offset. So 0x00000000 phys =
is
aliased to 0xc0000000 in DMA. This is the same as for an RFC you commented =
last
week trying to fix similar issues for arm64.

You state in "arm: use swiotlb for bounce buffer on LPAE configs" that "The=
 DMA
API requires that 32-bit DMA masks are always supported". If I understand i=
t
correctly this device breaks that assumption. Which implies we need a bounc=
e
buffer system in place for any straming DMA user.

It seems we're unable to use dma-direct/swiotlb, so I enabled arm's dmaboun=
ce
on all devices hooked into RPi's limited interconnect, which fixes this iss=
ue.
Any thoughts on this?

diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
index 5e5f1fabc3d4..3db8deed83a6 100644
--- a/arch/arm/mach-bcm/Kconfig
+++ b/arch/arm/mach-bcm/Kconfig
@@ -168,6 +168,7 @@ config ARCH_BCM2835
        select PINCTRL
        select PINCTRL_BCM2835
        select MFD_CORE
+       select DMABOUNCE
        help
          This enables support for the Broadcom BCM2835 and BCM2836 SoCs.
          This SoC is used in the Raspberry Pi and Roku 2 devices.
diff --git a/arch/arm/mach-bcm/board_bcm2835.c b/arch/arm/mach-bcm/board_bc=
m2835.c
index c09cf25596af..be788849c4bb 100644
--- a/arch/arm/mach-bcm/board_bcm2835.c
+++ b/arch/arm/mach-bcm/board_bcm2835.c
@@ -3,6 +3,8 @@
  * Copyright (C) 2010 Broadcom
  */
=20
+#include <linux/device.h>
+#include <linux/dma-mapping.h>
 #include <linux/init.h>
 #include <linux/irqchip.h>
 #include <linux/of_address.h>
@@ -24,8 +26,37 @@ static const char * const bcm2835_compat[] =3D {
        NULL
 };
=20
+static int bcm2835_needs_bounce(struct device *dev, dma_addr_t dma_addr, s=
ize_t size)
+{
+       /*
+        * The accepted dma addresses are [0xc0000000, 0xffffffff] which ma=
p to
+        * ram's [0x00000000, 0x3fffffff].
+        */
+       return dma_addr < 3ULL * SZ_1G;
+}
+
+/*
+ * Setup DMA mask to 1GB on devices hanging from soc interconnect
+ */
+static int bcm2835_platform_notify(struct device *dev)
+{
+       if (dev->parent && !strcmp("soc", dev_name(dev->parent))) {
+               dev->dma_mask =3D &dev->coherent_dma_mask;
+               dev->coherent_dma_mask =3D DMA_BIT_MASK(30); /* 1GB */
+               dmabounce_register_dev(dev, 2048, 4096, bcm2835_needs_bounc=
e);
+       }
+
+       return 0;
+}
+
+void __init bcm2835_init_early(void)
+{
+       platform_notify =3D bcm2835_platform_notify;
+}
+
 DT_MACHINE_START(BCM2835, "BCM2835")
        .dma_zone_size  =3D SZ_1G,
        .dt_compat =3D bcm2835_compat,
        .smp =3D smp_ops(bcm2836_smp_ops),
+       .init_early =3D bcm2835_init_early,
 MACHINE_END

 Regards,
 Nicolas


--=-3BnHBRqm9Yrvkdvr/sj8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl03DFsACgkQlfZmHno8
x/7E7wgAg5ZRyyHT+Sv4XB1YCgc3dStZGLkySlCiLAKb9xI4p+UkRQxZrY302Msy
nhA2fjeqEDh/uPimRPi+Zq6B6R+Eq+QLthsYCItdSVDTnlkT4+tMhQzAevLgoTc+
cnrw4mMyvGMxS1XaR71HROZMw2f0Nc6gE9M8UHSIEv6priSerUb6yqEirkyFg1NA
/1UguxmSGM2/RKf1U24bFpZhWHVrX9BXB1fR/9xriMUHNofZJrqgUNabZNzSWxbM
kJjehqaGzMTATGya8Q4rjWNBcdzHr0H7xr+yI3G9tnwsbBruLBFDfZ+lITwSz8wI
C3HoZjs8IJRAclbo8Au1SK2GpvCLJA==
=5u5q
-----END PGP SIGNATURE-----

--=-3BnHBRqm9Yrvkdvr/sj8--



--===============7968231298019261399==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7968231298019261399==--


