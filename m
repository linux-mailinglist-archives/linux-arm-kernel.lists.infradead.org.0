Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9019032A81
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 10:11:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YZZFRpD5SbiJbvIR2QyC26bxIzlXygMz4VaXZvAGeqg=; b=n3y4RIY7HUUssbrJE4Vjj8fth
	yoz95peyt+CXF6y7YJSw1LkX8LM4cStFW50TqyTzHE4a+9QfJ86I0Pk582Jm4PbvhXTulpwAPe8mq
	te2VrdP7WkBbeL8JVfBlcVcMdiWYx6LxqKFFRKS5xZ0YbiuKrdavc63DduPqDR3nyohQl0cmEtduf
	z2H4JTFo7WcB+4JCmadT3HXlj0FhwCd3RqbV5vzN/MG6yrSAUn3naUVpWyXzM5LyPhLiDwOPGB4o9
	uONQ+8GASieTh7EjKQpxbcmn7NZdOoM6JZSo9ClsUiJzqcRcX88+Q5zURAAdEsJnM0apLXvO34kUl
	10hvd9A8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXi4L-00065f-AW; Mon, 03 Jun 2019 08:11:49 +0000
Received: from mslow2.mail.gandi.net ([217.70.178.242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXi4D-00065G-TR
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 08:11:43 +0000
Received: from relay11.mail.gandi.net (unknown [217.70.178.231])
 by mslow2.mail.gandi.net (Postfix) with ESMTP id 437FA3AEF3E
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  3 Jun 2019 07:43:03 +0000 (UTC)
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 8ECBB100016;
 Mon,  3 Jun 2019 07:42:47 +0000 (UTC)
Date: Mon, 3 Jun 2019 09:42:47 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Luca Weiss <luca@z3ntu.xyz>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Add lradc node
Message-ID: <20190603074247.hlayod2pxq55f6ci@flea>
References: <20190518170929.24789-1-luca@z3ntu.xyz> <4343071.IDWclfcoxo@g550jk>
 <20190524092001.ztf3kntaj4uiswnv@flea> <6901794.oDhxEVzEqc@g550jk>
MIME-Version: 1.0
In-Reply-To: <6901794.oDhxEVzEqc@g550jk>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_011142_105656_21D11443 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.242 listed in list.dnswl.org]
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [217.70.178.242 listed in bl.score.senderscore.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6354542040536797850=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6354542040536797850==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pck2udhpnuo5jdg4"
Content-Disposition: inline


--pck2udhpnuo5jdg4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, May 31, 2019 at 12:27:55PM +0200, Luca Weiss wrote:
> On Freitag, 24. Mai 2019 11:20:01 CEST Maxime Ripard wrote:
> >
> > It would be great to drop the -keys from the compatible, and to
> > document the bindings
> >
> > Looks good otherwise
> >
> > Maxime
>
> So I should just document the "allwinner,sun50i-a64-lradc" string in
> Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt ? Don't I also
> have to add the compatible to the driver code then? Just adding the a64
> compatible to a dts wouldn't work without that.

What I meant was that you needed both, something like:

compatible = "allwinner,sun50i-a64-lradc", "allwinner,sun8i-a83t-lradc";

That way, the OS will try to match a driver for the A64 compatible if
any, and fallback to the A83's otherwise. And since we don't have any
quirk at the moment, there's no change needed to the driver.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--pck2udhpnuo5jdg4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPTPdwAKCRDj7w1vZxhR
xdBQAQCizjZAoJNebpV+1K7cJAfYCjktS+jc7qUnLh5ZXhZI3AEA46RCz7UuQmCi
CFyLUjFOAPabqusD+2Y5LmXDs76vYg4=
=CmYf
-----END PGP SIGNATURE-----

--pck2udhpnuo5jdg4--


--===============6354542040536797850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6354542040536797850==--

