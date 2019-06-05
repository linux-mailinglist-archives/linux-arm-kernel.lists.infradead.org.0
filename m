Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B0C35CC7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TAuUYaEkDrqA8k7qF2/0IrmWozmwjQFZMnl/d/T3IjA=; b=rc/bVYV1ARVxuj24ryHbN4JNk
	AoH+lBg6A0pXzmmWNnSfy9iL49szSYAp0nwIAEHdzz4Mc0SXIzH95HG3ezgX14+rcMYcyp8YSMmZm
	isEMKFm6G5zmAJkeHEd+DGgJJstCOJ6je46C5hFk95fxaNrCvVYQlmPUs1Ixj/7d6Qc1lVto4jLnf
	jhfMbUZ6bTEblXKNRpe3o3qZ9OGS6VljJJBOutI0z3SiagzZrrx2rBPu20BEltbk1EX7H0di3aQEr
	6ifwI4nr15hX4V/oRkZX/Cl8BA0A1xmii41XFdLyzofAtu6+7pQGwp++YvMyvftW0EDdb2Nzt1BrU
	8OxIDBo6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUzt-0005wx-NM; Wed, 05 Jun 2019 12:26:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUwx-0001E3-64; Wed, 05 Jun 2019 12:24:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id ECA9FAEF8;
 Wed,  5 Jun 2019 12:23:24 +0000 (UTC)
Message-ID: <3455ad811500486a9144bb45a0e0933c533e5b66.camel@suse.de>
Subject: Re: [PATCH 2/4] clk: bcm283x: add driver interfacing with Raspberry
 Pi's firmware
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>, linux-kernel@vger.kernel.org
Date: Wed, 05 Jun 2019 14:23:22 +0200
In-Reply-To: <7ff78cd1-3c39-925d-c66c-f7f295fe6d6e@gmx.net>
References: <20190604173223.4229-1-nsaenzjulienne@suse.de>
 <20190604173223.4229-3-nsaenzjulienne@suse.de>
 <7ff78cd1-3c39-925d-c66c-f7f295fe6d6e@gmx.net>
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_052328_249896_4D628693 
X-CRM114-Status: GOOD (  28.14  )
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 linux-pm@vger.kernel.org, sboyd@kernel.org, viresh.kumar@linaro.org,
 mturquette@baylibre.com, ptesarik@suse.com, rjw@rjwysocki.net, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: multipart/mixed; boundary="===============6002131643741916918=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6002131643741916918==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-CaIs5UzJsQf89/5WfJE7"


--=-CaIs5UzJsQf89/5WfJE7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stefan,
thanks for your review.

