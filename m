Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD0E1F57F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 17:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D7OhqZhHAUg9kld3wq+pRmRBRjaNTmXl+W3f2wiUFfE=; b=PGLOoxZc9LYEewUNbEi4uMTRj
	0eHqzgm1A+fay6C7729vk9z/q7XaEBNax+YqoVV5w0wX1nQAqNI5tIXBHn4QSUghB9KPyEeuqNuoY
	AY0G4t0LVJovS6B4lhKijuLvsKOI5cgM63sVmmVeQy3sPIylu69J+JFKXnkFhbp892oTS3hGDdekL
	4itXk5+2L4I5H/l2Q2yuyTY6+SNbHHi7D3k+YyQNOLtm44t2/Qgg8Izga9L45ppc2aleNrX+D/j0T
	Ixk3jfI17YiB0tX9UajOHVZahojCLtu6ER7bW2RkVnC1UleRQjd0JvGpY+yaUZmbItWIBm8DqHtJe
	CYTzO7kRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj2nw-0000k3-3V; Wed, 10 Jun 2020 15:38:16 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj2nn-0000jI-NU; Wed, 10 Jun 2020 15:38:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9CE7BAE33;
 Wed, 10 Jun 2020 15:38:09 +0000 (UTC)
Message-ID: <82a21cbdca6bced2ee8e4e5a857faaa31a672193.camel@suse.de>
Subject: Re: [PATCH v2 2/9] reset: Add Raspberry Pi 4 firmware reset controller
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <florian.fainelli@broadcom.com>, f.fainelli@gmail.com, 
 gregkh@linuxfoundation.org, wahrenst@gmx.net, p.zabel@pengutronix.de, 
 linux-kernel@vger.kernel.org
Date: Wed, 10 Jun 2020 17:37:58 +0200
In-Reply-To: <6ab60539-5aa2-17dc-21d5-1bae9ec259f6@broadcom.com>
References: <20200609175003.19793-1-nsaenzjulienne@suse.de>
 <20200609175003.19793-3-nsaenzjulienne@suse.de>
 <6ab60539-5aa2-17dc-21d5-1bae9ec259f6@broadcom.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_083808_056539_801B1A1F 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: tim.gover@raspberrypi.org, mathias.nyman@linux.intel.com,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 andy.shevchenko@gmail.com, lorenzo.pieralisi@arm.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 helgaas@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3308893103036020790=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3308893103036020790==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-iY+/tawMFmcwHBpEZ1lp"


