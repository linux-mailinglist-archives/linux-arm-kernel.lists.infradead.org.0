Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46328113FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 09:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XO8x4cfWnFiHSuGYFt3Lv8w+XCQ+P00e9zQyKHTv7vM=; b=h/FgZRBo2iGBoPkZ5BS/rr6eB
	bjYCWL/ww85vFo0TuKG6K76O6ATC8KL6aNBVrcPpF3W1XzKz84AejCyNjOwRZLxMl2uhncb8AycW0
	HwcZptRIW7IoL22kyRW455ZKJjisV25rNwTE5eJVl66vXAM425RUuj+qHCCWQv18dq3hd4ITW32Xq
	D5FYmWxMV3XLyioV4+hV9jhqN+rjkf8uNh2xGmkCcPHuOnvlatCLhlB1qlUNIWrn6yTVcCPRSJT5V
	2N+/5oUxxAblrjrVMfXyebdvRadBhOc/Vuo9LmsRVYCsk0Tu8h3Z7X6FyeSAFEphu61+6/nXof6A+
	mulM501Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM5wY-0004WT-DR; Thu, 02 May 2019 07:15:46 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM5wR-0004Vr-08
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 07:15:41 +0000
X-Originating-IP: 90.88.149.145
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id A896520003;
 Thu,  2 May 2019 07:15:21 +0000 (UTC)
Date: Thu, 2 May 2019 09:15:21 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v4 1/3] arm64: dts: allwinner: a64: Move I2C pinctrl to
 dtsi
Message-ID: <20190502071521.7ekih3bgjth54sry@flea>
References: <20190418174720.17230-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20190418174720.17230-1-jagan@amarulasolutions.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_001539_193828_82AFF577 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6944944299448961347=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6944944299448961347==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="l3fjic7vuxbz5vss"
Content-Disposition: inline


--l3fjic7vuxbz5vss
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Apr 18, 2019 at 11:17:18PM +0530, Jagan Teki wrote:
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
> index f4e78531f639..bef4abf6fa25 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
> @@ -121,8 +121,6 @@
>
>  /* i2c1 connected with gpio headers like pine64, bananapi */
>  &i2c1 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&i2c1_pins>;
>  	status = "disabled";
>  };

That node can be removed entirely

It looks fine otherwise.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--l3fjic7vuxbz5vss
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMqZCQAKCRDj7w1vZxhR
xU9OAQDxTAEtGhuPzyZjpKPIGQXLaALohb8tDqQ5pCkcRraUIQEAvx/AzS8BBrHq
CikCMIi3e4lw8EMelHNzyKK0j78UpQc=
=gnAK
-----END PGP SIGNATURE-----

--l3fjic7vuxbz5vss--


--===============6944944299448961347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6944944299448961347==--

