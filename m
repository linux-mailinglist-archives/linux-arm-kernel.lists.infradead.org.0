Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB7935955
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:12:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6JrC5nR+9Y9Ta3rOgb1WT8Kr241fDfCt8KfxYlUe1TM=; b=VGCSF7c4Esv+mhc0x3SJz53Pe
	MWpZ2cu3bD/aoOz71hqDi+rpZ5s6S4wZH/w+Bot9ROQo7oMnq//jShEYTLTCW85CefcE1Sua0NfrK
	8TFnBY/8vT1ym9SXjSkVgn+fAQfNuoq0YOqehyHmcyaZwRjAWGOIUydNYdjQ9VfgRePOyng2UpNpK
	Ou7AsPAJrHFN0vhuVOF+izJgzEMu3g+QIOz5AKBKgfU9yZ0+u+GsGGPkUmI0wWkgJyUwJnNucqLKv
	3jFAGNZiJ8L6Rl95SeimJfBz39AtiFSnm3W/elytjoFFAwQ9tPMnKc0j9FyWF9H61PtfWhIY2SaKz
	QoQbKwBEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRyF-0001vX-QQ; Wed, 05 Jun 2019 09:12:35 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRy8-0001v4-FP; Wed, 05 Jun 2019 09:12:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 27ABFAE16;
 Wed,  5 Jun 2019 09:12:27 +0000 (UTC)
Message-ID: <98f49600aa5adea62308a6fa23bca9b3a8007500.camel@suse.de>
Subject: Re: [PATCH 4/4] cpufreq: add driver for Raspbery Pi
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Eric Anholt <eric@anholt.net>, stefan.wahren@i2se.com, "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, Viresh Kumar <viresh.kumar@linaro.org>
Date: Wed, 05 Jun 2019 11:12:25 +0200
In-Reply-To: <87d0jszxxt.fsf@anholt.net>
References: <20190604173223.4229-1-nsaenzjulienne@suse.de>
 <20190604173223.4229-5-nsaenzjulienne@suse.de> <87d0jszxxt.fsf@anholt.net>
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_021228_805765_7AE69FC8 
X-CRM114-Status: GOOD (  23.18  )
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
Cc: f.fainelli@gmail.com, linux-pm@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, ptesarik@suse.com, linux-kernel@vger.kernel.org,
 mbrugger@suse.de, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ssuloev@orpaltech.com
Content-Type: multipart/mixed; boundary="===============8410548274253219249=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8410548274253219249==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-YLOqxA/CMFHs8ZRZMhU9"


--=-YLOqxA/CMFHs8ZRZMhU9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Eric,