--=-iY+/tawMFmcwHBpEZ1lp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-06-09 at 11:14 -0700, Florian Fainelli wrote:
>=20
> On 6/9/2020 10:49 AM, Nicolas Saenz Julienne wrote:
> > Raspberry Pi 4's co-processor controls some of the board's HW
> > initialization process, but it's up to Linux to trigger it when
> > relevant. Introduce a reset controller capable of interfacing with
> > RPi4's co-processor that models these firmware initialization routines =
as
> > reset lines.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> >=20
> > ---
> >=20
> > Changes since v1:
> >   - Make the whole driver less USB centric as per Florian's comments
> >=20
> >  drivers/reset/Kconfig             |  11 +++
> >  drivers/reset/Makefile            |   1 +
> >  drivers/reset/reset-raspberrypi.c | 126 ++++++++++++++++++++++++++++++
> >  3 files changed, 138 insertions(+)
> >  create mode 100644 drivers/reset/reset-raspberrypi.c
> >=20
> > diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> > index d9efbfd29646..97e848740e13 100644
> > --- a/drivers/reset/Kconfig
> > +++ b/drivers/reset/Kconfig
> > @@ -140,6 +140,17 @@ config RESET_QCOM_PDC
> >  	  to control reset signals provided by PDC for Modem, Compute,
> >  	  Display, GPU, Debug, AOP, Sensors, Audio, SP and APPS.
> > =20
> > +config RESET_RASPBERRYPI
> > +	tristate "Raspberry Pi 4 Firmware Reset Driver"
> > +	depends on RASPBERRYPI_FIRMWARE || (RASPBERRYPI_FIRMWARE=3Dn &&
> > COMPILE_TEST)
> > +	default USB_XHCI_PCI
> > +	help
> > +	  Raspberry Pi 4's co-processor controls some of the board's HW
> > +	  initialization process, but it's up to Linux to trigger it when
> > +	  relevant. This driver provides a reset controller capable of
> > +	  interfacing with RPi4's co-processor and model these firmware
> > +	  initialization routines as reset lines.
> > +
> >  config RESET_SCMI
> >  	tristate "Reset driver controlled via ARM SCMI interface"
> >  	depends on ARM_SCMI_PROTOCOL || COMPILE_TEST
> > diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> > index 249ed357c997..16947610cc3b 100644
> > --- a/drivers/reset/Makefile
> > +++ b/drivers/reset/Makefile
> > @@ -21,6 +21,7 @@ obj-$(CONFIG_RESET_OXNAS) +=3D reset-oxnas.o
> >  obj-$(CONFIG_RESET_PISTACHIO) +=3D reset-pistachio.o
> >  obj-$(CONFIG_RESET_QCOM_AOSS) +=3D reset-qcom-aoss.o
> >  obj-$(CONFIG_RESET_QCOM_PDC) +=3D reset-qcom-pdc.o
> > +obj-$(CONFIG_RESET_RASPBERRYPI) +=3D reset-raspberrypi.o
> >  obj-$(CONFIG_RESET_SCMI) +=3D reset-scmi.o
> >  obj-$(CONFIG_RESET_SIMPLE) +=3D reset-simple.o
> >  obj-$(CONFIG_RESET_STM32MP157) +=3D reset-stm32mp1.o
> > diff --git a/drivers/reset/reset-raspberrypi.c b/drivers/reset/reset-
> > raspberrypi.c
> > new file mode 100644
> > index 000000000000..5fc8c6319a20
> > --- /dev/null
> > +++ b/drivers/reset/reset-raspberrypi.c
> > @@ -0,0 +1,126 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Raspberry Pi 4 firmware reset driver
> > + *
> > + * Copyright (C) 2020 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > + */
> > +#include <linux/delay.h>
> > +#include <linux/device.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/reset-controller.h>
> > +#include <soc/bcm2835/raspberrypi-firmware.h>
> > +
> > +struct rpi_reset {
> > +	struct reset_controller_dev rcdev;
> > +	struct rpi_firmware *fw;
> > +};
> > +
> > +enum rpi_reset_ids {
> > +	RASPBERRYPI_FIRMWARE_RESET_ID_USB,
>=20
> You should probably move this to a header file under
> include/dt-bindings/reset/ in order to ensure that what gets referenced
> by the DTS is in sync with what the driver knows about.
>=20
> With that:
>=20
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

Thanks! Will fix that on v3.

Regards,
Nicolas


--=-iY+/tawMFmcwHBpEZ1lp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7g/lYACgkQlfZmHno8
x/64wwf/RYKRcYtQrYP84kh2wNnt3cg/Wpd0S0ByYf3aEG+uXl+47UxwFvgXD9Tt
BK/xqLnRFfh/6zlU/3EDUB3zsWySdJbXHr2zRLZeTbRF7oAQ3cEcWBs91l8hmc8V
Rjm8Fhv7PlmW8EsPmR8uhlI2aCqtN4zJfppNClZP4SNL3L1aLTO1RwQkwwWLdZbp
ffSWvsFeGUIKvEeWj+UTgABfQN9KDnDFfsLvLXsmHEhLjYJ8Nc+HHLiuWcseU2Bg
amIjktOYU2r6oUihyqB5Sou67Cq5zEJXHCKN/WFzCLc+5KsAaAMsIQa9tABTBOcp
N2OVcD5P30BJgAL8WcjZJsWtKqDftg==
=8vmx
-----END PGP SIGNATURE-----

--=-iY+/tawMFmcwHBpEZ1lp--



--===============3308893103036020790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3308893103036020790==--