On Wed, 2019-06-05 at 12:44 +0200, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> Am 04.06.19 um 19:32 schrieb Nicolas Saenz Julienne:
> > Raspberry Pi's firmware offers and interface though which update it's
> > clock's frequencies. This is specially useful in order to change the CP=
U
> > clock (pllb_arm) which is 'owned' by the firmware and we're unable to
> > scale using the register interface.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >=20
> > Changes since RFC:
> >   - Moved firmware interface into own driver
> >   - Use of_find_compatible_node()
> >   - Remove error message on rpi_firmware_get() failure
> >   - Ratelimit messages on set_rate() failure
> >   - Use __le32 on firmware interface definition
> >=20
> >  drivers/clk/bcm/Makefile          |   1 +
> >  drivers/clk/bcm/clk-raspberrypi.c | 316 ++++++++++++++++++++++++++++++
> >  2 files changed, 317 insertions(+)
> >  create mode 100644 drivers/clk/bcm/clk-raspberrypi.c
> >=20
> > diff --git a/drivers/clk/bcm/Makefile b/drivers/clk/bcm/Makefile
> > index 002661d39128..07abe92df9d1 100644
> > --- a/drivers/clk/bcm/Makefile
> > +++ b/drivers/clk/bcm/Makefile
> > @@ -7,6 +7,7 @@ obj-$(CONFIG_CLK_BCM_KONA)	+=3D clk-bcm21664.o
> >  obj-$(CONFIG_COMMON_CLK_IPROC)	+=3D clk-iproc-armpll.o clk-iproc-pll.o
> > clk-iproc-asiu.o
> >  obj-$(CONFIG_ARCH_BCM2835)	+=3D clk-bcm2835.o
> >  obj-$(CONFIG_ARCH_BCM2835)	+=3D clk-bcm2835-aux.o
> > +obj-$(CONFIG_ARCH_BCM2835)	+=3D clk-raspberrypi.o
> Hm, on the one side it would be nice to avoid building this driver in
> case the firmware driver is disabled on the other side it would be good
> to keep compile test.
> >  obj-$(CONFIG_ARCH_BCM_53573)	+=3D clk-bcm53573-ilp.o
> >  obj-$(CONFIG_CLK_BCM_CYGNUS)	+=3D clk-cygnus.o
> >  obj-$(CONFIG_CLK_BCM_HR2)	+=3D clk-hr2.o
> > diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-
> > raspberrypi.c
> > new file mode 100644
> > index 000000000000..485c00288414
> > --- /dev/null
> > +++ b/drivers/clk/bcm/clk-raspberrypi.c
> > @@ -0,0 +1,316 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright (C) 2019 Nicolas Saenz Julienne
> > + */
> > +
> > +#include <linux/clkdev.h>
> > +#include <linux/clk-provider.h>
> > +#include <linux/io.h>
> > +#include <linux/module.h>
> > +#include <linux/platform_device.h>
> > +
> > +#include <soc/bcm2835/raspberrypi-firmware.h>
> > +
> > +#define RPI_FIRMWARE_ARM_CLK_ID		0x000000003
> > +
> > +#define RPI_FIRMWARE_STATE_ENABLE_BIT	0x1
> > +#define RPI_FIRMWARE_STATE_WAIT_BIT	0x2
> how about using the BIT() macro?
> > +
> > +/*
> > + * Even though the firmware interface alters 'pllb' the frequencies ar=
e
> > + * provided as per 'pllb_arm'. We need to scale before passing them tr=
ough.
> > + */
> > +#define RPI_FIRMWARE_PLLB_ARM_DIV_RATE	2
> > +
> > +#define A2W_PLL_FRAC_BITS		20
> > +
> > +struct raspberrypi_clk {
> > +	struct device *dev;
> > +	struct rpi_firmware *firmware;
> > +
> > +	unsigned long min_rate;
> > +	unsigned long max_rate;
> > +
> > +	struct clk_hw pllb;
> > +	struct clk_hw *pllb_arm;
> > +	struct clk_lookup *pllb_arm_lookup;
> > +};
> > +
> > +/*
> > + * Structure of the message passed to Raspberry Pi's firmware in order=
 to
> > + * change clock rates. The 'disable_turbo' option is only available to=
 the
> > ARM
> > + * clock (pllb) which we enable by default as turbo mode will alter
> > multiple
> > + * clocks at once.
> > + *
> > + * Even though we're able to access the clock registers directly we're
> > bound to
> > + * use the firmware interface as the firmware ultimately takes care of
> > + * mitigating overheating/undervoltage situations and we would be chan=
ging
> > + * frequencies behind his back.
> > + *
> > + * For more information on the firmware interface check:
> > + * https://github.com/raspberrypi/firmware/wiki/Mailbox-property-inter=
face
> > + */
> > +struct raspberrypi_firmware_prop {
> > +	__le32 id;
> > +	__le32 val;
> > +	__le32 disable_turbo;
> > +} __packed;
> > +
> > +static int raspberrypi_clock_property(struct rpi_firmware *firmware, u=
32
> > tag,
> > +				      u32 clk, u32 *val)
> > +{
> > +	struct raspberrypi_firmware_prop msg =3D {
> > +		.id =3D clk,
> > +		.val =3D *val,
> > +		.disable_turbo =3D 1,
> > +	};
> > +	int ret;
> > +
> > +	ret =3D rpi_firmware_property(firmware, tag, &msg, sizeof(msg));
> > +	if (ret)
> > +		return ret;
> > +
> > +	*val =3D msg.val;
> > +
> > +	return 0;
> > +}
> > +
> > +static int raspberrypi_fw_pll_is_on(struct clk_hw *hw)
> > +{
> > +	struct raspberrypi_clk *rpi =3D container_of(hw, struct raspberrypi_c=
lk,
> > +						   pllb);
> > +	u32 val =3D 0;
> > +	int ret;
> > +
> > +	ret =3D raspberrypi_clock_property(rpi->firmware,
> > +					 RPI_FIRMWARE_GET_CLOCK_STATE,
> > +					 RPI_FIRMWARE_ARM_CLK_ID, &val);
> > +	if (ret)
> > +		return 0;
> > +
> > +	return !!(val & RPI_FIRMWARE_STATE_ENABLE_BIT);
> > +}
> > +
> > +
> > +static unsigned long raspberrypi_fw_pll_get_rate(struct clk_hw *hw,
> > +						 unsigned long parent_rate)
> > +{
> > +	struct raspberrypi_clk *rpi =3D container_of(hw, struct raspberrypi_c=
lk,
> > +						   pllb);
> > +	u32 val =3D 0;
> > +	int ret;
> > +
> > +	ret =3D raspberrypi_clock_property(rpi->firmware,
> > +					 RPI_FIRMWARE_GET_CLOCK_RATE,
> > +					 RPI_FIRMWARE_ARM_CLK_ID,
> > +					 &val);
> > +	if (ret)
> > +		return ret;
> > +
> > +	return val * RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
> > +}
> > +
> > +static int raspberrypi_fw_pll_on(struct clk_hw *hw)
> > +{
> > +	struct raspberrypi_clk *rpi =3D container_of(hw, struct raspberrypi_c=
lk,
> > +						   pllb);
> > +	u32 val;
> > +	int ret;
> > +
> > +	val =3D RPI_FIRMWARE_STATE_ENABLE_BIT | RPI_FIRMWARE_STATE_WAIT_BIT;
> > +
> > +	ret =3D raspberrypi_clock_property(rpi->firmware,
> > +					 RPI_FIRMWARE_SET_CLOCK_STATE,
> > +					 RPI_FIRMWARE_ARM_CLK_ID, &val);
> > +	if (ret)
> > +		return ret;
> > +
> > +	return 0;
> return ret;
> > +}
> > +
> > +static int raspberrypi_fw_pll_set_rate(struct clk_hw *hw, unsigned lon=
g
> > rate,
> > +				       unsigned long parent_rate)
> > +{
> > +	struct raspberrypi_clk *rpi =3D container_of(hw, struct raspberrypi_c=
lk,
> > +						   pllb);
> > +	u32 new_rate =3D rate / RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
> > +	int ret;
> > +
> > +	ret =3D raspberrypi_clock_property(rpi->firmware,
> > +					 RPI_FIRMWARE_SET_CLOCK_RATE,
> > +					 RPI_FIRMWARE_ARM_CLK_ID,
> > +					 &new_rate);
> > +	if (ret)
> > +		dev_err_ratelimited(rpi->dev, "Failed to change %s frequency:
> > %d",
> > +				    clk_hw_get_name(hw), ret);
> > +
> > +	return ret;
> > +}
> > +
> > +/*
> > + * Sadly there is no firmware rate rounding interface. We borred it fr=
om
> borrowed?

Yes

> > + * clk-bcm2835.
> > + */
> > +static long raspberrypi_pll_round_rate(struct clk_hw *hw, unsigned lon=
g
> > rate,
> > +				       unsigned long *parent_rate)
> > +{
> > +	struct raspberrypi_clk *rpi =3D container_of(hw, struct raspberrypi_c=
lk,
> > +						   pllb);
> > +	u64 div, final_rate;
> > +	u32 ndiv, fdiv;
> > +
> > +	rate =3D clamp(rate, rpi->min_rate, rpi->max_rate);
> > +
> > +	div =3D (u64)rate << A2W_PLL_FRAC_BITS;
> > +	do_div(div, *parent_rate);
> > +
> > +	ndiv =3D div >> A2W_PLL_FRAC_BITS;
> > +	fdiv =3D div & ((1 << A2W_PLL_FRAC_BITS) - 1);
> > +
> > +	/* We can't use rate directly as it would overflow */
> > +	final_rate =3D ((u64)*parent_rate * ((ndiv << A2W_PLL_FRAC_BITS) + fd=
iv));
> > +
> > +	return final_rate >> A2W_PLL_FRAC_BITS;
> > +}
> > +
> > +static void raspberrypi_fw_pll_off(struct clk_hw *hw)
> > +{
> > +	struct raspberrypi_clk *rpi =3D container_of(hw, struct raspberrypi_c=
lk,
> > +						   pllb);
> > +	u32 val =3D RPI_FIRMWARE_STATE_WAIT_BIT;
> > +
> > +	raspberrypi_clock_property(rpi->firmware,
> > +				   RPI_FIRMWARE_SET_CLOCK_STATE,
> > +				   RPI_FIRMWARE_ARM_CLK_ID, &val);
> > +}
> I'm not sure. Does this operation really make sense?

