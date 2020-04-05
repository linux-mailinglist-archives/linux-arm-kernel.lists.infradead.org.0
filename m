Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C511519E8ED
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 05:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6883iwCVcmKmC1X2k198p+kc4bYhfqXPqpqDZspj8tI=; b=D0uYmCvxlZpZOZsbrISsalIfH
	vH5yMp3htSHDG62xe2ejDYFrU+0IBdFAstuYwQ1W5Z5zkA8WkWBqCWVjTNa2QLOd16uRc8ECZrAxh
	5BMRnzIfm0JagWQHERQLKeZK2P6g76SP5Ki3lnfx4r2DOS0N1WxIuWJ63PhqK6dRAaxpg+LrMyUaX
	kl+oLu6s6xGXcp19NFwqSBv1pNJ8NS9pp66pLZUmNtbTXU7uQf8mcn8yLvwgFUdddIRp3lmqAjutD
	akmD/jABijBSF9l13TKp/xuy6a39akiHRv4HVE+BubNaKArFPTJ4QLRkfogTf7u4FvEJ/v31RG2Qe
	tPQ+sgxhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKw6I-0000mX-4V; Sun, 05 Apr 2020 03:37:34 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKw6A-0000lv-AY; Sun, 05 Apr 2020 03:37:28 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id D83CF28DFDA
Received: by earth.universe (Postfix, from userid 1000)
 id E36E23C082A; Sun,  5 Apr 2020 05:37:22 +0200 (CEST)
Date: Sun, 5 Apr 2020 05:37:22 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Subject: Re: [PATCH v8 07/10] power: supply: bd70528: use linear ranges
Message-ID: <20200405033722.4co4bnrz5whykrrq@earth.universe>
References: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
 <4a70a243cc169ddb2c2ea3a78a4550a51dadd8fd.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
