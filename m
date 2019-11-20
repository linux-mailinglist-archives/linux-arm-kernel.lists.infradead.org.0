Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3BA10447A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 20:45:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vI6404nRNHLcDlGR7//rdLt4l4CuwSPUXucY9W7IswI=; b=rsMIGbsRwvlwY4oQPhO83M2R/
	80Sy22Fr0UEligM8foPXRyf+t70RPkMtMdTfx1Ujx7furhU7Hypg8l2DNEp2y1EEU7mGyUKanxRNE
	ruOgLCdfKiQvhrUyPz4betXstbWRTy2ktRmTjCaIDmwDCgioftWeJDaMKXJpWkSMw9FRKiB1gHint
	n1502YSlhbNGnl7c19M5Ny2JKUThEf0AOY0AzlYMUZb3V3kZHNEOhb48zu/Aiv4PNsmsTBkD4XcMC
	9LSSmNnJNeDqjauogYevAaTGh7RBKQZNYyk3sg3uj5ZYbhhr8vyI/xEueBwXgpg3IWsFMUcS7D8Q+
	uLF+AjgtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXVur-0002b0-Qj; Wed, 20 Nov 2019 19:45:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXVuh-0002V6-E3; Wed, 20 Nov 2019 19:45:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 63673AFCB;
 Wed, 20 Nov 2019 19:45:15 +0000 (UTC)
Message-ID: <073219d4e46bab9fb6ba972ebc2ee2f3b55abf55.camel@suse.de>
Subject: Re: [PATCH v3 4/4] ARM: dts: bcm2711: Enable HWRNG support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stephen Brennan <stephen@brennan.io>
Date: Wed, 20 Nov 2019 20:45:12 +0100
In-Reply-To: <20191120031622.88949-5-stephen@brennan.io>
References: <20191120031622.88949-1-stephen@brennan.io>
 <20191120031622.88949-5-stephen@brennan.io>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_114519_632432_96AF1DB2 
X-CRM114-Status: GOOD (  15.18  )
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
Content-Type: multipart/mixed; boundary="===============6290375416073971149=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6290375416073971149==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-EQFLnI4F4oDM522MqmL9"


--=-EQFLnI4F4oDM522MqmL9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-11-19 at 19:16 -0800, Stephen Brennan wrote:
> This enables hardware random number generator support for the BCM2711
> on the Raspberry Pi 4 board.
>=20
> Signed-off-by: Stephen Brennan <stephen@brennan.io>
> ---
>  arch/arm/boot/dts/bcm2711.dtsi | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.d=
tsi
> index ac83dac2e6ba..ed0877d5a1e9 100644
> --- a/arch/arm/boot/dts/bcm2711.dtsi
> +++ b/arch/arm/boot/dts/bcm2711.dtsi
> @@ -92,10 +92,9 @@ pm: watchdog@7e100000 {
>  		};
> =20
>  		rng@7e104000 {
> -			interrupts =3D <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
> -
> -			/* RNG is incompatible with brcm,bcm2835-rng */
> -			status =3D "disabled";
> +			compatible =3D "brcm,bcm2711-rng200";
> +			reg =3D <0x7e104000 0x28>;
> +			status =3D "okay";

Small nitpick, the 'okay' status is set by default, so no need for this. Bu=
t
it's something we can edit out once we pick the patch.

Regards,
Nicolas


--=-EQFLnI4F4oDM522MqmL9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3Vl8gACgkQlfZmHno8
x/49PQf/Tah+83leeq/AYVqsmeAlWU9tVFZ6DV4o9XFtXocYffZlQtscjV5mLpXU
4CfcjTwUdIn/Cfk70ZXXqD7EsQ9XUGN6pfNiP/rPffSSTKAUd7wektykwl9YQaAN
DcJBMRbPy+TPZDYaLu7DtGMpLe9HYj1p1onNEoKfW8XBqOPRirBQv1KfYTFMQyq4
ZCXnvMz6F4PxpUf/Ybgv3KB3twfd8c1vF9arPEh06PKfTozUbnUu0gEqjgLvwi6a
NP+K9oMo/5HMnOARh9znTaRJu/jKSjoiyCM0Jsisd6z6TDEe8PezgkxpdjIm6k79
p6f8JA13izZl3k2g8I5ZBnG+xuWyBQ==
=gzPL
-----END PGP SIGNATURE-----

--=-EQFLnI4F4oDM522MqmL9--



--===============6290375416073971149==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6290375416073971149==--


