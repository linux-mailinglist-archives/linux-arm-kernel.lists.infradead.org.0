Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D86701A92B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 07:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qhzWhvgECF7dhpDCU1m/NM2O2+PWNDvY2ajvzEU8VK8=; b=X+iElRKXZMG3c+vPb4sxjOpz+
	WKwq+8rFTXMXpymnqHvhkHYTOqRy9V/JuMrTu0N+W//M29JpyldWYqgjJrobdu4FnCwUxW6AKvKFh
	VjNkUYgXoPGYdvyEglyVboVRFM2+WAWIjflXRWy30IAqJsmmJGw7Ky44+g76HLxy3NKJwFi+060rc
	OctHlpTypF0X55xise2tfWhlbr8DKrQ4GqyzE4qMyFrNAGpoQ0G0UZUvsLTqNlXuzstaebZsbqzRp
	8JkNcfysDWHEjhbY/H49Gm4vUMlJcSQymHKtrPlYqyN+IDSSeU03/v7CkFR9P61OofxAJuV4HCg0e
	p5nt6oQoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOawO-0001N6-Pr; Wed, 15 Apr 2020 05:50:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOawD-0001Mm-3T
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 05:50:18 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jOaw6-0006zO-9o; Wed, 15 Apr 2020 07:50:10 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jOaw5-0004qL-Sh; Wed, 15 Apr 2020 07:50:09 +0200
Date: Wed, 15 Apr 2020 07:50:09 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: peng.fan@nxp.com
Subject: Re: [PATCH 2/2] arm64: dts: imx8qxp: support scu mailbox channel
Message-ID: <20200415055009.uxkzy4j3l24dvvyv@pengutronix.de>
References: <1586870668-32630-1-git-send-email-peng.fan@nxp.com>
 <1586870668-32630-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1586870668-32630-2-git-send-email-peng.fan@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:49:46 up 151 days, 21:08, 164 users,  load average: 0.08, 0.03,
 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_225017_159235_6B61D694 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Anson.Huang@nxp.com, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, linux@rempel-privat.de,
 jaswinder.singh@linaro.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1186957660312613643=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1186957660312613643==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hrp2dftdgxv3jd5n"
Content-Disposition: inline


--hrp2dftdgxv3jd5n
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 14, 2020 at 09:24:28PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
>=20
> With mailbox driver support i.MX8 SCU MU channel, we could
> use it to avoid trigger interrupts for each TR/RR registers
> in one MU, instead, only one RX interrupt for a recv and
> one TX interrupt for a send.
>=20
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>

> ---
>=20
> Note:
>  This patch needs https://patchwork.kernel.org/patch/11446659/
>  The other three patches in the patchset has been in linux-next
>=20
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 18 ++++++------------
>  1 file changed, 6 insertions(+), 12 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot=
/dts/freescale/imx8qxp.dtsi
> index e8ffb7590656..d1c3c98e4b39 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -141,17 +141,11 @@
> =20
>  	scu {
>  		compatible =3D "fsl,imx-scu";
> -		mbox-names =3D "tx0", "tx1", "tx2", "tx3",
> -			     "rx0", "rx1", "rx2", "rx3",
> +		mbox-names =3D "tx0",
> +			     "rx0",
>  			     "gip3";
>  		mboxes =3D <&lsio_mu1 0 0
> -			  &lsio_mu1 0 1
> -			  &lsio_mu1 0 2
> -			  &lsio_mu1 0 3
>  			  &lsio_mu1 1 0
> -			  &lsio_mu1 1 1
> -			  &lsio_mu1 1 2
> -			  &lsio_mu1 1 3
>  			  &lsio_mu1 3 3>;
> =20
>  		clk: clock-controller {
> @@ -548,14 +542,14 @@
>  		};
> =20
>  		lsio_mu1: mailbox@5d1c0000 {
> -			compatible =3D "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
> +			compatible =3D "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
>  			reg =3D <0x5d1c0000 0x10000>;
>  			interrupts =3D <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH>;
>  			#mbox-cells =3D <2>;
>  		};
> =20
>  		lsio_mu2: mailbox@5d1d0000 {
> -			compatible =3D "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
> +			compatible =3D "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
>  			reg =3D <0x5d1d0000 0x10000>;
>  			interrupts =3D <GIC_SPI 178 IRQ_TYPE_LEVEL_HIGH>;
>  			#mbox-cells =3D <2>;
> @@ -563,7 +557,7 @@
>  		};
> =20
>  		lsio_mu3: mailbox@5d1e0000 {
> -			compatible =3D "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
> +			compatible =3D "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
>  			reg =3D <0x5d1e0000 0x10000>;
>  			interrupts =3D <GIC_SPI 179 IRQ_TYPE_LEVEL_HIGH>;
>  			#mbox-cells =3D <2>;
> @@ -571,7 +565,7 @@
>  		};
> =20
>  		lsio_mu4: mailbox@5d1f0000 {
> -			compatible =3D "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
> +			compatible =3D "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
>  			reg =3D <0x5d1f0000 0x10000>;
>  			interrupts =3D <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>;
>  			#mbox-cells =3D <2>;
> --=20
> 2.16.4
>=20
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--hrp2dftdgxv3jd5n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl6WoJEACgkQ4omh9DUa
UbMo2Q//VYhP/UGwmjOZJrG++dp/xo/uq550cWXhFlBWJ6DU4JoFl7Hxynr+YtPW
BvTr8huLL8PchbLwHUFtUF92vPbIBrtW0t6wzCkn0oAlfuV03b9+jB7rX2DFfAIc
4nm/+kk5ez6PCUNT0JMjgUFHKeeRtfVcy6qvIGTCYSj+Tvg2//2oukcWtUmLE9CN
XKLEfEPtDi63ihkhVkzYsWgzA7X5aLQPxrKc9+CopxOltx3dsrm4AoMR2XIZM8Vp
x1obhnTSbU1en/Jga1woTaNbks1nhLRnHgi328D0DbpBh10r4tYQKj/eBnEfpacu
fI3teKrvU8Qjr0XinVsdW5+asXEdOePM6Ufonje/8VdJ01G8rG4npORlqxaTb4mU
9wGHk0R4wERpuZhRShwhpui3h5WyeHuWz1+8b0B02+Vhw1RuSUv9WNt4B+xe7NbQ
oD831atJNNVSbjOWqW41SnPMQPJZRhwdvFwVhK/ib5TGvLSGqnMMtZ0AQhnpdLqD
u1CBQWVtCSMs0yU9W1b2b+8pWp+O6h/Nlg2XgL51xe19wP2s7xDgHAmJLmHo+c+7
n9P4xka4BV9n44bmBNq6P3EoJegv7cW1VWmYWhfCWfHdTAxedvX/iZgq2AINPo1X
wSp+DdgtYvFL/NlzH+kCR5FopdZj5hU869wcdL+n3MNS6zzcKMg=
=56Tk
-----END PGP SIGNATURE-----

--hrp2dftdgxv3jd5n--


--===============1186957660312613643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1186957660312613643==--

