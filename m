Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA27922D38
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uDDSSLdx5svh7a6GIIB+U3mOKKX9Ud4WVGYBJn12ZfU=; b=PJohtg97Ped99c7flWWf24FwV
	wjf8aXD5OSTYjsD4kEqXXtaDxeHhsjZPLrqCI9dVCF0+2vE4oRWdLj6BiGgXY3uBZ2sge4eJCnsza
	risyHcKJommdorTturcTKOA+w+JnNR4BA48ChV2/kBdQG+FSzXL+fvs/WO5V7/FmGDg97Fb7f4dLQ
	KRAl7FCbuvZt69aYbgILl8AoFE6PebKkdGDtxJDBXeWRoB+LJme7bfcnV0KB5r4oMJHd1C2VgZ87D
	XBi42l2Bpo6lwYwx5/h5uVoip+IfSGpoffsUvGcBvCq5kx240sOPAahpeVVnQb6yxQXM0Cbe6aZwk
	u1Wzykbcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hScqQ-00031t-6z; Mon, 20 May 2019 07:36:26 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hScpo-0002mk-1b
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 07:35:55 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id DBAD224000E;
 Mon, 20 May 2019 07:35:29 +0000 (UTC)
Date: Mon, 20 May 2019 09:35:29 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: watchdog: add Allwinner H6 watchdog
Message-ID: <20190520073529.nxptfbibexrqyzfi@flea>
References: <20190518152355.11134-1-peron.clem@gmail.com>
 <20190518152355.11134-2-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190518152355.11134-2-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_003548_333312_3DDEAECE 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: multipart/mixed; boundary="===============2323432807128388687=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2323432807128388687==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vfqfe4etmgwkzfrf"
Content-Disposition: inline


--vfqfe4etmgwkzfrf
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 18, 2019 at 05:23:52PM +0200, Cl=E9ment P=E9ron wrote:
> Allwinner H6 has a similar watchdog as the A64 which is already
> a compatible of the A31.
>
> This commit sort the lines and add the H6 compatible.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  .../devicetree/bindings/watchdog/sunxi-wdt.txt         | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt b/D=
ocumentation/devicetree/bindings/watchdog/sunxi-wdt.txt
> index 46055254e8dd..f4810f8ad1c5 100644
> --- a/Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt
> +++ b/Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt
> @@ -3,10 +3,12 @@ Allwinner SoCs Watchdog timer
>  Required properties:
>
>  - compatible : should be one of
> -	"allwinner,sun4i-a10-wdt"
> -	"allwinner,sun6i-a31-wdt"
> -	"allwinner,sun50i-a64-wdt","allwinner,sun6i-a31-wdt"
> -	"allwinner,suniv-f1c100s-wdt", "allwinner,sun4i-a10-wdt"

That sorting was kind of intentional

> +	- "allwinner,sun4i-a10-wdt"
> +	- "allwinner,sun50i-a64-wdt","allwinner,sun6i-a31-wdt"
> +	- "allwinner,sun50i-h6-wdt","allwinner,sun50i-a64-wdt",
> +	  "allwinner,sun6i-a31-wdt"

Is there a reason to keep the A64 compatible?

Thanks,
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--vfqfe4etmgwkzfrf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOJYwQAKCRDj7w1vZxhR
xXf6AP44cA+X4inPt5m68fMkXQhL5OKxaZuNzsYSfVYbEOvP8QEA4EEwKgv3Sny9
0nDVY1voirnIU5xZoN2wii6g2sl5kgc=
=tx0L
-----END PGP SIGNATURE-----

--vfqfe4etmgwkzfrf--


--===============2323432807128388687==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2323432807128388687==--

