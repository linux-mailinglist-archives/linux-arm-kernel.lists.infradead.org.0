Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C982ABC1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 21:04:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HGSOeCFinQ+SWGXe13Mu5iWIksP+BWQUTi50S5v89BY=; b=uuP56mkt/pLYVvXNcAPIQ4pSC
	6w7XY5iGzNz7/RT+HpnyViRYEHLAHKxsnROzN52gc7KCiudBv4QtbuM7gp+0ki/JVycXe3lgZpLCx
	zfCi+PvW1W6afBBV+g0hsusdPtUKfq9Quf5OztBBk49VyUzwElZV5boMJzr1xngsENGNOTGQx4711
	WdRK+TBxhyEMwYVczHvv6bsvcQ9y2Z0MG/1DPUZPzz6ZbfxCnrJ4kWz45cQKYMCoCMplahvt4Izzd
	Anaemad6y1k3lsDCfENeAU/qFENpeY8DykP4QD1c+tjaR/HIFx07S328n/XSDF4jPxV25bY3N9pVK
	0XC82GMHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUyRS-0002FD-Hb; Sun, 26 May 2019 19:04:22 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUyRK-0002En-Q0
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 19:04:16 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id BA316240002;
 Sun, 26 May 2019 19:04:11 +0000 (UTC)
Date: Sun, 26 May 2019 21:04:10 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH 04/10] dt-bindings: media: sunxi-ir: Add A64 compatible
Message-ID: <20190526190410.ngrvrclp5ge5rdqy@flea>
References: <20190525180923.6105-1-peron.clem@gmail.com>
 <20190525180923.6105-5-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190525180923.6105-5-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_120414_994067_84BEDD65 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6934601734215088728=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6934601734215088728==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w6dqjdni2ih5gdsl"
Content-Disposition: inline


--w6dqjdni2ih5gdsl
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 25, 2019 at 08:09:17PM +0200, Cl=E9ment P=E9ron wrote:
> There is some minor differences between A31 and A64 driver.
>
> But A31 IR driver is compatible with A64.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  Documentation/devicetree/bindings/media/sunxi-ir.txt | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/media/sunxi-ir.txt b/Docum=
entation/devicetree/bindings/media/sunxi-ir.txt
> index 53e88ebb53fe..da5aeba843de 100644
> --- a/Documentation/devicetree/bindings/media/sunxi-ir.txt
> +++ b/Documentation/devicetree/bindings/media/sunxi-ir.txt
> @@ -5,6 +5,7 @@ Required properties:
>  	"allwinner,sun4i-a10-ir"
>  	"allwinner,sun5i-a13-ir"
>  	"allwinner,sun6i-a31-ir"
> +	"allwinner,sun50i-a64-ir", "allwinner,sun6i-a31-ir"

I guess resets is mandatory for the A31 onwards too, right?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--w6dqjdni2ih5gdsl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOrjKgAKCRDj7w1vZxhR
xQ69AP9KzirH0gAauBKyHVeF6rXLXOLssPNHmqkbjf6FMstJIAEAvZfH+Pmy/Uxe
k16aY3T57rVDb23zD0ZgAvrdiP9uXwU=
=dC11
-----END PGP SIGNATURE-----

--w6dqjdni2ih5gdsl--


--===============6934601734215088728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6934601734215088728==--

