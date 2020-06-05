Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A3D1EF5EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3Kq50oDcKRFbf3qT+6IlwxKg4U24S3XRvYeR8FeQU2Q=; b=cuEAKMwhaumpnkCq4eE9iNETK
	Ab5nfrLRg/ydpOV//ddTzRwP4fjAvJdNU/JU1JkR+RQm11f1K8Q7B8+w142JVjbVnWKVLNSAQEO0b
	tyv9FdvApQoLhwxtCLn8eIPl4kJt7bgsbUO47MltDO4JF00sqTVCr8UQ7owuJcXYV+seY0ndhuCJb
	UMLO9N7hmclE8AIeC5eN+j904AWVl9Iy7N9C8UM+3SD1jeGbVMOlxnv+y2n0XxPgFqdk4oNA2thxo
	377qgEIQjVSsU5IVZdpcwt+YmpOYpe3uDYsKrOYF/j1nEfJD/aEryPs4lH50fLS8h9wRy2GFwgflO
	mjzyYB6LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhA3C-00012s-4N; Fri, 05 Jun 2020 10:58:14 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhA34-00012T-BA; Fri, 05 Jun 2020 10:58:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D5DD9ACAE;
 Fri,  5 Jun 2020 10:58:07 +0000 (UTC)
Message-ID: <d419325c67594d77a918f49222013f0f1f454371.camel@suse.de>
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org
Date: Fri, 05 Jun 2020 12:58:01 +0200
In-Reply-To: <f728f55fe6266718b5041b6f3b1864a673991129.camel@suse.de>
References: <20200604212819.715-1-f.fainelli@gmail.com>
 <f728f55fe6266718b5041b6f3b1864a673991129.camel@suse.de>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_035806_526877_CBCB8AA6 
X-CRM114-Status: GOOD (  11.64  )
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
Content-Type: multipart/mixed; boundary="===============0818140971754704688=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0818140971754704688==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-/79CtvoenK8DEBzH9xLO"


--=-/79CtvoenK8DEBzH9xLO
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-06-05 at 10:46 +0200, Nicolas Saenz Julienne wrote:
> Hi Florian,
> Thanks for taking over this!
>=20
> On Thu, 2020-06-04 at 14:28 -0700, Florian Fainelli wrote:
> > The 4 SPI controller instances added in BCM2711 and BCM7211 SoCs (SPI3,
> > SPI4, SPI5 and SPI6) share the same interrupt line with SPI0.
>=20
> I think this isn't 100% correct. SPI0 has its own interrupt, but SPI[3-6]
> share
> the same interrupt.

I'm wrong here, I missed this in bcm2711.dtsi:

&spi {
	interrupts =3D <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
};

Sorry for the noise.

Regards,
Nicolas


--=-/79CtvoenK8DEBzH9xLO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7aJTkACgkQlfZmHno8
x/5SQgf+OmvPj4BYlREL3zg38OEq+NEtQE5Tw5Oi5SBMTLf3HpyUM+ZNDOuHNB9a
R7fFlBKHS8fIYxPawpYXKr2Z48Avs7rv1dUeD5WHKdE40ErEnSkASihptnK53bbx
6Ysl/oZuU+s2mtHZvWhVPDSJuhf1EX5W80Iv4diqD4pAH3HVlFBdqARgjV4GND9Z
fz3dhXgFuVS3Pdq8hsn0o5+U8965J2swadD70xt4J1vJyAM/eD9jz+AlGAh25t7o
wYt1pUNi0yA6N+i27vLpsv+tNmgnNq9KOqzDzZomPUvYunCUl+Z3/LfvEz9EF1dr
gTqqjhjMLd/2aovu/MYhjQs5bqrf9g==
=lD2O
-----END PGP SIGNATURE-----

--=-/79CtvoenK8DEBzH9xLO--



--===============0818140971754704688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0818140971754704688==--