In-Reply-To: <4a70a243cc169ddb2c2ea3a78a4550a51dadd8fd.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_203726_628869_9A906328 
X-CRM114-Status: GOOD (  27.92  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: multipart/mixed; boundary="===============8321885818066651836=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8321885818066651836==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4zf5onz7zh65aeis"
Content-Disposition: inline


--4zf5onz7zh65aeis
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Apr 03, 2020 at 11:47:21AM +0300, Matti Vaittinen wrote:
> Change the bd70528 to use common linear_range code instead of
> implementing a copy of it in this driver.
>=20
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>=20
> No changes since v7
>=20
>  drivers/power/supply/Kconfig           |   1 +
>  drivers/power/supply/bd70528-charger.c | 144 ++++++++++---------------
>  2 files changed, 56 insertions(+), 89 deletions(-)
>=20
> diff --git a/drivers/power/supply/Kconfig b/drivers/power/supply/Kconfig
> index 9a5591ab90d0..8781c674ed07 100644
> --- a/drivers/power/supply/Kconfig
> +++ b/drivers/power/supply/Kconfig
> @@ -695,6 +695,7 @@ config CHARGER_UCS1002
>  config CHARGER_BD70528
>  	tristate "ROHM bd70528 charger driver"
>  	depends on MFD_ROHM_BD70528
> +	select LINEAR_RANGES
>  	default n
>  	help
>  	 Say Y here to enable support for getting battery status
> diff --git a/drivers/power/supply/bd70528-charger.c b/drivers/power/suppl=
y/bd70528-charger.c
> index 3b820110ecfa..7a805faeee83 100644
> --- a/drivers/power/supply/bd70528-charger.c
> +++ b/drivers/power/supply/bd70528-charger.c
> @@ -72,6 +72,7 @@
>  #include <linux/module.h>
>  #include <linux/platform_device.h>
>  #include <linux/power_supply.h>
> +#include <linux/linear_range.h>
> =20
>  #define CHG_STAT_SUSPEND	0x0
>  #define CHG_STAT_TRICKLE	0x1
> @@ -335,38 +336,37 @@ static int bd70528_get_present(struct bd70528_psy *=
bdpsy, int *val)
>  	return 0;
>  }
> =20
> -struct bd70528_linear_range {
> -	int min;
> -	int step;
> -	int vals;
> -	int low_sel;
> -};
> -
> -static const struct bd70528_linear_range current_limit_ranges[] =3D {
> +static const struct linear_range current_limit_ranges[] =3D {
>  	{
>  		.min =3D 5,
>  		.step =3D 1,
> -		.vals =3D 36,
> -		.low_sel =3D 0,
> +		.min_sel =3D 0,
> +		.max_sel =3D 0x22,
>  	},
>  	{
>  		.min =3D 40,
>  		.step =3D 5,
> -		.vals =3D 5,
> -		.low_sel =3D 0x23,
> +		.min_sel =3D 0x23,
> +		.max_sel =3D 0x26,
>  	},
>  	{
>  		.min =3D 60,
>  		.step =3D 20,
> -		.vals =3D 8,
> -		.low_sel =3D 0x27,
> +		.min_sel =3D 0x27,
> +		.max_sel =3D 0x2d,
>  	},
>  	{
>  		.min =3D 200,
>  		.step =3D 50,
> -		.vals =3D 7,
> -		.low_sel =3D 0x2e,
> -	}
> +		.min_sel =3D 0x2e,
> +		.max_sel =3D 0x34,
> +	},
> +	{
> +		.min =3D 500,
> +		.step =3D 0,
> +		.min_sel =3D 0x35,
> +		.max_sel =3D 0x3f,
> +	},
>  };
> =20
>  /*
> @@ -374,18 +374,18 @@ static const struct bd70528_linear_range current_li=
mit_ranges[] =3D {
>   * voltage for low temperatures. The driver currently only reads
>   * the charge current at room temperature. We do set both though.
>   */
> -static const struct bd70528_linear_range warm_charge_curr[] =3D {
> +static const struct linear_range warm_charge_curr[] =3D {
>  	{
>  		.min =3D 10,
>  		.step =3D 10,
> -		.vals =3D 20,
> -		.low_sel =3D 0,
> +		.min_sel =3D 0,
> +		.max_sel =3D 0x12
>  	},
>  	{
>  		.min =3D 200,
>  		.step =3D 25,
> -		.vals =3D 13,
> -		.low_sel =3D 0x13,
> +		.min_sel =3D 0x13,
> +		.max_sel =3D 0x1f
>  	},
>  };
> =20
> @@ -398,56 +398,6 @@ static const struct bd70528_linear_range warm_charge=
_curr[] =3D {
>  #define MAX_WARM_CHG_CURR_SEL 0x1f
>  #define MIN_CHG_CURR_SEL 0x0
> =20
> -static int find_value_for_selector_low(const struct bd70528_linear_range=
 *r,
> -				       int selectors, unsigned int sel,
> -				       unsigned int *val)
> -{
> -	int i;
> -
> -	for (i =3D 0; i < selectors; i++) {
> -		if (r[i].low_sel <=3D sel && r[i].low_sel + r[i].vals >=3D sel) {
> -			*val =3D r[i].min + (sel - r[i].low_sel) * r[i].step;
> -			return 0;
> -		}
> -	}
> -	return -EINVAL;
> -}
> -
> -/*
> - * For BD70528 voltage/current limits we happily accept any value which
> - * belongs the range. We could check if value matching the selector is
> - * desired by computing the range min + (sel - sel_low) * range step - b=
ut
> - * I guess it is enough if we use voltage/current which is closest (belo=
w)
> - * the requested?
> - */
> -static int find_selector_for_value_low(const struct bd70528_linear_range=
 *r,
> -				       int selectors, unsigned int val,
> -				       unsigned int *sel, bool *found)
> -{
> -	int i;
> -	int ret =3D -EINVAL;
> -
> -	*found =3D false;
> -	for (i =3D 0; i < selectors; i++) {
> -		if (r[i].min <=3D val) {
> -			if (r[i].min + r[i].step * r[i].vals >=3D val) {
> -				*found =3D true;
> -				*sel =3D r[i].low_sel + (val - r[i].min) /
> -				       r[i].step;
> -				ret =3D 0;
> -				break;
> -			}
> -			/*
> -			 * If the range max is smaller than requested
> -			 * we can set the max supported value from range
> -			 */
> -			*sel =3D r[i].low_sel + r[i].vals;
> -			ret =3D 0;
> -		}
> -	}
> -	return ret;
> -}
> -
>  static int get_charge_current(struct bd70528_psy *bdpsy, int *ma)
>  {
>  	unsigned int sel;
> @@ -463,9 +413,9 @@ static int get_charge_current(struct bd70528_psy *bdp=
sy, int *ma)
> =20
>  	sel &=3D BD70528_MASK_CHG_CHG_CURR;
> =20
> -	ret =3D find_value_for_selector_low(&warm_charge_curr[0],
> -					  ARRAY_SIZE(warm_charge_curr), sel,
> -					  ma);
> +	ret =3D linear_range_get_value_array(&warm_charge_curr[0],
> +					   ARRAY_SIZE(warm_charge_curr),
> +					   sel, ma);
>  	if (ret) {
>  		dev_err(bdpsy->dev,
>  			"Unknown charge current value 0x%x\n",
> @@ -491,10 +441,9 @@ static int get_current_limit(struct bd70528_psy *bdp=
sy, int *ma)
> =20
>  	sel &=3D BD70528_MASK_CHG_DCIN_ILIM;
> =20
> -	ret =3D find_value_for_selector_low(&current_limit_ranges[0],
> -					  ARRAY_SIZE(current_limit_ranges), sel,
> -					  ma);
> -
> +	ret =3D linear_range_get_value_array(&current_limit_ranges[0],
> +					   ARRAY_SIZE(current_limit_ranges),
> +					   sel, ma);
>  	if (ret) {
>  		/* Unspecified values mean 500 mA */
>  		*ma =3D 500;
> @@ -588,15 +537,28 @@ static int set_charge_current(struct bd70528_psy *b=
dpsy, int ma)
>  		goto set;
>  	}
> =20
> -	ret =3D find_selector_for_value_low(&warm_charge_curr[0],
> -					  ARRAY_SIZE(warm_charge_curr), ma,
> -					  &reg, &found);
> +/*
> + * For BD70528 voltage/current limits we happily accept any value which
> + * belongs the range. We could check if value matching the selector is
> + * desired by computing the range min + (sel - sel_low) * range step - b=
ut
> + * I guess it is enough if we use voltage/current which is closest (belo=
w)
> + * the requested?
> + */
> +
> +	ret =3D linear_range_get_selector_low_array(warm_charge_curr,
> +						  ARRAY_SIZE(warm_charge_curr),
> +						  ma, &reg, &found);
>  	if (ret) {
> +		dev_err(bdpsy->dev,
> +			 "Unsupported charge current %u mA\n", ma);
>  		reg =3D MIN_CHG_CURR_SEL;
>  		goto set;
>  	}
>  	if (!found) {
> -		/* There was a gap in supported values and we hit it */
> +		/*
> +		 * There was a gap in supported values and we hit it.
> +		 * Yet a smaller value was found so we use it.
> +		 */
>  		dev_warn(bdpsy->dev,
>  			 "Unsupported charge current %u mA\n", ma);
>  	}
> @@ -648,17 +610,21 @@ static int set_current_limit(struct bd70528_psy *bd=
psy, int ma)
>  		goto set;
>  	}
> =20
> -	ret =3D find_selector_for_value_low(&current_limit_ranges[0],
> -					  ARRAY_SIZE(current_limit_ranges), ma,
> -					  &reg, &found);
> +	ret =3D linear_range_get_selector_low_array(current_limit_ranges,
> +					ARRAY_SIZE(current_limit_ranges),
> +					ma, &reg, &found);
>  	if (ret) {
> +		dev_err(bdpsy->dev, "Unsupported current limit %umA\n", ma);
>  		reg =3D MIN_CURR_LIMIT_SEL;
>  		goto set;
>  	}
>  	if (!found) {
> -		/* There was a gap in supported values and we hit it ?*/
> -		dev_warn(bdpsy->dev, "Unsupported current limit %umA\n",
> -			 ma);
> +		/*
> +		 * There was a gap in supported values and we hit it.
> +		 * We found a smaller value from ranges and use it.
> +		 * Warn user though.
> +		 */
> +		dev_warn(bdpsy->dev, "Unsupported current limit %umA\n", ma);
>  	}
> =20
>  set:
> --=20
> 2.21.0
>=20
>=20
> --=20
> Matti Vaittinen, Linux device drivers
> ROHM Semiconductors, Finland SWDC
> Kiviharjunlenkki 1E
> 90220 OULU
> FINLAND
>=20
> ~~~ "I don't think so," said Rene Descartes. Just then he vanished ~~~
> Simon says - in Latin please.
> ~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
> Thanks to Simon Glass for the translation =3D]=20

--4zf5onz7zh65aeis
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl6JUnIACgkQ2O7X88g7
+prcERAAlURR92Ar+SO4+R/CiOU4lJpcZfw4c7v0gLYkD1GU65G+0b4vQJk9zNBX
TfqCkGDxYVo7XCvzMW3Zt4mlv6MjYGJw5XYEywgmBpRSnl+iYHnGUNezMAkhX5ux
wzn2JBv4Zs9xPyQYXsKenRAfFkt9lUGZYXXp+WX47v3kOrK/2kbHYa9H2z339GD8
cpiVPVegEHIZErP1CNqlmN3xj+hdwOixfo4Fm7NSFfw+gmGSqyH14yTc5e4fwhFU
dn+0aPVh8uUkZ2opjaer2khzy6AI2yDsAAXzZjedgMwtVPq/gJuFSwQ6wx/1ZdLe
uvaDw+9LY1YAXGLAwsIFgwajIrW4qi3L+LH807hx0sFD/+qBRcrj+sdEpA8izM/B
8zrgH3cpezv+8jxygSIqUvox1QztpF5LAlI7cyMtAWkVnnNyF2ca+RYZ/460IW1i
ClG1JK6QukRdheUbIl5qpuAVoYlfjZxm0K0/2kSAkI6NLO8lOetkydyPiurKHjYr
eUO07Gs8KkcRXtOiHW10tFyvLcn7inDITTwHBWo29GoccZfpOTH1P/VG7v91Y8aj
Hn5vVyqm29vAu6EyaeLGltR38U2LXWcPAlexUqhTwUaxldjFImmCrbdm1e7Jk47X
bPjjcWTODpbHOMXtt++kwABiEHTj5pjqYWMCBCmlEOVoEXZkOno=
=iFaH
-----END PGP SIGNATURE-----

--4zf5onz7zh65aeis--


--===============8321885818066651836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8321885818066651836==--

