Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FF219C03A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 13:32:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WYwmzq5MdwIe1QIlnPmCLvYyv7bctXrkEm3uxGKF+K8=; b=Ok7uXHF1DXN0cwY1nHHCEt7hP
	vUCaeoHjpwV0CRoVBvCzUuWSvlHbh6vpXMrVxmUK3+2koDRxFlvmoUROk51uzu7Xb0lgABkcXvSJL
	7zJw2fex6NrMLiH7q6MwYZzc5UaigKKKDu1snI9/z7y8f1ezq5M6oWw5B2wR4fcG1bNRmAtKDATLz
	EabtBIokJA7nMAbsobFcQWkMC6Q+xXV/TwrEQtTMFVU8boaLIF4pFleNoVoBglAFIdfuAlSQhz04A
	/zgBQZ9spbx8LkvepHCbvJm3N4KUbmKovdJBGYTqsYd4hRzeKEk62Q2FnUCPV1gAeq4XKk2BHsKKB
	9p8UxEkiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJy5Y-0003og-KO; Thu, 02 Apr 2020 11:32:48 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJy5R-0003nl-HX; Thu, 02 Apr 2020 11:32:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B6E05ACAE;
 Thu,  2 Apr 2020 11:32:37 +0000 (UTC)
Message-ID: <88456b80396331814fca9c929c2129861aaa35bd.camel@suse.de>
Subject: Re: [PATCH v6 2/4] firmware: raspberrypi: Introduce vl805 init routine
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Thu, 02 Apr 2020 13:32:35 +0200
In-Reply-To: <20200401203717.GA131226@google.com>
References: <20200401203717.GA131226@google.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_043241_867309_6E4BBF60 
X-CRM114-Status: GOOD (  27.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, sergei.shtylyov@cogentembedded.com,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-usb@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, tim.gover@raspberrypi.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-arm-kernel@lists.infradead.org,
 wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============0867294622569613796=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0867294622569613796==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-FiRA9H8TcBeXjrnKFyig"


--=-FiRA9H8TcBeXjrnKFyig
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bjorn,
thanks for taking time with this.

On Wed, 2020-04-01 at 15:37 -0500, Bjorn Helgaas wrote:
> On Tue, Mar 24, 2020 at 07:28:10PM +0100, Nicolas Saenz Julienne wrote:
> > On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either b=
e
> > loaded directly from an EEPROM or, if not present, by the SoC's
> > VideCore. The function informs VideCore that VL805 was just reset, or
> > requests for a probe defer.
>=20
> Cover letter mentions both "VideCore" and "VideoCore".  I dunno which
> is correct, but between the commit log and the comment, this patch
> mentions "VideCore" four times.

Ouch, sorry, it's VideoCore. I have an auto complete thing, wrote it once w=
rong
and polluted the whole patch.

> > Based on Tim Gover's downstream implementation.
>=20
> Maybe a URL?

I was under the impression that adding links in the commit log that are lik=
ely
to be short-lived was frowned upon. That said I could've added it into the
cover letter. For reference here it is:

https://github.com/raspberrypi/linux/commit/9935b4c7e360b4494b4cb6e3ce79723=
8a1ab78bd

> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> >=20
> > ---
> > Changes since v4:
> >  - Inline function definition when RASPBERRYPI_FIRMWARE is not defined
> >=20
> > Changes since v1:
> >  - Move include into .c file and add forward declaration to .h
> >=20
> >  drivers/firmware/raspberrypi.c             | 38 ++++++++++++++++++++++
> >  include/soc/bcm2835/raspberrypi-firmware.h |  7 ++++
> >  2 files changed, 45 insertions(+)
> >=20
> > diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberr=
ypi.c
> > index da26a584dca0..cbb495aff6a0 100644
> > --- a/drivers/firmware/raspberrypi.c
> > +++ b/drivers/firmware/raspberrypi.c
> > @@ -12,6 +12,7 @@
> >  #include <linux/of_platform.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/slab.h>
> > +#include <linux/pci.h>
> >  #include <soc/bcm2835/raspberrypi-firmware.h>
> > =20
> >  #define MBOX_MSG(chan, data28)		(((data28) & ~0xf) | ((chan) &
> > 0xf))
> > @@ -286,6 +287,43 @@ struct rpi_firmware *rpi_firmware_get(struct
> > device_node *firmware_node)
> >  }
> >  EXPORT_SYMBOL_GPL(rpi_firmware_get);
> > =20
> > +/*
> > + * On the Raspberry Pi 4, after a PCI reset, VL805's firmware may eith=
er be
> > + * loaded directly from an EEPROM or, if not present, by the SoC's
> > VideCore.
> > + * Inform VideCore that VL805 was just reset, or defer xhci's probe if=
 not
> > yet
> > + * joinable trough the mailbox interface.
>=20
> s/trough/through/

Noted.

> I don't see anything in this patch that looks like a mailbox
> interface, but maybe that's just because I don't know anything about
> Raspberry Pi.

There are two layers to this. The bcm2835-mailbox interface, that is generi=
c to
all SoC users and the Raspberry Pi firmware driver, which interacts with RP=
i's
custom VideoCore firmware trough the bcm2835-mailbox, and provides a light
level of abstraction. It's like that to keep a clear separation between wha=
t's
a SoC feature an what is RPi specific.

So with a call to rpi_firmware_get() you're supposed to get a handle to the
shared RPi firmware structure. As long as it's ready. To pass messages down=
 the
mailbox, you call rpi_firmware_property(), which takes care of contention,
formating and DMA issues, before passing it into the actual mailbox interfa=
ce
and beyond.

> > + */
> > +int rpi_firmware_init_vl805(struct pci_dev *pdev)
> > +{
> > +	struct device_node *fw_np;
> > +	struct rpi_firmware *fw;
> > +	u32 dev_addr;
> > +	int ret;
> > +
> > +	fw_np =3D of_find_compatible_node(NULL, NULL,
> > +					"raspberrypi,bcm2835-firmware");
> > +	if (!fw_np)
> > +		return 0;
> > +
> > +	fw =3D rpi_firmware_get(fw_np);
> > +	of_node_put(fw_np);
> > +	if (!fw)
> > +		return -EPROBE_DEFER;
> > +
> > +	dev_addr =3D pdev->bus->number << 20 | PCI_SLOT(pdev->devfn) << 15 |
> > +		   PCI_FUNC(pdev->devfn) << 12;
> > +
> > +	ret =3D rpi_firmware_property(fw, RPI_FIRMWARE_NOTIFY_XHCI_RESET,
> > +				    &dev_addr, sizeof(dev_addr));
> > +	if (ret)
> > +		return ret;
> > +
> > +	dev_dbg(&pdev->dev, "loaded Raspberry Pi's VL805 firmware\n");
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(rpi_firmware_init_vl805);
> > +
> >  static const struct of_device_id rpi_firmware_of_match[] =3D {
> >  	{ .compatible =3D "raspberrypi,bcm2835-firmware", },
> >  	{},

[...]

Regards,
Nicolas


--=-FiRA9H8TcBeXjrnKFyig
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6FzVMACgkQlfZmHno8
x/6XXgf+LwwO8z0fa4clCjzpoTcA+JvZSQdOPRvtwOifxzSqLxye96mRQZKIKZAD
Y8jnve5qm42rBHx7oWm1ERhsvIq0jrgViMu7+FsYtK5IdCVz59zNbfoqIfSBquWv
oG1iffrTx6BkAi6UJa/EAI9o+8p8XcT9YzFKqVycmaD+MqLuxsKKbMo9UiwWKDpx
4onv+6FxitSiDehOGo+g2XksOoAbC6+I6kciwSMxUBki4YnESF64iiTlGZN46/CV
kkRV/X2gu1AhOpV9X3xS2oHck9dG+219ehexdMnDjPuAqC3wfjSFNM4JXFmVWUfW
VvzTdB+AhCxVAadYNjeui2F9s8ULfA==
=E/7W
-----END PGP SIGNATURE-----

--=-FiRA9H8TcBeXjrnKFyig--



--===============0867294622569613796==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0867294622569613796==--