On Tue, 2019-06-04 at 17:18 -0700, Eric Anholt wrote:
> Nicolas Saenz Julienne <nsaenzjulienne@suse.de> writes:
>=20
> > Raspberry Pi's firmware offers and interface though which update it's
> > performance requirements. It allows us to request for specific runtime
> > frequencies, which the firmware might or might not respect, depending o=
n
> > the firmware configuration and thermals.
> >=20
> > As the maximum and minimum frequencies are configurable in the firmware
> > there is no way to know in advance their values. So the Raspberry Pi
> > cpufreq driver queries them, builds an opp frequency table to then
> > launch cpufreq-dt.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >=20
> > Changes since RFC:
> >   - Alphabetically ordered relevant stuff
> >   - Updated Kconfig to select firmware interface
> >   - Correctly unref clk_dev after use
> >   - Remove all opps on failure
> >   - Remove use of dev_pm_opp_set_sharing_cpus()
> >=20
> >  drivers/cpufreq/Kconfig.arm           |  8 +++
> >  drivers/cpufreq/Makefile              |  1 +
> >  drivers/cpufreq/raspberrypi-cpufreq.c | 84 +++++++++++++++++++++++++++
> >  3 files changed, 93 insertions(+)
> >  create mode 100644 drivers/cpufreq/raspberrypi-cpufreq.c
> >=20
> > diff --git a/drivers/cpufreq/Kconfig.arm b/drivers/cpufreq/Kconfig.arm
> > index f8129edc145e..556d432cc826 100644
> > --- a/drivers/cpufreq/Kconfig.arm
> > +++ b/drivers/cpufreq/Kconfig.arm
> > @@ -133,6 +133,14 @@ config ARM_QCOM_CPUFREQ_HW
> >  	  The driver implements the cpufreq interface for this HW engine.
> >  	  Say Y if you want to support CPUFreq HW.
> > =20
> > +config ARM_RASPBERRYPI_CPUFREQ
> > +	tristate "Raspberry Pi cpufreq support"
> > +	select RASPBERRYPI_FIRMWARE
> > +	help
> > +	  This adds the CPUFreq driver for Raspberry Pi
> > +
> > +	  If in doubt, say N.
> > +
> >  config ARM_S3C_CPUFREQ
> >  	bool
> >  	help
> > diff --git a/drivers/cpufreq/Makefile b/drivers/cpufreq/Makefile
> > index 689b26c6f949..121c1acb66c0 100644
> > --- a/drivers/cpufreq/Makefile
> > +++ b/drivers/cpufreq/Makefile
> > @@ -64,6 +64,7 @@ obj-$(CONFIG_ARM_PXA2xx_CPUFREQ)	+=3D pxa2xx-cpufreq.=
o
> >  obj-$(CONFIG_PXA3xx)			+=3D pxa3xx-cpufreq.o
> >  obj-$(CONFIG_ARM_QCOM_CPUFREQ_HW)	+=3D qcom-cpufreq-hw.o
> >  obj-$(CONFIG_ARM_QCOM_CPUFREQ_KRYO)	+=3D qcom-cpufreq-kryo.o
> > +obj-$(CONFIG_ARM_RASPBERRYPI_CPUFREQ) 	+=3D raspberrypi-cpufreq.o
> >  obj-$(CONFIG_ARM_S3C2410_CPUFREQ)	+=3D s3c2410-cpufreq.o
> >  obj-$(CONFIG_ARM_S3C2412_CPUFREQ)	+=3D s3c2412-cpufreq.o
> >  obj-$(CONFIG_ARM_S3C2416_CPUFREQ)	+=3D s3c2416-cpufreq.o
> > diff --git a/drivers/cpufreq/raspberrypi-cpufreq.c
> > b/drivers/cpufreq/raspberrypi-cpufreq.c
> > new file mode 100644
> > index 000000000000..2b3a195a9d37
> > --- /dev/null
> > +++ b/drivers/cpufreq/raspberrypi-cpufreq.c
> > @@ -0,0 +1,84 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Raspberry Pi cpufreq driver
> > + *
> > + * Copyright (C) 2019, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > + */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/cpu.h>
> > +#include <linux/cpufreq.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/pm_opp.h>
> > +
> > +static const struct of_device_id machines[] __initconst =3D {
> > +	{ .compatible =3D "raspberrypi,3-model-b-plus" },
> > +	{ .compatible =3D "raspberrypi,3-model-b" },
> > +	{ .compatible =3D "raspberrypi,2-model-b" },
> > +	{ /* sentinel */ }
> > +};
>=20
> I think I'd skip the compatible string check here.  The firmware's
> clock-management should be well-tested by folks playing with clocking in
> the downstream tree.  There aren't any firmware differences in the
> processing of these clock management packets, to my recollection.

Fair enough, I'll remove it.

> Other than that, I'm happy with the series and would give it my
> acked-by.

Thanks!

Regads,
Nicolas


--=-YLOqxA/CMFHs8ZRZMhU9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlz3h3kACgkQlfZmHno8
x/6smgf/UUSqRVE6DWDoOngfdK1dV08nv36oNigDe6Wai1oez3OWjqVnoAwsgSRP
opyBaH52l/mUFOt+yUSfMDzq38C1DhBpgOIc/8loIZNlckblnOM+vzLjGb9e/90K
n2TevvBQhxHpjcA29ad/ss8kNdgDRxJYC8AXKCK/uUm0hjeAtuER2ZrBglGqwTmm
ZP3FU2xNX9FCVkAhI24x1frJaTRvrko29wvnu95ulGMbA1eUB7fn/A6rcA+O8kdK
oqzN7hSQdHaAWc3TFJvUwoP0RGFnMU/eTvPGghPyzOmQLg5th6fDsGTR7KFRYxeV
lqE6qbb0cP8Vw+wwR5iWF4GX9PgCJQ==
=W4hf
-----END PGP SIGNATURE-----

--=-YLOqxA/CMFHs8ZRZMhU9--



--===============8410548274253219249==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8410548274253219249==--


