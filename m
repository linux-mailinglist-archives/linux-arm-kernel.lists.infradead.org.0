Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B131021A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 11:07:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0xorD8DUUkv4AMA3CpkcLD5I/iFT3ifTaNW1wiB0FwE=; b=pNo9Me56Z95cFfuJwtw4skLfZ
	Vu6NBsV81CPLJZ1JIlOusK3RvksnRD4V9LYbRTBz46uGarnhJiJQptDcJk1Hpb9bfeJ7wj/0zvFqi
	5R68nnFiQPTrkOOLP+ylY3KLragM5+BPdGAhcOKuJnNRksLyf1JURM6xmV20qnaQgWM7WFXNlohMn
	Vh285S5gYdxa+BJ+9hPnBPtxdtQham+4gG/F/3LXz89YazMYhkHLiJOiXGfKImBM8YFOHqOy5be1G
	kg1nf7vGlrB6bwR2kdNfPrkUKsHS5ueJijAuMKfbcYkfCY1orOMv/vZqS+n26qW7dA5IyLL8Btwqf
	2SpGGViQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX0Pl-0007Zi-8i; Tue, 19 Nov 2019 10:07:17 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX0Pa-0007YF-AS; Tue, 19 Nov 2019 10:07:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 879F6AFBD;
 Tue, 19 Nov 2019 10:07:04 +0000 (UTC)
Message-ID: <e38de8daad5a2c9b03bda1aa2632844e3ed3d11e.camel@suse.de>
Subject: Re: [PATCH v2 3/3] ARM: dts: bcm2711: Enable HWRNG support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stephen Brennan <stephen@brennan.io>
Date: Tue, 19 Nov 2019 11:07:01 +0100
In-Reply-To: <20191119061407.69911-4-stephen@brennan.io>
References: <20191119061407.69911-1-stephen@brennan.io>
 <20191119061407.69911-4-stephen@brennan.io>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_020706_656033_D2BD3603 
X-CRM114-Status: GOOD (  17.93  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-crypto@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: multipart/mixed; boundary="===============3926378327688626566=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3926378327688626566==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-f4TrG9pLSfNSCk5pcMvM"


--=-f4TrG9pLSfNSCk5pcMvM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stephen, thanks for the follow-up.

On Mon, 2019-11-18 at 22:14 -0800, Stephen Brennan wrote:
> BCM2711 features a RNG200 hardware random number generator block, which i=
s
> different from the BCM283x from which it inherits. Move the rng block fro=
m
> BCM283x into a separate common file, and update the rng declaration of
> BCM2711.
>=20
> Signed-off-by: Stephen Brennan <stephen@brennan.io>
> ---

It's petty in this case but you should add a list of changes here too.

>  arch/arm/boot/dts/bcm2711.dtsi        |  6 +++---
>  arch/arm/boot/dts/bcm2835.dtsi        |  1 +
>  arch/arm/boot/dts/bcm2836.dtsi        |  1 +
>  arch/arm/boot/dts/bcm2837.dtsi        |  1 +
>  arch/arm/boot/dts/bcm283x-common.dtsi | 11 +++++++++++
>  arch/arm/boot/dts/bcm283x.dtsi        |  6 ------
>  6 files changed, 17 insertions(+), 9 deletions(-)
>  create mode 100644 arch/arm/boot/dts/bcm283x-common.dtsi
>=20
> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.d=
tsi
> index ac83dac2e6ba..4975567e948e 100644
> --- a/arch/arm/boot/dts/bcm2711.dtsi
> +++ b/arch/arm/boot/dts/bcm2711.dtsi
> @@ -92,10 +92,10 @@ pm: watchdog@7e100000 {
>  		};
> =20
>  		rng@7e104000 {
> +			compatible =3D "brcm,bcm2711-rng200";
> +			reg =3D <0x7e104000 0x28>;
>  			interrupts =3D <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
> -
> -			/* RNG is incompatible with brcm,bcm2835-rng */
> -			status =3D "disabled";
> +			status =3D "okay";
>  		};
> =20
>  		uart2: serial@7e201400 {
> diff --git a/arch/arm/boot/dts/bcm2835.dtsi b/arch/arm/boot/dts/bcm2835.d=
tsi
> index 53bf4579cc22..f7b2f46e307d 100644
> --- a/arch/arm/boot/dts/bcm2835.dtsi
> +++ b/arch/arm/boot/dts/bcm2835.dtsi
> @@ -1,5 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include "bcm283x.dtsi"
> +#include "bcm283x-common.dtsi"
>  #include "bcm2835-common.dtsi"
> =20
>  / {
> diff --git a/arch/arm/boot/dts/bcm2836.dtsi b/arch/arm/boot/dts/bcm2836.d=
tsi
> index 82d6c4662ae4..a85374195796 100644
> --- a/arch/arm/boot/dts/bcm2836.dtsi
> +++ b/arch/arm/boot/dts/bcm2836.dtsi
> @@ -1,5 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include "bcm283x.dtsi"
> +#include "bcm283x-common.dtsi"
>  #include "bcm2835-common.dtsi"
> =20
>  / {
> diff --git a/arch/arm/boot/dts/bcm2837.dtsi b/arch/arm/boot/dts/bcm2837.d=
tsi
> index 9e95fee78e19..045d78ffea08 100644
> --- a/arch/arm/boot/dts/bcm2837.dtsi
> +++ b/arch/arm/boot/dts/bcm2837.dtsi
> @@ -1,4 +1,5 @@
>  #include "bcm283x.dtsi"
> +#include "bcm283x-common.dtsi"
>  #include "bcm2835-common.dtsi"
> =20
>  / {
> diff --git a/arch/arm/boot/dts/bcm283x-common.dtsi
> b/arch/arm/boot/dts/bcm283x-common.dtsi
> new file mode 100644
> index 000000000000..3c8834bee390
> --- /dev/null
> +++ b/arch/arm/boot/dts/bcm283x-common.dtsi
> @@ -0,0 +1,11 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +/ {
> +	soc {
> +		rng@7e104000 {
> +			compatible =3D "brcm,bcm2835-rng";
> +			reg =3D <0x7e104000 0x10>;
> +			interrupts =3D <2 29>;
> +		};
> +	};
> +};

I think Stefan wrote bcm283x-common.dtsi by mistake, he really meant
bcm2835-common.dtsi.

See bcm2835-common.dtsi's header comment:

/* This include file covers the common peripherals and configuration betwee=
n
 * bcm2835, bcm2836 and bcm2837 implementations.
 */

Regards,
Nicolas


--=-f4TrG9pLSfNSCk5pcMvM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3TvsUACgkQlfZmHno8
x/4BbAf+MpKR4ihlPDuftuddKUI/HC7nve3fsLHoczZfLRf0pj2/FnKvX3qgFytE
xAYDpOXI1dprqHUPR1OavYQFO/UWFOSS3MRDIducwmDELc9gc5Z8iToD5ijYQiLM
z6/NO8BxIQJFky/2inBcsx70fEM5VLLJHQOfkSuf5NxfDR/iETwuzE0EMEBLj3tz
AnB31t86PHWGxFL2akCTFAdsbK8kJLiL0c6zrMb9xYct9S/9LC9ll0mU920HMUc9
Rwu7je1CKU72Pik+GQOTt1fF5b/TOvVENxprfCoTcelH3QudGfqVIQcXkNJFOMrd
oOhtvpofrtSfG1Dt9fsKdenSpi2gdg==
=ikdQ
-----END PGP SIGNATURE-----

--=-f4TrG9pLSfNSCk5pcMvM--



--===============3926378327688626566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3926378327688626566==--


