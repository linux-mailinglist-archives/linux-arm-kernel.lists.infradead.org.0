Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0D219E8E3
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 05:33:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TxQr4kA7v0XvQZgwvbIwWKye2qOM5cU8EqkvQCC06Sc=; b=XfR1vFH0ay+jqkiflsqaWQpib
	Uqp0BT9IP/8sokXO3G1S0ueebUomZdp2qYO2SvyaU+2C+OZ1mG6SpRrm7f1SLe4VsoXP19krbwxMF
	guQx545ovxp9++EUx2Nf9tIR8ciaR2HHgBlO4Zn+5Bqx9KW9I7Mv+3eZMPezVmZfQ1ZsmhUVcVYo8
	D7ZDsdeaTz5bdAq2bkKMg9aTk4X15Y95lJXMkE8nN357YFKmk2R4MRjjDXKw/rsbBX+y2I1nbznfa
	2jfNxbeZjlvK1XzqZsQN/Ps5RpQDqfS5tvdLpVEz3BlFI7t55SDNnsnZz3czCd2D8wi1z4lo9ws9R
	YbGLZ5EtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKw2K-0005Kz-QB; Sun, 05 Apr 2020 03:33:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKw2C-0005KV-9T; Sun, 05 Apr 2020 03:33:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 7BC7E294041
Received: by earth.universe (Postfix, from userid 1000)
 id 2870B3C082A; Sun,  5 Apr 2020 05:33:16 +0200 (CEST)
Date: Sun, 5 Apr 2020 05:33:16 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Subject: Re: [PATCH v8 05/10] power: supply: bd70528: rename linear_range to
 avoid collision
Message-ID: <20200405033316.bhafrtorxzwev24z@earth.universe>
References: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
 <7a6727838bcc93f443c993d91d21d9306dee22be.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
In-Reply-To: <7a6727838bcc93f443c993d91d21d9306dee22be.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_203320_591926_E6457092 
X-CRM114-Status: GOOD (  21.32  )
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
Content-Type: multipart/mixed; boundary="===============1716253961410458290=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1716253961410458290==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jokps3gh77qfp23l"
Content-Disposition: inline


--jokps3gh77qfp23l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Apr 03, 2020 at 11:46:30AM +0300, Matti Vaittinen wrote:
> Follow-up patches in this series will add a generic struct
> linear_range. Rename bd70528 internal struct to avoid collision.
>=20
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---

Actually the patch is before this one. But since the include is not
yet used in the bd70528 charger driver, it should be ok to do it in
this order.

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>=20
> No changes since v7
>=20
>  drivers/power/supply/bd70528-charger.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/power/supply/bd70528-charger.c b/drivers/power/suppl=
y/bd70528-charger.c
> index b8e1ec106627..3b820110ecfa 100644
> --- a/drivers/power/supply/bd70528-charger.c
> +++ b/drivers/power/supply/bd70528-charger.c
> @@ -335,14 +335,14 @@ static int bd70528_get_present(struct bd70528_psy *=
bdpsy, int *val)
>  	return 0;
>  }
> =20
> -struct linear_range {
> +struct bd70528_linear_range {
>  	int min;
>  	int step;
>  	int vals;
>  	int low_sel;
>  };
> =20
> -static const struct linear_range current_limit_ranges[] =3D {
> +static const struct bd70528_linear_range current_limit_ranges[] =3D {
>  	{
>  		.min =3D 5,
>  		.step =3D 1,
> @@ -374,7 +374,7 @@ static const struct linear_range current_limit_ranges=
[] =3D {
>   * voltage for low temperatures. The driver currently only reads
>   * the charge current at room temperature. We do set both though.
>   */
> -static const struct linear_range warm_charge_curr[] =3D {
> +static const struct bd70528_linear_range warm_charge_curr[] =3D {
>  	{
>  		.min =3D 10,
>  		.step =3D 10,
> @@ -398,7 +398,7 @@ static const struct linear_range warm_charge_curr[] =
=3D {
>  #define MAX_WARM_CHG_CURR_SEL 0x1f
>  #define MIN_CHG_CURR_SEL 0x0
> =20
> -static int find_value_for_selector_low(const struct linear_range *r,
> +static int find_value_for_selector_low(const struct bd70528_linear_range=
 *r,
>  				       int selectors, unsigned int sel,
>  				       unsigned int *val)
>  {
> @@ -420,7 +420,7 @@ static int find_value_for_selector_low(const struct l=
inear_range *r,
>   * I guess it is enough if we use voltage/current which is closest (belo=
w)
>   * the requested?
>   */
> -static int find_selector_for_value_low(const struct linear_range *r,
> +static int find_selector_for_value_low(const struct bd70528_linear_range=
 *r,
>  				       int selectors, unsigned int val,
>  				       unsigned int *sel, bool *found)
>  {
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

--jokps3gh77qfp23l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl6JUXsACgkQ2O7X88g7
+pqxxA//V7QS9O1yUBw3gvnZTvoRJYIHeFHiDwBYFW9+Ub4CX5kvgBYR4cotvsak
PzZv8g/BVF/bE2xqKmc64QKeerw0gtj6wH1IVp/9qpD2EZa6p2et0Ga39nWX4jQl
jbAWyknii9x6/s6xd233QrXR65Uh8gG7Aiwwmpftngra/bMwchiuCNO1fsAIuFpR
NOqbYRYMie7iICwFKRd54fmL9jHtWoxoKmO/+E4qVVCE/bV8iWVUeQwVvhri55wv
aIqh3pYgI45ZJYkLrucgI3wnodLb93djJFmbfqU3YwjXPzpi1UNV+icNUfJgTJH7
EcNnn7QJxVOBMU0EHyUeC/b19eNEnO06AphyMLjdR2qTnsJnTAT/C2DX0txSUtmR
N0HY+B8UZGbWcpYsf8H478PU1X2cWdVJ6jWrJh711Y+Xf/ply3AFPMUN+uj2fOYw
4DUbsgLTNOwQtg/w7AfM7b8nfxvE+ElWfDIfZ/zN4gSbQM8CpGUinzB0CZGH3Z2s
lQyHenCKjVwmt0zSn6Lby66HuEK0FOpp/2lX0jHwSGV2Mi87llLBDrbOf5eHfuXS
dlgVPiZ83KJFLJiQUJWFsDq07wT2c7SV4k9BIPVFCmBo6TnMjfyWDd4jA1Q113dT
YXRBYBahJusdBFRNB9TwKQL4dOKXYvmfUe39q3QbPUTxN2S2p7g=
=0+Ht
-----END PGP SIGNATURE-----

--jokps3gh77qfp23l--


--===============1716253961410458290==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1716253961410458290==--

