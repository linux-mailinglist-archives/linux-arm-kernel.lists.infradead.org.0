Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C14919E8E5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 05:35:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zj79fgkHi52wCJiO2e6Tn0XpTka2/h1k1/mFZ9wmeks=; b=PWt/7SoLWeAFbjdD0N8cKX0sx
	EvIWqPpSDAlT9PGT1jo/cQcvZlvm/NJdBHtpXsueZE0QD/PS/7eli/tlTtkj65Z5JXYXJPl4Hc8yS
	27HjJVhKgpsEXdAGu6PwsmerrJ63VvugrWclY9YqLkeJDlzqaPsFfZ2ECqAEmBvkyRQeAl2U49b2+
	A9qDsisDVwNMOz3Et5snMYdHKev5o3IKquay9ll7Rb90aLOiRVwazvXJoKljQopCmoSx88H5ddGHc
	EE0J5XWMxvL3VofyGuG1fb7l8Xe72cmrX31lucCsRVkRKIkGUe/gpnp9hPBlMmDwpBafCy/Y7awPt
	m0C6pmz9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKw46-0006JL-T8; Sun, 05 Apr 2020 03:35:18 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKw3s-0005nG-E8; Sun, 05 Apr 2020 03:35:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id D38D6296779
Received: by earth.universe (Postfix, from userid 1000)
 id 3DCBD3C082A; Sun,  5 Apr 2020 05:35:00 +0200 (CEST)
Date: Sun, 5 Apr 2020 05:35:00 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Subject: Re: [PATCH v8 08/10] power: supply: add battery parameters
Message-ID: <20200405033500.yvelxz6cqnjwnxu7@earth.universe>
References: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
 <48f250bf6928929f60764c4334c60611b46233c4.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
In-Reply-To: <48f250bf6928929f60764c4334c60611b46233c4.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_203504_744383_CD86F148 
X-CRM114-Status: GOOD (  15.17  )
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
Content-Type: multipart/mixed; boundary="===============1524588092455218332=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1524588092455218332==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x27j2hhu3anypmeo"
Content-Disposition: inline


--x27j2hhu3anypmeo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Apr 03, 2020 at 11:47:43AM +0300, Matti Vaittinen wrote:
> Add parsing of new device-tree battery bindings.
>=20
>      - trickle-charge-current-microamp
>      - precharge-upper-limit-microvolt
>      - re-charge-voltage-microvolt
>      - over-voltage-threshold-microvolt
>=20
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

> ---
> No changes since v7
>=20
>  drivers/power/supply/power_supply_core.c | 8 ++++++++
>  include/linux/power_supply.h             | 4 ++++
>  2 files changed, 12 insertions(+)
>=20
> diff --git a/drivers/power/supply/power_supply_core.c b/drivers/power/sup=
ply/power_supply_core.c
> index 1a9a9fae73d3..02b37fe6061c 100644
> --- a/drivers/power/supply/power_supply_core.c
> +++ b/drivers/power/supply/power_supply_core.c
> @@ -620,10 +620,18 @@ int power_supply_get_battery_info(struct power_supp=
ly *psy,
>  			     &info->voltage_min_design_uv);
>  	of_property_read_u32(battery_np, "voltage-max-design-microvolt",
>  			     &info->voltage_max_design_uv);
> +	of_property_read_u32(battery_np, "trickle-charge-current-microamp",
> +			     &info->tricklecharge_current_ua);
>  	of_property_read_u32(battery_np, "precharge-current-microamp",
>  			     &info->precharge_current_ua);
> +	of_property_read_u32(battery_np, "precharge-upper-limit-microvolt",
> +			     &info->precharge_voltage_max_uv);
>  	of_property_read_u32(battery_np, "charge-term-current-microamp",
>  			     &info->charge_term_current_ua);
> +	of_property_read_u32(battery_np, "re-charge-voltage-microvolt",
> +			     &info->charge_restart_voltage_uv);
> +	of_property_read_u32(battery_np, "over-voltage-threshold-microvolt",
> +			     &info->overvoltage_limit_uv);
>  	of_property_read_u32(battery_np, "constant-charge-current-max-microamp",
>  			     &info->constant_charge_current_max_ua);
>  	of_property_read_u32(battery_np, "constant-charge-voltage-max-microvolt=
",
> diff --git a/include/linux/power_supply.h b/include/linux/power_supply.h
> index dcd5a71e6c67..d01322d1ab52 100644
> --- a/include/linux/power_supply.h
> +++ b/include/linux/power_supply.h
> @@ -346,8 +346,12 @@ struct power_supply_battery_info {
>  	int charge_full_design_uah;	    /* microAmp-hours */
>  	int voltage_min_design_uv;	    /* microVolts */
>  	int voltage_max_design_uv;	    /* microVolts */
> +	int tricklecharge_current_ua;	    /* microAmps */
>  	int precharge_current_ua;	    /* microAmps */
> +	int precharge_voltage_max_uv;	    /* microVolts */
>  	int charge_term_current_ua;	    /* microAmps */
> +	int charge_restart_voltage_uv;	    /* microVolts */
> +	int overvoltage_limit_uv;	    /* microVolts */
>  	int constant_charge_current_max_ua; /* microAmps */
>  	int constant_charge_voltage_max_uv; /* microVolts */
>  	int factory_internal_resistance_uohm;   /* microOhms */
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

--x27j2hhu3anypmeo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl6JUeQACgkQ2O7X88g7
+pozLQ/9FcNPH4dWOcFLkQR+sY4xM+aSzKZaUtHTt+Uu8MaY/yN2uh3/wz0TDb3g
JNu5xacZovuVUN790BK7+kRdKTr3NDIH3Y9RB/mnek6/ai2AZlwECSRXkQIoXNg3
AVckq/d/uYl/mqnwikoMYKFJ3E9M5m9jkL9B/7YCg2FYuqcr6iKno8aZ8vtAxfkI
aDeDn/HqaRVnDnUFZQzRmOERaiQq9yuskySsnp6oeExjSXXPTuDVH2O/I7QalFEK
FPr7FadlP8V2av66/crvsNG8VwBsEAJz3euTU3HUwkwcg0vT9Nu3bezt8shi3vZf
NFcMS6OjvQXxObZbdwzJsQZMQDcfP4hmUHLXzIbRoMeVHgpQ7zWUlGXkV/O0vp5y
KbO3Bfdc9XT5wHzLu0zwtSWryrmHBdbEoHhTAAigZXgx7n392IORu8XUf9XpSASG
3f5V7GHNv6mYPcG5m0aBkmFpsx2RAvSJsCRDdo+j+eNrrpuug/0hrt3tcpRk0Oyr
HTim68SO2EebYK3m4xwP0SFrC4dYyNB1zO+WCo8uqNS0cvqnhRbBXP2nqyhiOaZe
MPZCW+w4am/QAxGJteoqDbQLNBz4Bcf3BjRhlFlrwLKO8xTRKoZhb001q1kygUbw
E+eTMtdjIgZ4/porBHZSmixs5v8qC4HKd3UR3U2JHaiZE5X0Xow=
=WPUf
-----END PGP SIGNATURE-----

--x27j2hhu3anypmeo--


--===============1524588092455218332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1524588092455218332==--

