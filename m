Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B791EF35A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 10:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wev+/pltbHYTqe7m/NpEZipR72K4PhqZ/qaquZVGMN8=; b=tZQXai/s9xRb0/As+k4yXh7+S
	JzwfMHGfwwKaxPM61cM35hl3AitNVkjK4GI77E01EXoT5wOiqc9wZ97q2p1mcpU1TBs5TPGlt+95t
	INe1q0rsYO5vHJKY6DH+LEVQf8qRIIJwsx/UtVu2MNfmRzWqWCeKEViy2U739AuLohbDHZwJ/aoAr
	S8z5rJXjOf9r9cG1px+aHd0feJ1l+QFYh0AX2NnxZaznZ0Yr/aDTWtv6NPO8HonK/+sHdnTXaSCSK
	Fxs0AHqg7JrIHBiZPF8uJ4AMCIhLtgfLpzVPY2OrQTlcnhNuYDyzGsHBlMx9bNwkIH8aMELSqKW14
	Ge2fD5WDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh80Q-0006EJ-6Y; Fri, 05 Jun 2020 08:47:14 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh80H-0006Di-8w; Fri, 05 Jun 2020 08:47:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 796BAACD0;
 Fri,  5 Jun 2020 08:47:05 +0000 (UTC)
Message-ID: <f728f55fe6266718b5041b6f3b1864a673991129.camel@suse.de>
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org
Date: Fri, 05 Jun 2020 10:46:57 +0200
In-Reply-To: <20200604212819.715-1-f.fainelli@gmail.com>
References: <20200604212819.715-1-f.fainelli@gmail.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_014705_611363_28F530B6 
X-CRM114-Status: GOOD (  26.70  )
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
Cc: "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Scott Branden <sbranden@broadcom.com>, lukas@wunner.de,
 Ray Jui <rjui@broadcom.com>, Mark Brown <broonie@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>, "moderated list:BROADCOM
 BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>,
 Martin Sperl <kernel@martin.sperl.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6912648187180028447=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6912648187180028447==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-mEv3c87MBb44GSiC5RXV"


--=-mEv3c87MBb44GSiC5RXV
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Florian,
Thanks for taking over this!

On Thu, 2020-06-04 at 14:28 -0700, Florian Fainelli wrote:
> The 4 SPI controller instances added in BCM2711 and BCM7211 SoCs (SPI3,
> SPI4, SPI5 and SPI6) share the same interrupt line with SPI0.

I think this isn't 100% correct. SPI0 has its own interrupt, but SPI[3-6] s=
hare
the same interrupt.

> For the BCM2835 case which is deemed performance critical, we would like
> to continue using an interrupt handler which does not have the extra
> comparison on BCM2835_SPI_CS_INTR.
>=20
> To support that requirement the common interrupt handling code between
> the shared and non-shared interrupt paths is split into a
> bcm2835_spi_interrupt_common() and both bcm2835_spi_interrupt() as well
> as bcm2835_spi_shared_interrupt() make use of it.
>=20
> During probe, we determine if there is at least another instance of this
> SPI controller, and if there is, then we install a shared interrupt
> handler.

As there was pushback to use a different compatible string for an otherwise
identical IP, I think it's a good compromise.

>=20
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
> Changes in v2:
>=20
> - identify other available SPI nodes to determine if we need to set-up
>   interrupt sharing. This needs to happen for the very first instance
>   since we cannot know for the first instance whether interrupt sharing
>   is needed or not.
>=20
>  drivers/spi/spi-bcm2835.c | 61 ++++++++++++++++++++++++++++++++-------
>  1 file changed, 50 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
> index 237bd306c268..0288b5b3de1e 100644
> --- a/drivers/spi/spi-bcm2835.c
> +++ b/drivers/spi/spi-bcm2835.c
> @@ -361,11 +361,10 @@ static void bcm2835_spi_reset_hw(struct spi_control=
ler
> *ctlr)
>  	bcm2835_wr(bs, BCM2835_SPI_DLEN, 0);
>  }
> =20
> -static irqreturn_t bcm2835_spi_interrupt(int irq, void *dev_id)
> +static inline irqreturn_t bcm2835_spi_interrupt_common(struct spi_contro=
ller
> *ctlr,
> +						       u32 cs)

Keep in mind the new 100 character limit.

