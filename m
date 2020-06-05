Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB691EFFB2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 20:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gpJzlq63yPs+F/PyAwpNWzWBFkYWSpuglRat5UTZyEc=; b=ljAMkZJR88NJgtj2c+QYhsqDe
	rgej06cNOp3NvUY+9Moj2U3WbbWHvLaFV2Hgti6QXt73fDMbjU8e+STX/Qj1GjT2FdPirhCX8jmt+
	U8hzFkeIwavh2SOmo4JJ2x3eH8KEDlksHwR55JwDIJs96N1Ju/xK+FA61fLmKwgovT1NSxKvRaxuM
	vdghq2eJBq7kTMWe1o2HDmWU7AkBa1ndjv3QUe+LB+B3We97yBsDnMXQBaRZpuT4E900IzEuwcreP
	snThOZ5mFTJ/vnqJSJbOKxP6rmSJtX3ihYLdYGd6fUlhoZ4gMfIAN2HTp6YSamxo0MTPFFMKUMTal
	Nl3ukpXXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhGoC-00043P-Rl; Fri, 05 Jun 2020 18:11:12 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhGo6-00042q-Bd; Fri, 05 Jun 2020 18:11:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D2843AF48;
 Fri,  5 Jun 2020 18:11:07 +0000 (UTC)
Message-ID: <977dd9ba222d8c513b09743da5cb53fd14bfd9a0.camel@suse.de>
Subject: Re: [PATCH v3 004/105] clk: bcm: Add BCM2711 DVP driver
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Fri, 05 Jun 2020 20:11:01 +0200
In-Reply-To: <20200605174329.hf5d6oulmcewzw63@gilmour.lan>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <6615a61b8af240e3d10f8890e4b2462ccdaac9b9.1590594512.git-series.maxime@cerno.tech>
 <faacbc33174e77500e04e609a654c5810045cb42.camel@suse.de>
 <20200605174329.hf5d6oulmcewzw63@gilmour.lan>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_111106_708512_30D71576 
