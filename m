Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84310100393
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:12:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1R8L/eQQVwhgxRGi6bntYHFw9Xg5Lx7T8FGmuU1Lbdw=; b=NYSipmEIZ6H2lCa5x5yfIgngT
	9jqRgZUAQIknz40c0ngQG0Z7IPmNoWGGUg4bp2Fs89CvDeB/6CeSEfiPdECkK1bep5IENVNxF0ryH
	+WMoDsgeZZsR5qOxqGiNcd3l9tiEk6GyLBGMxDJwtmvpZ16eJWFiSNeQSN8ckmD19tLyC64bjzvpL
	ClR6+B29xtacGYmouThdwj34qlabIvOeMmYD8jvVAJncntevxW0+Th0MObPLNRTWsAJgwgk/KVBe1
	Vjb24HkmMC5UI9iMYbLIXfG3EdLz6rLxodkLUhGU7RXg2ubmdZF5JLUvcMobHxxTv+cSAylLz6GJH
	WLKrdvSMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWewk-0004dn-9H; Mon, 18 Nov 2019 11:11:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWewc-0004cv-LB
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:11:47 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C790E2075E;
 Mon, 18 Nov 2019 11:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574075506;
 bh=8iL77Cbod2Ldiv/Kdt/qOxk6iOq/uRTCIjFxHr20nBg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Qq3QIkHDLBpbwRJOsBbMchPRtT1Ua8NRpKp1o1BQyYFmK0/Wxh9Vq0GZUOG6H8xxs
 r44ljL0TDHb4sJ1TjYcMvn3e3Gv13Vwx4bZo2OwJwjwDS0jOFxpyOb/fhIvk/H+c0p
 wurFPXM4pgNllY2K6gNcSo1iaEZpBsXU3edAjdTk=
Date: Mon, 18 Nov 2019 12:11:43 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH 2/3] ARM: dts: sun8i: a33: add the new SecuritySystem
 compatible
Message-ID: <20191118111143.GF4345@gilmour.lan>
References: <20191114144812.22747-1-clabbe.montjoie@gmail.com>
 <20191114144812.22747-3-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191114144812.22747-3-clabbe.montjoie@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_031146_712263_4B5C8997 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4833984895803084191=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4833984895803084191==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="p76r+0aZ/vhNbw2t"
Content-Disposition: inline


--p76r+0aZ/vhNbw2t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Nov 14, 2019 at 03:48:11PM +0100, Corentin Labbe wrote:
> Add the new A33 SecuritySystem compatible to the crypto node.
>
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>  arch/arm/boot/dts/sun8i-a33.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/sun8i-a33.dtsi b/arch/arm/boot/dts/sun8i-a33.dtsi
> index 1532a0e59af4..5680fa1de102 100644
> --- a/arch/arm/boot/dts/sun8i-a33.dtsi
> +++ b/arch/arm/boot/dts/sun8i-a33.dtsi
> @@ -215,7 +215,8 @@
>  		};
>
>  		crypto: crypto-engine@1c15000 {
> -			compatible = "allwinner,sun4i-a10-crypto";
> +			compatible = "allwinner,sun8i-a33-crypto",
> +				     "allwinner,sun4i-a10-crypto";

If some algorithms aren't working properly, we can't really fall back
to it, we should just use the a33 compatible.

Maxime

--p76r+0aZ/vhNbw2t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXdJ8bwAKCRDj7w1vZxhR
xWSsAQDfuOb7pAGVgHQzg3LHHlN6b2U6D/Lbo36ifRgHXwR4yQEA0GMSVqz5xwZy
x+K+EU4sfN71BXTin4nzbE/XEZXdQgc=
=hnch
-----END PGP SIGNATURE-----

--p76r+0aZ/vhNbw2t--


--===============4833984895803084191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4833984895803084191==--