You're right, I implemented it mindlessly as I saw the API available in the
firmware interface. I'll remove both prepare and unprepare as one is redund=
ant
and the other harmful (though I wonder what whould happen if called).

Regards,
Nicolas


--=-CaIs5UzJsQf89/5WfJE7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlz3tDsACgkQlfZmHno8
x/7O3Qf+PrJ/wkQhLSFrJaROEcNj//C0XizXWMOpsuRjn+bdm+w1i0ea9R7LAvuq
v6vUqz9PQkIuP10YfD7xVhQhTTCkCjooavG0fCCmwry3fjT+UHCXihjegTlmuoIQ
T0XTLdIcmhHRC6YW4lJFg5zfp8qj0ZgQzyHVToP2BUaX0ZT7+2sXT3Anyzz218TF
LaeXkMoMGcZo1B5ajXfEgV/cAe+iU3zCIyAUJ9OIiJyeusA0DejX5KivhlrDWEsH
mxqgc7DqxtvR8hqsdwgjlYSxOhV3R6qRFaXNihCBG/0XFQvaLZb4l1Wp42JVeG3t
HmK4vqzmdr/VkSzW/NaQRejkuS1U9g==
=paIB
-----END PGP SIGNATURE-----

--=-CaIs5UzJsQf89/5WfJE7--



--===============6002131643741916918==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6002131643741916918==--