>  {
> -	struct spi_controller *ctlr =3D dev_id;
>  	struct bcm2835_spi *bs =3D spi_controller_get_devdata(ctlr);
> -	u32 cs =3D bcm2835_rd(bs, BCM2835_SPI_CS);
> =20
>  	/*
>  	 * An interrupt is signaled either if DONE is set (TX FIFO empty)
> @@ -394,6 +393,27 @@ static irqreturn_t bcm2835_spi_interrupt(int irq, vo=
id
> *dev_id)
>  	return IRQ_HANDLED;
>  }
> =20
> +static irqreturn_t bcm2835_spi_interrupt(int irq, void *dev_id)
> +{
> +	struct spi_controller *ctlr =3D dev_id;
> +	struct bcm2835_spi *bs =3D spi_controller_get_devdata(ctlr);
> +	u32 cs =3D bcm2835_rd(bs, BCM2835_SPI_CS);
> +
> +	return bcm2835_spi_interrupt_common(ctlr, cs);
> +}
> +
> +static irqreturn_t bcm2835_spi_shared_interrupt(int irq, void *dev_id)
> +{
> +	struct spi_controller *ctlr =3D dev_id;
> +	struct bcm2835_spi *bs =3D spi_controller_get_devdata(ctlr);
> +	u32 cs =3D bcm2835_rd(bs, BCM2835_SPI_CS);
> +
> +	if (!(cs & BCM2835_SPI_CS_INTR))
> +		return IRQ_NONE;
> +
> +	return bcm2835_spi_interrupt_common(ctlr, cs);
> +}
> +
>  static int bcm2835_spi_transfer_one_irq(struct spi_controller *ctlr,
>  					struct spi_device *spi,
>  					struct spi_transfer *tfr,
> @@ -1287,12 +1307,37 @@ static int bcm2835_spi_setup(struct spi_device *s=
pi)
>  	return 0;
>  }
> =20
> +static const struct of_device_id bcm2835_spi_match[] =3D {
> +	{ .compatible =3D "brcm,bcm2835-spi", },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, bcm2835_spi_match);
> +
>  static int bcm2835_spi_probe(struct platform_device *pdev)
>  {
> +	irq_handler_t bcm2835_spi_isr_func =3D bcm2835_spi_interrupt;
>  	struct spi_controller *ctlr;
> +	unsigned long flags =3D 0;
> +	struct device_node *dn;
>  	struct bcm2835_spi *bs;
>  	int err;
> =20
> +	/* On BCM2711 there can be multiple SPI controllers enabled sharing the
> +	 * same interrupt line, but we also want to minimize the overhead if
> +	 * there is no need to support interrupt sharing. If we find at least
> +	 * another available instane (not counting the one we are probed from),

"instance"

> +	 * then we assume that interrupt sharing is necessary.
> +	 */
> +	for_each_compatible_node(dn, NULL, bcm2835_spi_match[0].compatible) {
> +		err =3D of_device_is_available(dn) && dn !=3D pdev->dev.of_node;

nit: maybe err is not the ideal variable name here.

> +		of_node_put(dn);
> +		if (err) {
> +			flags =3D IRQF_SHARED;
> +			bcm2835_spi_isr_func =3D bcm2835_spi_shared_interrupt;
> +			break;
> +		}
> +	}
> +
>  	ctlr =3D spi_alloc_master(&pdev->dev, ALIGN(sizeof(*bs),
>  						  dma_get_cache_alignment()));
>  	if (!ctlr)
> @@ -1344,8 +1389,8 @@ static int bcm2835_spi_probe(struct platform_device
> *pdev)
>  	bcm2835_wr(bs, BCM2835_SPI_CS,
>  		   BCM2835_SPI_CS_CLEAR_RX | BCM2835_SPI_CS_CLEAR_TX);
> =20
> -	err =3D devm_request_irq(&pdev->dev, bs->irq, bcm2835_spi_interrupt, 0,
> -			       dev_name(&pdev->dev), ctlr);
> +	err =3D devm_request_irq(&pdev->dev, bs->irq, bcm2835_spi_isr_func,
> +			       flags, dev_name(&pdev->dev), ctlr);
>  	if (err) {
>  		dev_err(&pdev->dev, "could not request IRQ: %d\n", err);
>  		goto out_dma_release;
> @@ -1400,12 +1445,6 @@ static void bcm2835_spi_shutdown(struct platform_d=
evice
> *pdev)
>  		dev_err(&pdev->dev, "failed to shutdown\n");
>  }
> =20
> -static const struct of_device_id bcm2835_spi_match[] =3D {
> -	{ .compatible =3D "brcm,bcm2835-spi", },
> -	{}
> -};
> -MODULE_DEVICE_TABLE(of, bcm2835_spi_match);
> -
>  static struct platform_driver bcm2835_spi_driver =3D {
>  	.driver		=3D {
>  		.name		=3D DRV_NAME,


--=-mEv3c87MBb44GSiC5RXV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7aBoIACgkQlfZmHno8
x/76iQf/YhcuGS7sdr9nlK7KZasWwzVQMm4sUpwC4aTP2ok0f8XY2omANTcOMXPi
boV38p9L8EZnRCGxPJH5gcd+P+mzq7E36L0CmhXh0llna9Y0PCDNRiAun7xax26+
AdZ5CP5pxseRYL/hvDKGiErbDAaygtPFdxvo9u034SYQyQTnP5J8YxjTX0V0TTVz
NWPslb+n33JCLVrkFhoIsxr2sgW/dFJTaZ3V1/Bzj5Lktz4dw16ro4tCX86I4ltO
NlvwGVykL6qjn+j0dOvnx6JvHoI5ScPqzkCDXDwQJekTzitTIdiaD2e70AZZ1B+q
S0WCbZgciVz5xKBJn1sx5kPtsVZwng==
=mzr5
-----END PGP SIGNATURE-----

--=-mEv3c87MBb44GSiC5RXV--



--===============6912648187180028447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6912648187180028447==--


