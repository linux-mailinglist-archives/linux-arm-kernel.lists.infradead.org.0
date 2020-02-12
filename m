Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A8515AFDD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 19:32:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=driF9m6VLN7i9JwB60gOQPGplPPpzN5xcCBFdV5ofaQ=; b=Bcn1vO3OGdcl8huBn+PwVVxA9
	mbGkK/zriiemEQ3juHxn1tY9aEuXPMCBRlmhInD4j8OKk6U/nZahJsRr2E1LaWFbnsdukqJIy9vj0
	0J6gUekGg/0sqG0j0BzXln0pVmOnRGBzULSZ0CLiV/68sz7mqxxhkt9qRs5jg1V7jw4llM85EkPPq
	rFcdj0PuFQiGNPhjj4GQ5kiDEcV9z6qZDpByqZ42PtuQCgMNdwUwlIrB0ZZoCDS1crbbbNuNKExki
	6b+iuHY7ppAhWgSrSCWaH0BNPlZ4hPdtmujWaGKXw/vXq53jyxw2N9f3ngBUg8uCkT0nvVc9QHOpG
	2+mL5z3+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1wnn-0003OT-3Y; Wed, 12 Feb 2020 18:31:59 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1wnf-0003Mw-In; Wed, 12 Feb 2020 18:31:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D1983AE46;
 Wed, 12 Feb 2020 18:31:49 +0000 (UTC)
Message-ID: <a1d66025baa13b2276b12405544fc7107aac8d6c.camel@suse.de>
Subject: Re: [PATCH] ARM: bcm2835_defconfig: add minimal support for
 Raspberry Pi4
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Date: Wed, 12 Feb 2020 19:31:47 +0100
In-Reply-To: <20200212102009.17428-1-m.szyprowski@samsung.com>
References: <CGME20200212102022eucas1p1c49daf15d3e63eda9a56124bc4eafb57@eucas1p1.samsung.com>
 <20200212102009.17428-1-m.szyprowski@samsung.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_103151_766233_3F372EFD 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>
Content-Type: multipart/mixed; boundary="===============7715635890447152164=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7715635890447152164==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-ITbJ1iHkW+ijPO3M83tC"


--=-ITbJ1iHkW+ijPO3M83tC
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marek,
On Wed, 2020-02-12 at 11:20 +0100, Marek Szyprowski wrote:
> Add drivers for the minimal set of devices needed to boot Raspberry Pi4
> board.
>=20
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>

Just so you know, the amount of support on the RPi4 you might be able to ge=
t
updating bcm2835_defconfig's config is very limited. Only 1GB of ram and no
PCIe (so no USBs).

FYI I've been working on getting a workable configuration for arm32, short =
of
creating a new config altogether:
https://www.mail-archive.com/linuxppc-dev@lists.ozlabs.org/msg163770.html

That said, if you insist on booting with bcm2835_defconfig, I have no probl=
em
with the patch.

Regards,
Nicolas

>  arch/arm/configs/bcm2835_defconfig | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/arch/arm/configs/bcm2835_defconfig
> b/arch/arm/configs/bcm2835_defconfig
> index 519ff58e67b3..b5e7c1bd95f2 100644
> --- a/arch/arm/configs/bcm2835_defconfig
> +++ b/arch/arm/configs/bcm2835_defconfig
> @@ -72,6 +72,7 @@ CONFIG_BLK_DEV_SD=3Dy
>  CONFIG_SCSI_CONSTANTS=3Dy
>  CONFIG_SCSI_SCAN_ASYNC=3Dy
>  CONFIG_NETDEVICES=3Dy
> +CONFIG_BCMGENET=3Dy
>  CONFIG_USB_LAN78XX=3Dy
>  CONFIG_USB_USBNET=3Dy
>  CONFIG_USB_NET_SMSC95XX=3Dy
> @@ -99,6 +100,8 @@ CONFIG_THERMAL=3Dy
>  CONFIG_BCM2835_THERMAL=3Dy
>  CONFIG_WATCHDOG=3Dy
>  CONFIG_BCM2835_WDT=3Dy
> +CONFIG_REGULATOR=3Dy
> +CONFIG_REGULATOR_GPIO=3Dy
>  CONFIG_MEDIA_SUPPORT=3Dy
>  CONFIG_MEDIA_CAMERA_SUPPORT=3Dy
>  CONFIG_DRM=3Dy


--=-ITbJ1iHkW+ijPO3M83tC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5ERJMACgkQlfZmHno8
x/7nMwf/V2o3WeDmAvMxxux/NwAAfKHB2HFIpdC962NUNKnoHxaP27wl/nzWhkXe
8ly7F1qMnQPcU8rnO3CyoZeRrlplQhg1Z8/RcXEmr83Ua5gj9eyrahwnJneui2BZ
bR+oZFOiGo40QJtNdjm16dT59SbiLfcskyiLOqNEItCehxf1qb22hc3Vz0aSeEXI
xd6qhcCU/KvQYyJWm0Izq3l0U43roUfhcqm89oVyZJq6lWT+RbS4KfYjNQA0OxkG
H8BSyfiK9RyY7XbCq/rpcKBnTvXCm3Lm9B6nuHGJBV31HeaukFzWJR+LhJ+pIxgX
xCtJYAy26dqMGTLAsu9F/XZ51sk6YA==
=gfp3
-----END PGP SIGNATURE-----

--=-ITbJ1iHkW+ijPO3M83tC--



--===============7715635890447152164==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7715635890447152164==--