X-CRM114-Status: GOOD (  24.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Phil Elwell <phil@raspberrypi.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0556242293147229779=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0556242293147229779==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-+FKCCfaEGN1+KOjI+Hug"


--=-+FKCCfaEGN1+KOjI+Hug
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-06-05 at 19:43 +0200, Maxime Ripard wrote:
> Hi Nicolas,
>=20
> On Thu, Jun 04, 2020 at 07:26:07PM +0200, Nicolas Saenz Julienne wrote:
> > On Wed, 2020-05-27 at 17:47 +0200, Maxime Ripard wrote:
> > > The HDMI block has a block that controls clocks and reset signals to =
the
> > > HDMI0 and HDMI1 controllers.
> >=20
> > Why not having two separate drivers?
>=20
> They share the same address space, so it wouldn't really make sense to
> split it into two drivers and an MFD, especially when the clock/reset
> association is fairly common.

Fair enough.

>=20
> > > Let's expose that through a clock driver implementing a clock and res=
et
> > > provider.
> > >=20
> > > Cc: Michael Turquette <mturquette@baylibre.com>
> > > Cc: Stephen Boyd <sboyd@kernel.org>
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Cc: linux-clk@vger.kernel.org
> > > Cc: devicetree@vger.kernel.org
> > > Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > ---
> > >  drivers/clk/bcm/Kconfig           |  11 +++-
> > >  drivers/clk/bcm/Makefile          |   1 +-
> > >  drivers/clk/bcm/clk-bcm2711-dvp.c | 127 ++++++++++++++++++++++++++++=
+++-
> > >  3 files changed, 139 insertions(+)
> > >  create mode 100644 drivers/clk/bcm/clk-bcm2711-dvp.c
> > >=20
> > > diff --git a/drivers/clk/bcm/Kconfig b/drivers/clk/bcm/Kconfig
> > > index 8c83977a7dc4..784f12c72365 100644
> > > --- a/drivers/clk/bcm/Kconfig
> > > +++ b/drivers/clk/bcm/Kconfig
> > > @@ -1,4 +1,15 @@
> > >  # SPDX-License-Identifier: GPL-2.0-only
> > > +
> > > +config CLK_BCM2711_DVP
> > > +	tristate "Broadcom BCM2711 DVP support"
> > > +	depends on ARCH_BCM2835 ||COMPILE_TEST
> > > +	depends on COMMON_CLK
> > > +	default ARCH_BCM2835
> > > +	select RESET_SIMPLE
> > > +	help
> > > +	  Enable common clock framework support for the Broadcom BCM2711
> > > +	  DVP Controller.
> > > +
> > >  config CLK_BCM2835
> > >  	bool "Broadcom BCM2835 clock support"
> > >  	depends on ARCH_BCM2835 || ARCH_BRCMSTB || COMPILE_TEST
> > > diff --git a/drivers/clk/bcm/Makefile b/drivers/clk/bcm/Makefile
> > > index 0070ddf6cdd2..2c1349062147 100644
> > > --- a/drivers/clk/bcm/Makefile
> > > +++ b/drivers/clk/bcm/Makefile
> > > @@ -6,6 +6,7 @@ obj-$(CONFIG_CLK_BCM_KONA)	+=3D clk-kona-setup.o
> > >  obj-$(CONFIG_CLK_BCM_KONA)	+=3D clk-bcm281xx.o
> > >  obj-$(CONFIG_CLK_BCM_KONA)	+=3D clk-bcm21664.o
> > >  obj-$(CONFIG_COMMON_CLK_IPROC)	+=3D clk-iproc-armpll.o clk-iproc-pll=
.o
> > > clk-iproc-asiu.o
> > > +obj-$(CONFIG_CLK_BCM2835)	+=3D clk-bcm2711-dvp.o
> > >  obj-$(CONFIG_CLK_BCM2835)	+=3D clk-bcm2835.o
> > >  obj-$(CONFIG_CLK_BCM2835)	+=3D clk-bcm2835-aux.o
> > >  obj-$(CONFIG_CLK_RASPBERRYPI)	+=3D clk-raspberrypi.o
> > > diff --git a/drivers/clk/bcm/clk-bcm2711-dvp.c b/drivers/clk/bcm/clk-
> > > bcm2711-
> > > dvp.c
> > > new file mode 100644
> > > index 000000000000..c1c4b5857d32
> > > --- /dev/null
> > > +++ b/drivers/clk/bcm/clk-bcm2711-dvp.c
> > > @@ -0,0 +1,127 @@
> > > +// SPDX-License-Identifier: GPL-2.0-or-later
> > > +// Copyright 2020 Cerno
> > > +
> > > +#include <linux/clk-provider.h>
> > > +#include <linux/module.h>
> > > +#include <linux/platform_device.h>
> > > +#include <linux/reset-controller.h>
> > > +#include <linux/reset/reset-simple.h>
> > > +
> > > +#define DVP_HT_RPI_SW_INIT	0x04
> > > +#define DVP_HT_RPI_MISC_CONFIG	0x08
> > > +
> > > +#define NR_CLOCKS	2
> > > +#define NR_RESETS	6
> > > +
> > > +struct clk_dvp {
> > > +	struct clk_hw_onecell_data	*data;
> > > +	struct reset_simple_data	reset;
> > > +};
> > > +
> > > +static const struct clk_parent_data clk_dvp_parent =3D {
> > > +	.index	=3D 0,
> > > +};
> > > +
> > > +static int clk_dvp_probe(struct platform_device *pdev)
> > > +{
> > > +	struct clk_hw_onecell_data *data;
> > > +	struct resource *res;
> > > +	struct clk_dvp *dvp;
> > > +	void __iomem *base;
> > > +	int ret;
> > > +
> > > +	dvp =3D devm_kzalloc(&pdev->dev, sizeof(*dvp), GFP_KERNEL);
> > > +	if (!dvp)
> > > +		return -ENOMEM;
> > > +	platform_set_drvdata(pdev, dvp);
> > > +
> > > +	dvp->data =3D devm_kzalloc(&pdev->dev,
> > > +				 struct_size(dvp->data, hws, NR_CLOCKS),
> > > +				 GFP_KERNEL);
> > > +	if (!dvp->data)
> > > +		return -ENOMEM;
> > > +	data =3D dvp->data;
> > > +
> > > +	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > > +	base =3D devm_ioremap_resource(&pdev->dev, res);
> >=20
> > I think the cool function to use these days is
> > devm_platform_get_and_ioremap_resource().
>=20
> i'll change it, thanks!

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-+FKCCfaEGN1+KOjI+Hug
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7airUACgkQlfZmHno8
x/6RAwgAoMvooAyRe7S9Zeth+KfsqdhHw7fSaIfcyW+1B1hAhY9U35yLYXdM9MqY
aYWnkeHuMN+ic3frCKcxnR4ySNuiDgvYl9jFOhaEZZePo7dnVoLVrOTaMBs421SQ
0+roDhCtWXx2tUMKkNLK7w7YRMyDrHP0xFO0+3gFV0k4dD4bBQYwTpT7Yz9k6Big
wDDlyAeh+Tj5UlMZ7ADJx4Du6nPMDk0P/urKo0AyrnegExOBwlDLKDInRHZg5+G8
VzgHMoQylpyo3hTBHpSYv2ZXtk3MwvJHi22o42gDzKSfsy6xCrI+/FxdJ+JFmd5i
Eb0zIV6tEQZNERBn5IILIGn3CWeKzA==
=i89s
-----END PGP SIGNATURE-----

--=-+FKCCfaEGN1+KOjI+Hug--



--===============0556242293147229779==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0556242293147229779==--


