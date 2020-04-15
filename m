Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD041A92B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 07:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vssrcjR+k6V33fRYhtbS1bcRP2SFmribjw5pIjQswDA=; b=geydnVCb8jx256NvA0gYBVoOY
	9j/pODrhMxdAcy0T0yQjJMnDkRFB7t/10L6n7s+5Etd+Zn81+z2Gb8yeDVSW2Z0ExD0FLO2aMI/Oy
	Ho0JT4UT65uCnVB9Thgsb51YgkEZy9vqwCdyjo+5QXkfgmzpQ4nx979QHdz6JbnRrbhkSMjoq2+BP
	QmcKUK4ITen5AhL1Yg/QZdoHxXkqkSvE2queX+2iWDN0bxfGinNyBbGIkxCWFR9HPor/EkWXKY318
	OLH/2T4h8GG7k6WT5ohAIakPkUq9lG08cEF+UPC3bS+wZJN0vx0/QTzxKrItI6+9SVuWE7nfGySAs
	JiEfeUDIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOavS-0005mg-03; Wed, 15 Apr 2020 05:49:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOavJ-0005lY-Ei
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 05:49:24 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jOav3-0006jl-3p; Wed, 15 Apr 2020 07:49:05 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jOav1-0004nR-Dw; Wed, 15 Apr 2020 07:49:03 +0200
Date: Wed, 15 Apr 2020 07:49:03 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: peng.fan@nxp.com
Subject: Re: [PATCH 1/2] dt-bindings: mailbox: imx-mu: correct example
Message-ID: <20200415054903.uywcv5fzuq4fs26l@pengutronix.de>
References: <1586870668-32630-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1586870668-32630-1-git-send-email-peng.fan@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:45:17 up 151 days, 21:03, 164 users,  load average: 0.10, 0.04,
 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_224921_490529_836490C1 
X-CRM114-Status: GOOD (  15.45  )
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
Content-Type: multipart/mixed; boundary="===============3846058224322727137=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3846058224322727137==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4bzghxigj66j6f6n"
Content-Disposition: inline


--4bzghxigj66j6f6n
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 14, 2020 at 09:24:27PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
>=20
> The example use i.MX8QXP MU, but actually the MU is compatible with
> i.MX6SX, so add the compatible.
>=20
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Acked-by: Oleksij Rempel <o.rempel@pengutronix.de>

> ---
>  Documentation/devicetree/bindings/mailbox/fsl,mu.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt b/Docum=
entation/devicetree/bindings/mailbox/fsl,mu.txt
> index 31486c9f6443..26b7a88c2fea 100644
> --- a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> +++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> @@ -51,7 +51,7 @@ Optional properties:
>  Examples:
>  --------
>  lsio_mu0: mailbox@5d1b0000 {
> -	compatible =3D "fsl,imx8qxp-mu";
> +	compatible =3D "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
>  	reg =3D <0x0 0x5d1b0000 0x0 0x10000>;
>  	interrupts =3D <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;
>  	#mbox-cells =3D <2>;
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

--4bzghxigj66j6f6n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl6WoEMACgkQ4omh9DUa
UbMn5g//alHPJwdl+12HdDu5J7K5lGVY2ASoGoXkEd1qRc+qAKC+kXjb2JBL+dCF
AOjKPpxxpvby8yd0r41D0Fks9eS63COq/YlWpOHo2HwVmGDqa+bgiXozgQM/JJ1B
K5nxMZaMFmFmC1/zFmD3Wr2mZLlH1AEnqWTBrLwQpDBO8hjnieA8Br0bFLNqZWGu
0Xry1XW9+26Aa7WwlltfOnwfKjSfyDfg2r/zxoPusSXnBZzxcZt3jjDZ+Gr9DQ1C
Ivo1L5fjU8soOZ12SyLMGQTTwKBQQdt8ek4d88lao+Zoj64sho+evm/ux668Nd/7
q/Pp/1LYjphQYydzoqfRYeN+vKFbZtu9foEJbCbliOiMd7eFrit3yV4XrjeKx8F8
cCHeh5lZB2uKe60rrfwOP5+ynm8rJHGLKEFkGiTuZbR7KtK1ZqVAsdFiJYvjxC+K
m8sHuZfp9/7Eo8Y0oO8m+eJCw7fXPxduBH+28UTqcvzQ1e7Bke6iVAraNMJ5eIPc
qWcrznDmGZtTZp+48HxkmomsCPf0D/VWtzRA+29/ebumJyLU8ub7zrQxtIJ8o0l7
sx3Pi97n6745dNNBczhQc12dpdRAmjp6mpfexl8rR4sgOuuHJE1u7e/R/N3UmIHZ
NPUaoxI7DbQ6cX3nQoNAAyYtD9VliU6v4u8KJy8iKNYjJsMQXE8=
=5pgf
-----END PGP SIGNATURE-----

--4bzghxigj66j6f6n--


--===============3846058224322727137==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3846058224322727137==--

