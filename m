Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 105E919E8DB
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 05:27:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=thINb19oppTed05vyrQJeEGzIcYCEzd+FFI7BJamO7E=; b=cEmRI3EqXAp4wZEKW448Xfwpg
	Y4iigKfc8QuYM1fy20yDg/T75V1mh+Lp6mJhLV2CUog9EAYki0A6GLbjnX/wBartDNE1HDz2820hY
	i1uwVPNLP724PM7ymaCTZay+cwkk66n7/BLuLgR3D2I8MgscgOw0FwB9eXx2JwUKKJ6EIdM9muDOV
	Z5UbOI2aQ104h0u5byl+DrKlCUw0kRh6Nqtgwcn7wUg6wVivtut59Fbwe8OsEttVlCliQxocd75lw
	wimq0z63O09jD7oajF9gV9mJZTqW5fC85gybF0+gX3FsdnPkcZm0zJ5aaQPXqlNm4QTaqnz+wFFzS
	vXvoAFKwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKvwf-0001rd-7Q; Sun, 05 Apr 2020 03:27:37 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKvwY-0001r4-PL; Sun, 05 Apr 2020 03:27:32 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 6B239296762
Received: by earth.universe (Postfix, from userid 1000)
 id 53E0E3C082A; Sun,  5 Apr 2020 05:27:27 +0200 (CEST)
Date: Sun, 5 Apr 2020 05:27:27 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Subject: Re: [PATCH v8 00/10] Support ROHM BD99954 charger IC
Message-ID: <20200405032727.m3jz3r5age6iyqz5@earth.universe>
References: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
In-Reply-To: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_202730_957045_F966D5DD 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Andrei Stefanescu <andrei.stefanescu@microchip.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Linus Walleij <linus.walleij@linaro.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andreas Kemnade <andreas@kemnade.info>,
 "Angelo G. Del Regno" <kholk11@gmail.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org,
 Axel Lin <axel.lin@ingics.com>, Gregory CLEMENT <gregory.clement@bootlin.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Markus Reichl <m.reichl@fivetechno.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, markus.laine@fi.rohmeurope.com,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>, devicetree@vger.kernel.org,
 Charles Keepax <ckeepax@opensource.cirrus.com>, mazziesaccount@gmail.com,
 linux-arm-msm@vger.kernel.org, Richard Fitzgerald <rf@opensource.cirrus.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Baolin Wang <baolin.wang@linaro.org>, Sangbeom Kim <sbkim73@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pm@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, mikko.mutanen@fi.rohmeurope.com,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 patches@opensource.cirrus.com
Content-Type: multipart/mixed; boundary="===============5504476906657632921=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5504476906657632921==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v57tfze76jocyeke"
Content-Disposition: inline


--v57tfze76jocyeke
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Apr 03, 2020 at 11:36:17AM +0300, Matti Vaittinen wrote:
> Matti Vaittinen (10):
>   dt-bindings: battery: add new battery parameters
>   dt_bindings: ROHM BD99954 Charger
>   lib: add linear ranges helpers
>   lib/test_linear_ranges: add a test for the 'linear_ranges'
>   power: supply: bd70528: rename linear_range to avoid collision
>   regulator: use linear_ranges helper
>   power: supply: bd70528: use linear ranges
>   power: supply: add battery parameters
>   power: supply: Support ROHM bd99954 charger
>   power: supply: Fix Kconfig help text indentiation

Can you please rebase the series, so that it is ordered with the
linear ranges and regulator patches in the beginning? That way
Mark can take the first three patches through the regulator tree
and provide an immutable branch to me without requiring all of
the power-supply specific patches. E.g. like this:

>   lib: add linear ranges helpers
>   lib/test_linear_ranges: add a test for the 'linear_ranges'
>   regulator: use linear_ranges helper
>   dt-bindings: battery: add new battery parameters
>   dt_bindings: ROHM BD99954 Charger
>   power: supply: bd70528: rename linear_range to avoid collision
>   power: supply: bd70528: use linear ranges
>   power: supply: add battery parameters
>   power: supply: Support ROHM bd99954 charger
>   power: supply: Fix Kconfig help text indentiation

-- Sebastian

--v57tfze76jocyeke
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl6JUB8ACgkQ2O7X88g7
+pq0phAAqKz2qhyrZDK4oKG3EVaw1RiaFjstyhK6rjVUy+GxtcBQ1zTIdq8MyICK
2r6Tfxro4mSWO4ZvQBqVo/EzoPiAqM1dTJN4xbRKDjqO/GSNfsmF16VyFFZV0aSz
1SOAs58vxRfzGjwfnOIlaBThGyAlvz6M3yV5UkIj7RAHlcp5cXT5QeSSRTiStqOg
vGFy6rWMQCSwzVD+vVzKUTXkPX+eN2GiIDje7r4jBHc//Ie43l54fUHMJBVH2rEK
yua53lgJTxQqFxctIr/7zXbnzhOYVll56IoEzyqO+CWqI4uN2Ei05yw/m4ShIa8g
Ax1z3zBEfKYYmfEiEd6mhTOZat+/Bt7Q8sVlR3l0s8c9o79nRZv5yOrszvstTc6y
3yqW7u2xD5WXMDQDzwnZodsBifhez+BTdpN2fgKOlx9NUGstae32Q/hnMrCta+bU
Alsif/vaFHHrHu52LklrNzWNEbd4Y+l1Z0G8HnFeoE1iTlRNiT+eqGbbd9pbwG8i
UjRj75k/DS0HHEQOZo2TZ2oZSMaAa7ORWBUaxnW64/gZwHFajCvVdRVbZg1jKBTB
ixIFyXPHb1PpWV/FrWsA+7Nzn9hLh/P//t8G1C98lTuT8g91wxOL25G5iOwsaN+D
pZFbwT3jPYD72u6BcEbzWUvva1Ft8crkgBVxRdagghlmyjIpZWg=
=wUDj
-----END PGP SIGNATURE-----

--v57tfze76jocyeke--


--===============5504476906657632921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5504476906657632921==--

