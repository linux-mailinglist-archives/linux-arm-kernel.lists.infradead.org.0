Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E20519E8D8
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 05:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DDF3gE/nEt2kIIidZGbdXjhdHRF9GqHUMtEOfmhnP+A=; b=l2snqbbEzkziEnW+HVKTQ1qVH
	VR/sBEwqNgxv8nPk2W2L1O8D+JWi3gxikBcoXVfy5kEJBXHHaA90e6McI6KrYVCNmVIgpL0niu5HW
	57Qq3lllPcP4IPKJ3Gjc13iJslyZQwRAK2yUMkHPSIkBeAJm80WJt6Yx8jETbU3u+N6NagoIFopHc
	xL7gNFtH9vGySI3QkbhKMfQwCtBUHGDSKaG1Nw9ZCmfi1rmLwpmDxgxRYFHzHvJX86cLxeeHVsqF8
	NMKCFo0wGUg/4WkW8qj/sjK06h4efWtzn+c++eD2K7c3kcvIFgOQZjiGbmhLdw4wrZdYgUSlwNCXL
	k1wlpW+Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKvs2-0007GL-Jz; Sun, 05 Apr 2020 03:22:50 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKvrr-0007FX-TV; Sun, 05 Apr 2020 03:22:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 4A0C8290EDB
Received: by earth.universe (Postfix, from userid 1000)
 id 251FD3C082A; Sun,  5 Apr 2020 05:22:33 +0200 (CEST)
Date: Sun, 5 Apr 2020 05:22:33 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Subject: Re: [PATCH v8 09/10] power: supply: Support ROHM bd99954 charger
Message-ID: <20200405032233.btlwo5wvzmrrw65k@earth.universe>
References: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
 <10b40f9bca727e790d891f6442a879bfeca68624.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
In-Reply-To: <10b40f9bca727e790d891f6442a879bfeca68624.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_202240_490640_319BCD59 
X-CRM114-Status: GOOD (  24.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============7885543973465174219=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7885543973465174219==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="scizvxsfxllrt6k5"
Content-Disposition: inline


--scizvxsfxllrt6k5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Apr 03, 2020 at 11:48:05AM +0300, Matti Vaittinen wrote:
> The ROHM BD99954 is a Battery Management LSI for 1-4 cell Lithium-Ion
> secondary battery intended to be used in space-constraint equipment such
> as Low profile Notebook PC, Tablets and other applications. BD99954
> provides a Dual-source Battery Charger, two port BC1.2 detection and a
> Battery Monitor.
>=20
> Support ROHM BD99954 Charger IC.
>=20
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---
>=20
> No changes since v7

Thanks, the drivers looks mostly good to me, I found some minor
things. Please fix before sending the next (and hopefully final)
revision.

>  drivers/power/supply/Kconfig           |    9 +
>  drivers/power/supply/Makefile          |    1 +
>  drivers/power/supply/bd99954-charger.c | 1149 ++++++++++++++++++++++++
>  include/linux/power/bd99954-charger.h  | 1075 ++++++++++++++++++++++

Please move this header to drivers/power/supply/, the public
include directory is only needed for platform_data and MFD.

>  4 files changed, 2234 insertions(+)
>  create mode 100644 drivers/power/supply/bd99954-charger.c
>  create mode 100644 include/linux/power/bd99954-charger.h
>=20
> diff --git a/drivers/power/supply/Kconfig b/drivers/power/supply/Kconfig
> index 8781c674ed07..af96d7fa56b1 100644
> --- a/drivers/power/supply/Kconfig
> +++ b/drivers/power/supply/Kconfig
> @@ -702,6 +702,15 @@ config CHARGER_BD70528
>  	 information and altering charger configurations from charger
>  	 block of the ROHM BD70528 Power Management IC.
> =20
> +config CHARGER_BD99954
> +	tristate "ROHM bd99954 charger driver"
> +	depends on I2C
> +	select LINEAR_RANGES
> +	help
> +	  Say Y here to enable support for getting battery and charger
> +	  information and altering charger configurations from the ROHM
> +	  BD99954 charger IC.
> +
>  config CHARGER_WILCO
>  	tristate "Wilco EC based charger for ChromeOS"
>  	depends on WILCO_EC
> diff --git a/drivers/power/supply/Makefile b/drivers/power/supply/Makefile
> index 6c7da920ea83..eed11ca1bd7d 100644
> --- a/drivers/power/supply/Makefile
> +++ b/drivers/power/supply/Makefile
> @@ -91,4 +91,5 @@ obj-$(CONFIG_CHARGER_SC2731)	+=3D sc2731_charger.o
>  obj-$(CONFIG_FUEL_GAUGE_SC27XX)	+=3D sc27xx_fuel_gauge.o
>  obj-$(CONFIG_CHARGER_UCS1002)	+=3D ucs1002_power.o
>  obj-$(CONFIG_CHARGER_BD70528)	+=3D bd70528-charger.o
> +obj-$(CONFIG_CHARGER_BD99954)	+=3D bd99954-charger.o
>  obj-$(CONFIG_CHARGER_WILCO)	+=3D wilco-charger.o
> diff --git a/drivers/power/supply/bd99954-charger.c b/drivers/power/suppl=
y/bd99954-charger.c
> new file mode 100644
> index 000000000000..b447b56b073a
> --- /dev/null
> +++ b/drivers/power/supply/bd99954-charger.c
> @@ -0,0 +1,1149 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * ROHM BD99954 charger driver
> + *
> + * Copyright (C) 2020 Rohm Semiconductors
> + *	Originally written by:
> + *		Mikko Mutanen <mikko.mutanen@fi.rohmeurope.com>
> + *		Markus Laine <markus.laine@fi.rohmeurope.com>
> + *	Bugs added by:
> + *		Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> + */
> +
> +/*
> + *   The battery charging profile of BD99954.
> + *
> + *   Curve (1) represents charging current.
> + *   Curve (2) represents battery voltage.
> + *
> + *   The BD99954 data sheet divides charging to three phases.
> + *   a) Trickle-charge with constant current (8).
> + *   b) pre-charge with constant current (6)
> + *   c) fast-charge, first with constant current (5) phase. After
> + *      the battery voltage has reached target level (4) we have constant
> + *      voltage phase until charging current has dropped to termination
> + *      level (7)
> + *
> + *    V ^                                                        ^ I
> + *      .                                                        .
> + *      .                                                        .
> + *(4)` `.` ` ` ` ` ` ` ` ` ` ` ` ` ` ----------------------------.
> + *      .                           :/                           .
> + *      .                     o----+/:/ ` ` ` ` ` ` ` ` ` ` ` ` `.` ` (5)
> + *      .                     +   ::  +                          .
> + *      .                     +  /-   --                         .
> + *      .                     +`/-     +                         .
> + *      .                     o/-      -:                        .
> + *      .                    .s.        +`                       .
> + *      .                  .--+         `/                       .
> + *      .               ..``  +          .:                      .
> + *      .             -`      +           --                     .
> + *      .    (2)  ...``       +            :-                    .
> + *      .    ...``            +             -:                   .
> + *(3)` `.`.""  ` ` ` `+-------- ` ` ` ` ` ` `.:` ` ` ` ` ` ` ` ` .` ` (6)
> + *      .             +                       `:.                .
> + *      .             +                         -:               .
> + *      .             +                           -:.            .
> + *      .             +                             .--.         .
> + *      .   (1)       +                                `.+` ` ` `.` ` (7)
> + *      -..............` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` + ` ` ` .` ` (8)
> + *      .                                                +       -
> + *      -------------------------------------------------+++++++++-->
> + *      |   trickle   |  pre  |          fast            |
> + *
> + * Details of DT properties for different limits can be found from BD999=
54
> + * device tree binding documentation.
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/interrupt.h>
> +#include <linux/i2c.h>
> +#include <linux/kernel.h>
> +#include <linux/linear_range.h>
> +#include <linux/module.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/power/bd99954-charger.h>
> +#include <linux/power_supply.h>
> +#include <linux/property.h>
> +#include <linux/regmap.h>
> +#include <linux/types.h>
> +
> +struct battery_data {
> +	u16 precharge_current;	/* Trickle-charge Current */
> +	u16 fc_reg_voltage;	/* Fast Charging Regulation Voltage */
> +	u16 voltage_min;
> +	u16 voltage_max;
> +};
> +
> +/* Initial field values, converted to initial register values */
> +struct bd9995x_init_data {
> +	u16 vsysreg_set;	/* VSYS Regulation Setting */
> +	u16 ibus_lim_set;	/* VBUS input current limitation */
> +	u16 icc_lim_set;	/* VCC/VACP Input Current Limit Setting */
> +	u16 itrich_set;		/* Trickle-charge Current Setting */
> +	u16 iprech_set;		/* Pre-Charge Current Setting */
> +	u16 ichg_set;		/* Fast-Charge constant current */
> +	u16 vfastchg_reg_set1;	/* Fast Charging Regulation Voltage */
> +	u16 vprechg_th_set;	/* Pre-charge Voltage Threshold Setting */
> +	u16 vrechg_set;		/* Re-charge Battery Voltage Setting */
> +	u16 vbatovp_set;	/* Battery Over Voltage Threshold Setting */
> +	u16 iterm_set;		/* Charging termination current */
> +};
> +
> +struct bd9995x_state {
> +	u8 online;
> +	u16 chgstm_status;
> +	u16 vbat_vsys_status;
> +	u16 vbus_vcc_status;
> +};
> +
> +struct bd9995x_device {
> +	struct i2c_client *client;
> +	struct device *dev;
> +	struct power_supply *charger;
> +
> +	struct regmap *rmap;
> +	struct regmap_field *rmap_fields[F_MAX_FIELDS];
> +
> +	int chip_id;
> +	int chip_rev;
> +	struct bd9995x_init_data init_data;
> +	struct bd9995x_state state;
> +
> +	struct mutex lock; /* Protect state data */
> +};
> +
> +static const struct regmap_range bd9995x_readonly_reg_ranges[] =3D {
> +	regmap_reg_range(CHGSTM_STATUS, SEL_ILIM_VAL),
> +	regmap_reg_range(IOUT_DACIN_VAL, IOUT_DACIN_VAL),
> +	regmap_reg_range(VCC_UCD_STATUS, VCC_IDD_STATUS),
> +	regmap_reg_range(VBUS_UCD_STATUS, VBUS_IDD_STATUS),
> +	regmap_reg_range(CHIP_ID, CHIP_REV),
> +	regmap_reg_range(SYSTEM_STATUS, SYSTEM_STATUS),
> +	regmap_reg_range(IBATP_VAL, VBAT_AVE_VAL),
> +	regmap_reg_range(VTH_VAL, EXTIADP_AVE_VAL),
> +};
> +
> +static const struct regmap_access_table bd9995x_writeable_regs =3D {
> +	.no_ranges =3D bd9995x_readonly_reg_ranges,
> +	.n_no_ranges =3D ARRAY_SIZE(bd9995x_readonly_reg_ranges),
> +};
> +
> +static const struct regmap_range bd9995x_volatile_reg_ranges[] =3D {
> +	regmap_reg_range(CHGSTM_STATUS, WDT_STATUS),
> +	regmap_reg_range(VCC_UCD_STATUS, VCC_IDD_STATUS),
> +	regmap_reg_range(VBUS_UCD_STATUS, VBUS_IDD_STATUS),
> +	regmap_reg_range(INT0_STATUS, INT7_STATUS),
> +	regmap_reg_range(SYSTEM_STATUS, SYSTEM_CTRL_SET),
> +	regmap_reg_range(IBATP_VAL, EXTIADP_AVE_VAL), /* Measurement regs */
> +};
> +
> +static const struct regmap_access_table bd9995x_volatile_regs =3D {
> +	.yes_ranges =3D bd9995x_volatile_reg_ranges,
> +	.n_yes_ranges =3D ARRAY_SIZE(bd9995x_volatile_reg_ranges),
> +};
> +
> +static const struct regmap_range_cfg regmap_range_cfg[] =3D {
> +	{
> +	.selector_reg     =3D MAP_SET,
> +	.selector_mask    =3D 0xFFFF,
> +	.selector_shift   =3D 0,
> +	.window_start     =3D 0,
> +	.window_len       =3D 0x100,
> +	.range_min        =3D 0 * 0x100,
> +	.range_max        =3D 3 * 0x100,
> +	},
> +};
> +
> +static const struct regmap_config bd9995x_regmap_config =3D {
> +	.reg_bits =3D 8,
> +	.val_bits =3D 16,
> +	.reg_stride =3D 1,
> +
> +	.max_register =3D 3 * 0x100,
> +	.cache_type =3D REGCACHE_RBTREE,
> +
> +	.ranges =3D regmap_range_cfg,
> +	.num_ranges =3D ARRAY_SIZE(regmap_range_cfg),
> +	.val_format_endian =3D REGMAP_ENDIAN_LITTLE,
> +	.wr_table =3D &bd9995x_writeable_regs,
> +	.volatile_table =3D &bd9995x_volatile_regs,
> +};
> +
> +enum bd9995x_chrg_fault {
> +	CHRG_FAULT_NORMAL,
> +	CHRG_FAULT_INPUT,
> +	CHRG_FAULT_THERMAL_SHUTDOWN,
> +	CHRG_FAULT_TIMER_EXPIRED,
> +};
> +
> +static int bd9995x_get_prop_batt_health(struct bd9995x_device *bd)
> +{
> +	int ret, tmp;
> +
> +	ret =3D regmap_field_read(bd->rmap_fields[F_BATTEMP], &tmp);
> +	if (ret)
> +		return POWER_SUPPLY_HEALTH_UNKNOWN;
> +
> +	/* TODO: Check these against datasheet page 34 */
> +
> +	switch (tmp) {
> +	case ROOM:
> +		return POWER_SUPPLY_HEALTH_GOOD;
> +	case HOT1:
> +	case HOT2:
> +	case HOT3:
> +		return POWER_SUPPLY_HEALTH_OVERHEAT;
> +	case COLD1:
> +	case COLD2:
> +		return POWER_SUPPLY_HEALTH_COLD;
> +	case TEMP_DIS:
> +	case BATT_OPEN:
> +	default:
> +		return POWER_SUPPLY_HEALTH_UNKNOWN;
> +	}
> +}
> +
> +static int bd9995x_get_prop_charge_type(struct bd9995x_device *bd)
> +{
> +	int ret, tmp;
> +
> +	ret =3D regmap_field_read(bd->rmap_fields[F_CHGSTM_STATE], &tmp);
> +	if (ret)
> +		return POWER_SUPPLY_CHARGE_TYPE_UNKNOWN;
> +
> +	switch (tmp) {
> +	case CHGSTM_TRICKLE_CHARGE:
> +	case CHGSTM_PRE_CHARGE:
> +		return POWER_SUPPLY_CHARGE_TYPE_TRICKLE;
> +	case CHGSTM_FAST_CHARGE:
> +		return POWER_SUPPLY_CHARGE_TYPE_FAST;
> +	case CHGSTM_TOP_OFF:
> +	case CHGSTM_DONE:
> +	case CHGSTM_SUSPEND:
> +		return POWER_SUPPLY_CHARGE_TYPE_NONE;
> +	default: /* Rest of the states are error related, no charging */
> +		return POWER_SUPPLY_CHARGE_TYPE_NONE;
> +	}
> +}
> +
> +static bool bd9995x_get_prop_batt_present(struct bd9995x_device *bd)
> +{
> +	int ret, tmp;
> +
> +	ret =3D regmap_field_read(bd->rmap_fields[F_BATTEMP], &tmp);
> +	if (ret)
> +		return false;
> +
> +	return tmp !=3D BATT_OPEN;
> +}
> +
> +static int bd9995x_get_prop_batt_voltage(struct bd9995x_device *bd)
> +{
> +	int ret, tmp;
> +
> +	ret =3D regmap_field_read(bd->rmap_fields[F_VBAT_VAL], &tmp);
> +	if (ret)
> +		return 0;
> +
> +	tmp =3D min(tmp, 19200);
> +
> +	return tmp * 1000;
> +}
> +
> +static int bd9995x_get_prop_batt_current(struct bd9995x_device *bd)
> +{
> +	int ret, tmp;
> +
> +	ret =3D regmap_field_read(bd->rmap_fields[F_IBATP_VAL], &tmp);
> +	if (ret)
> +		return 0;
> +
> +	return tmp * 1000;
> +}
> +
> +#define DEFAULT_BATTERY_TEMPERATURE 250
> +
> +static int bd9995x_get_prop_batt_temp(struct bd9995x_device *bd)
> +{
> +	int ret, tmp;
> +
> +	ret =3D regmap_field_read(bd->rmap_fields[F_THERM_VAL], &tmp);
> +	if (ret)
> +		return DEFAULT_BATTERY_TEMPERATURE;
> +
> +	return (200 - tmp) * 10;
> +}
> +
> +static int bd9995x_power_supply_get_property(struct power_supply *psy,
> +					     enum power_supply_property psp,
> +					     union power_supply_propval *val)
> +{
> +	int ret, tmp;
> +	struct bd9995x_device *bd =3D power_supply_get_drvdata(psy);
> +	struct bd9995x_state state;
> +
> +	mutex_lock(&bd->lock);
> +	state =3D bd->state;
> +	mutex_unlock(&bd->lock);
> +
> +	switch (psp) {
> +	case POWER_SUPPLY_PROP_STATUS:
> +		switch (state.chgstm_status) {
> +		case CHGSTM_TRICKLE_CHARGE:
> +		case CHGSTM_PRE_CHARGE:
> +		case CHGSTM_FAST_CHARGE:
> +		case CHGSTM_TOP_OFF:
> +			val->intval =3D POWER_SUPPLY_STATUS_CHARGING;
> +			break;
> +
> +		case CHGSTM_DONE:
> +			val->intval =3D POWER_SUPPLY_STATUS_FULL;
> +			break;
> +
> +		case CHGSTM_SUSPEND:
> +		case CHGSTM_TEMPERATURE_ERROR_1:
> +		case CHGSTM_TEMPERATURE_ERROR_2:
> +		case CHGSTM_TEMPERATURE_ERROR_3:
> +		case CHGSTM_TEMPERATURE_ERROR_4:
> +		case CHGSTM_TEMPERATURE_ERROR_5:
> +		case CHGSTM_TEMPERATURE_ERROR_6:
> +		case CHGSTM_TEMPERATURE_ERROR_7:
> +		case CHGSTM_THERMAL_SHUT_DOWN_1:
> +		case CHGSTM_THERMAL_SHUT_DOWN_2:
> +		case CHGSTM_THERMAL_SHUT_DOWN_3:
> +		case CHGSTM_THERMAL_SHUT_DOWN_4:
> +		case CHGSTM_THERMAL_SHUT_DOWN_5:
> +		case CHGSTM_THERMAL_SHUT_DOWN_6:
> +		case CHGSTM_THERMAL_SHUT_DOWN_7:
> +		case CHGSTM_BATTERY_ERROR:
> +			val->intval =3D POWER_SUPPLY_STATUS_NOT_CHARGING;
> +			break;
> +
> +		default:
> +			val->intval =3D POWER_SUPPLY_STATUS_UNKNOWN;
> +			break;
> +		}
> +		break;
> +
> +	case POWER_SUPPLY_PROP_MANUFACTURER:
> +		val->strval =3D BD9995X_MANUFACTURER;
> +		break;
> +
> +	case POWER_SUPPLY_PROP_ONLINE:
> +		val->intval =3D state.online;
> +		break;
> +
> +	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
> +		ret =3D regmap_field_read(bd->rmap_fields[F_IBATP_VAL], &tmp);
> +		if (ret)
> +			return ret;
> +		val->intval =3D tmp * 1000;
> +		break;
> +
> +	case POWER_SUPPLY_PROP_CHARGE_AVG:
> +		ret =3D regmap_field_read(bd->rmap_fields[F_IBATP_AVE_VAL], &tmp);
> +		if (ret)
> +			return ret;
> +		val->intval =3D tmp * 1000;
> +		break;
> +
> +	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX:
> +		/*
> +		 * Currently the DT uses this property to give the
> +		 * target current for fast-charging constant current phase.
> +		 * I think it is correct in a sense.
> +		 *
> +		 * Yet, this prop we read and return here is the programmed
> +		 * safety limit for combined input currents. This feels
> +		 * also correct in a sense.
> +		 *
> +		 * However, this results a mismatch to DT value and value
> +		 * read from sysfs.
> +		 */
> +		ret =3D regmap_field_read(bd->rmap_fields[F_SEL_ILIM_VAL], &tmp);
> +		if (ret)
> +			return ret;
> +		val->intval =3D tmp * 1000;
> +		break;
> +
> +	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE:
> +		if (!state.online) {
> +			val->intval =3D 0;
> +			break;
> +		}
> +
> +		ret =3D regmap_field_read(bd->rmap_fields[F_VFASTCHG_REG_SET1],
> +					&tmp);
> +		if (ret)
> +			return ret;
> +
> +		/*
> +		 * The actual range : 2560 to 19200 mV. No matter what the
> +		 * register says
> +		 */
> +		val->intval =3D clamp_val(tmp << 4, 2560, 19200);
> +		val->intval *=3D 1000;
> +		break;
> +
> +	case POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT:
> +		ret =3D regmap_field_read(bd->rmap_fields[F_ITERM_SET], &tmp);
> +		if (ret)
> +			return ret;
> +		/* Start step is 64 mA */
> +		val->intval =3D tmp << 6;
> +		/* Maximum is 1024 mA - no matter what register says */
> +		val->intval =3D min(val->intval, 1024);
> +		val->intval *=3D 1000;
> +		break;
> +
> +	/* Battery properties which we access through charger */
> +	case POWER_SUPPLY_PROP_PRESENT:
> +		val->intval =3D bd9995x_get_prop_batt_present(bd);
> +		break;
> +
> +	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
> +		val->intval =3D bd9995x_get_prop_batt_voltage(bd);
> +		break;
> +
> +	case POWER_SUPPLY_PROP_CURRENT_NOW:
> +		val->intval =3D bd9995x_get_prop_batt_current(bd);
> +		break;
> +
> +	case POWER_SUPPLY_PROP_CHARGE_TYPE:
> +		val->intval =3D bd9995x_get_prop_charge_type(bd);
> +		break;
> +
> +	case POWER_SUPPLY_PROP_HEALTH:
> +		val->intval =3D bd9995x_get_prop_batt_health(bd);
> +		break;
> +
> +	case POWER_SUPPLY_PROP_TEMP:
> +		val->intval =3D bd9995x_get_prop_batt_temp(bd);
> +		break;
> +
> +	case POWER_SUPPLY_PROP_TECHNOLOGY:
> +		val->intval =3D POWER_SUPPLY_TECHNOLOGY_LION;
> +		break;
> +
> +	case POWER_SUPPLY_PROP_MODEL_NAME:
> +		val->strval =3D "bd99954";
> +		break;
> +
> +	default:
> +		return -EINVAL;
> +
> +	}
> +
> +	return 0;
> +}
> +
> +static int bd9995x_get_chip_state(struct bd9995x_device *bd,
> +				  struct bd9995x_state *state)
> +{
> +	int i, ret, tmp;
> +	struct {
> +		struct regmap_field *id;
> +		u16 *data;
> +	} state_fields[] =3D {
> +		{
> +			bd->rmap_fields[F_CHGSTM_STATE], &state->chgstm_status,
> +		}, {
> +			bd->rmap_fields[F_VBAT_VSYS_STATUS],
> +			&state->vbat_vsys_status,
> +		}, {
> +			bd->rmap_fields[F_VBUS_VCC_STATUS],
> +			&state->vbus_vcc_status,
> +		},
> +	};
> +
> +
> +	for (i =3D 0; i < ARRAY_SIZE(state_fields); i++) {
> +		ret =3D regmap_field_read(state_fields[i].id, &tmp);
> +		if (ret)
> +			return ret;
> +
> +		*state_fields[i].data =3D tmp;
> +	}
> +
> +	if (state->vbus_vcc_status & STATUS_VCC_DET ||
> +	    state->vbus_vcc_status & STATUS_VBUS_DET)
> +		state->online =3D 1;
> +	else
> +		state->online =3D 0;
> +
> +	return 0;
> +}
> +
> +static irqreturn_t bd9995x_irq_handler_thread(int irq, void *private)
> +{
> +	struct bd9995x_device *bd =3D private;
> +	int ret, status, mask, i;
> +	unsigned long tmp;
> +	struct bd9995x_state state;
> +
> +	/*
> +	 * The bd9995x does not seem to generate big amount of interrupts.
> +	 * The logic regarding which interrupts can cause relevant
> +	 * status changes seem to be pretty complex.
> +	 *
> +	 * So lets implement really simple and hopefully bullet-proof handler:
> +	 * It does not really matter which IRQ we handle, we just go and
> +	 * re-read all interesting statuses + give the framework a nudge.
> +	 *
> +	 * Other option would be building a _complex_ and error prone logic
> +	 * trying to decide what could have been changed (resulting this IRQ
> +	 * we are now handling). During the normal operation the BD99954 does
> +	 * not seem to be generating much of interrupts so benefit from such
> +	 * logic would probably be minimal.
> +	 */
> +
> +	ret =3D regmap_read(bd->rmap, INT0_STATUS, &status);
> +	if (ret) {
> +		dev_err(bd->dev, "Failed to read IRQ status\n");
> +		return IRQ_NONE;
> +	}
> +
> +	ret =3D regmap_field_read(bd->rmap_fields[F_INT0_SET], &mask);
> +	if (ret) {
> +		dev_err(bd->dev, "Failed to read IRQ mask\n");
> +		return IRQ_NONE;
> +	}
> +
> +	/* Handle only IRQs that are not masked */
> +	status &=3D mask;
> +	tmp =3D status;
> +
> +	/* Lowest bit does not represent any sub-registers */
> +	tmp >>=3D 1;
> +
> +	/*
> +	 * Mask and ack IRQs we will handle (+ the idiot bit)
> +	 */
> +	ret =3D regmap_field_write(bd->rmap_fields[F_INT0_SET], 0);
> +	if (ret) {
> +		dev_err(bd->dev, "Failed to mask F_INT0\n");
> +		return IRQ_NONE;
> +	}
> +
> +	ret =3D regmap_write(bd->rmap, INT0_STATUS, status);
> +	if (ret) {
> +		dev_err(bd->dev, "Failed to ack F_INT0\n");
> +		goto err_umask;
> +	}
> +
> +	for_each_set_bit(i, &tmp, 7) {
> +		int sub_status, sub_mask;
> +		int sub_status_reg[] =3D {
> +			INT1_STATUS, INT2_STATUS, INT3_STATUS, INT4_STATUS,
> +			INT5_STATUS, INT6_STATUS, INT7_STATUS,
> +		};
> +		struct regmap_field *sub_mask_f[] =3D {
> +			bd->rmap_fields[F_INT1_SET],
> +			bd->rmap_fields[F_INT2_SET],
> +			bd->rmap_fields[F_INT3_SET],
> +			bd->rmap_fields[F_INT4_SET],
> +			bd->rmap_fields[F_INT5_SET],
> +			bd->rmap_fields[F_INT6_SET],
> +			bd->rmap_fields[F_INT7_SET],
> +		};
> +
> +		/* Clear sub IRQs */
> +		ret =3D regmap_read(bd->rmap, sub_status_reg[i], &sub_status);
> +		if (ret) {
> +			dev_err(bd->dev, "Failed to read IRQ sub-status\n");
> +			goto err_umask;
> +		}
> +
> +		ret =3D regmap_field_read(sub_mask_f[i], &sub_mask);
> +		if (ret) {
> +			dev_err(bd->dev, "Failed to read IRQ sub-mask\n");
> +			goto err_umask;
> +		}
> +
> +		/* Ack active sub-statuses */
> +		sub_status &=3D sub_mask;
> +
> +		ret =3D regmap_write(bd->rmap, sub_status_reg[i], sub_status);
> +		if (ret) {
> +			dev_err(bd->dev, "Failed to ack sub-IRQ\n");
> +			goto err_umask;
> +		}
> +	}
> +
> +	ret =3D regmap_field_write(bd->rmap_fields[F_INT0_SET], mask);
> +	if (ret)
> +		/* May as well retry once */
> +		goto err_umask;
> +
> +	/* Read whole chip state */
> +	ret =3D bd9995x_get_chip_state(bd, &state);
> +	if (ret < 0) {
> +		dev_err(bd->dev, "Failed to read chip state\n");
> +	} else {
> +		mutex_lock(&bd->lock);
> +		bd->state =3D state;
> +		mutex_unlock(&bd->lock);
> +
> +		power_supply_changed(bd->charger);
> +	}
> +
> +	return IRQ_HANDLED;
> +
> +err_umask:
> +	ret =3D regmap_field_write(bd->rmap_fields[F_INT0_SET], mask);
> +	if (ret)
> +		dev_err(bd->dev,
> +		"Failed to un-mask F_INT0 - IRQ permanently disabled\n");
> +
> +	return IRQ_NONE;
> +}
> +
> +static int bd9995x_chip_reset(struct bd9995x_device *bd)
> +{
> +	int ret, state;
> +	int rst_check_counter =3D 10;
> +	u16 tmp =3D ALLRST | OTPLD;
> +
> +	ret =3D regmap_raw_write(bd->rmap, SYSTEM_CTRL_SET, &tmp, 2);
> +	if (ret < 0)
> +		return ret;
> +
> +	do {
> +		ret =3D regmap_field_read(bd->rmap_fields[F_OTPLD_STATE], &state);
> +		if (ret)
> +			return ret;
> +
> +		msleep(10);
> +	} while (state =3D=3D 0 && --rst_check_counter);
> +
> +	if (!rst_check_counter) {
> +		dev_err(bd->dev, "chip reset not completed\n");
> +		return -ETIMEDOUT;
> +	}
> +
> +	tmp =3D 0;
> +	ret =3D regmap_raw_write(bd->rmap, SYSTEM_CTRL_SET, &tmp, 2);
> +
> +	return ret;
> +}
> +
> +static int bd9995x_hw_init(struct bd9995x_device *bd)
> +{
> +	int ret;
> +	int i;
> +	struct bd9995x_state state;
> +	struct bd9995x_init_data *id =3D &bd->init_data;
> +
> +	const struct {
> +		enum bd9995x_fields id;
> +		u16 value;
> +	} init_data[] =3D {
> +		/* Enable the charging trigger after SDP charger attached */
> +		{F_SDP_CHG_TRIG_EN,	1},
> +		/* Enable charging trigger after SDP charger attached */
> +		{F_SDP_CHG_TRIG,	1},
> +		/* Disable charging trigger by BC1.2 detection */
> +		{F_VBUS_BC_DISEN,	1},
> +		/* Disable charging trigger by BC1.2 detection */
> +		{F_VCC_BC_DISEN,	1},
> +		/* Disable automatic limitation of the input current */
> +		{F_ILIM_AUTO_DISEN,	1},
> +		/* Select current limitation when SDP charger attached*/
> +		{F_SDP_500_SEL,		1},
> +		/* Select current limitation when DCP charger attached */
> +		{F_DCP_2500_SEL,	1},
> +		{F_VSYSREG_SET,		id->vsysreg_set},
> +		/* Activate USB charging and DC/DC converter */
> +		{F_USB_SUS,		0},
> +		/* DCDC clock: 1200 kHz*/
> +		{F_DCDC_CLK_SEL,	3},
> +		/* Enable charging */
> +		{F_CHG_EN,		1},
> +		/* Disable Input current Limit setting voltage measurement */
> +		{F_EXTIADPEN,		0},
> +		/* Disable input current limiting */
> +		{F_VSYS_PRIORITY,	1},
> +		{F_IBUS_LIM_SET,	id->ibus_lim_set},
> +		{F_ICC_LIM_SET,		id->icc_lim_set},
> +		/* Charge Termination Current Setting to 0*/
> +		{F_ITERM_SET,		id->iterm_set},
> +		/* Trickle-charge Current Setting */
> +		{F_ITRICH_SET,		id->itrich_set},
> +		/* Pre-charge Current setting */
> +		{F_IPRECH_SET,		id->iprech_set},
> +		/* Fast Charge Current for constant current phase */
> +		{F_ICHG_SET,		id->ichg_set},
> +		/* Fast Charge Voltage Regulation Setting */
> +		{F_VFASTCHG_REG_SET1,	id->vfastchg_reg_set1},
> +		/* Set Pre-charge Voltage Threshold for trickle charging. */
> +		{F_VPRECHG_TH_SET,	id->vprechg_th_set},
> +		{F_VRECHG_SET,		id->vrechg_set},
> +		{F_VBATOVP_SET,		id->vbatovp_set},
> +		/* Reverse buck boost voltage Setting */
> +		{F_VRBOOST_SET,		0},
> +		/* Disable fast-charging watchdog */
> +		{F_WDT_FST,		0},
> +		/* Disable pre-charging watchdog */
> +		{F_WDT_PRE,		0},
> +		/* Power save off */
> +		{F_POWER_SAVE_MODE,	0},
> +		{F_INT1_SET,		INT1_ALL},
> +		{F_INT2_SET,		INT2_ALL},
> +		{F_INT3_SET,		INT3_ALL},
> +		{F_INT4_SET,		INT4_ALL},
> +		{F_INT5_SET,		INT5_ALL},
> +		{F_INT6_SET,		INT6_ALL},
> +		{F_INT7_SET,		INT7_ALL},
> +	};
> +
> +	/*
> +	 * Currently we initialize charger to a known state at startup.
> +	 * If we want to allow for example the boot code to initialize
> +	 * charger we should get rid of this.
> +	 */
> +	ret =3D bd9995x_chip_reset(bd);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* Initialize currents/voltages and other parameters */
> +	for (i =3D 0; i < ARRAY_SIZE(init_data); i++) {
> +		ret =3D regmap_field_write(bd->rmap_fields[init_data[i].id],
> +					 init_data[i].value);
> +		if (ret) {
> +			dev_err(bd->dev, "failed to initialize charger (%d)\n",
> +				ret);
> +			return ret;
> +		}
> +	}
> +
> +	ret =3D bd9995x_get_chip_state(bd, &state);
> +	if (ret < 0)
> +		return ret;
> +
> +	mutex_lock(&bd->lock);
> +	bd->state =3D state;
> +	mutex_unlock(&bd->lock);
> +
> +	return 0;
> +}
> +
> +static enum power_supply_property bd9995x_power_supply_props[] =3D {
> +	POWER_SUPPLY_PROP_MANUFACTURER,
> +	POWER_SUPPLY_PROP_STATUS,
> +	POWER_SUPPLY_PROP_ONLINE,
> +	POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT,
> +	POWER_SUPPLY_PROP_CHARGE_AVG,
> +	POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX,
> +	POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE,
> +	POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT,
> +	/* Battery props we access through charger */
> +	POWER_SUPPLY_PROP_PRESENT,
> +	POWER_SUPPLY_PROP_VOLTAGE_NOW,
> +	POWER_SUPPLY_PROP_CURRENT_NOW,
> +	POWER_SUPPLY_PROP_CHARGE_TYPE,
> +	POWER_SUPPLY_PROP_HEALTH,
> +	POWER_SUPPLY_PROP_TEMP,
> +	POWER_SUPPLY_PROP_TECHNOLOGY,
> +	POWER_SUPPLY_PROP_MODEL_NAME,
> +};
> +
> +static const struct power_supply_desc bd9995x_power_supply_desc =3D {
> +	.name =3D "bd9995x-charger",
> +	.type =3D POWER_SUPPLY_TYPE_USB,
> +	.properties =3D bd9995x_power_supply_props,
> +	.num_properties =3D ARRAY_SIZE(bd9995x_power_supply_props),
> +	.get_property =3D bd9995x_power_supply_get_property,
> +};
> +
> +/*
> + * Limit configurations for vbus-input-current and vcc-vacp-input-current
> + * Minimum limit is 0 uA. Max is 511 * 32000 uA =3D 16352000 uA. This is
> + * configured by writing a register so that each increment in register
> + * value equals to 32000 uA limit increment.
> + *
> + * Eg, value 0x0 is limit 0, value 0x1 is limit 32000, ...
> + * Describe the setting in linear_range table.
> + */
> +static const struct linear_range input_current_limit_ranges[] =3D {
> +	{
> +		.min =3D 0,
> +		.step =3D 32000,
> +		.min_sel =3D 0x0,
> +		.max_sel =3D 0x1ff,
> +	},
> +};
> +
> +/* Possible trickle, pre-charging and termination current values */
> +static const struct linear_range charging_current_ranges[] =3D {
> +	{
> +		.min =3D 0,
> +		.step =3D 64000,
> +		.min_sel =3D 0x0,
> +		.max_sel =3D 0x10,
> +	}, {
> +		.min =3D 1024000,
> +		.step =3D 0,
> +		.min_sel =3D 0x11,
> +		.max_sel =3D 0x1f,
> +	},
> +};
> +
> +/*
> + * Fast charging voltage regulation, starting re-charging limit
> + * and battery over voltage protection have same possible values
> + */
> +static const struct linear_range charge_voltage_regulation_ranges[] =3D {
> +	{
> +		.min =3D 2560000,
> +		.step =3D 0,
> +		.min_sel =3D 0,
> +		.max_sel =3D 0xA0,
> +	}, {
> +		.min =3D 2560000,
> +		.step =3D 16000,
> +		.min_sel =3D 0xA0,
> +		.max_sel =3D 0x4B0,
> +	}, {
> +		.min =3D 19200000,
> +		.step =3D 0,
> +		.min_sel =3D 0x4B0,
> +		.max_sel =3D 0x7FF,
> +	},
> +};
> +
> +/* Possible VSYS voltage regulation values */
> +static const struct linear_range vsys_voltage_regulation_ranges[] =3D {
> +	{
> +		.min =3D 2560000,
> +		.step =3D 0,
> +		.min_sel =3D 0,
> +		.max_sel =3D 0x28,
> +	}, {
> +		.min =3D 2560000,
> +		.step =3D 64000,
> +		.min_sel =3D 0x28,
> +		.max_sel =3D 0x12C,
> +	}, {
> +		.min =3D 19200000,
> +		.step =3D 0,
> +		.min_sel =3D 0x12C,
> +		.max_sel =3D 0x1FF,
> +	},
> +};
> +
> +/* Possible settings for switching from trickle to pre-charging limits */
> +static const struct linear_range trickle_to_pre_threshold_ranges[] =3D {
> +	{
> +		.min =3D 2048000,
> +		.step =3D 0,
> +		.min_sel =3D 0,
> +		.max_sel =3D 0x20,
> +	}, {
> +		.min =3D 2048000,
> +		.step =3D 64000,
> +		.min_sel =3D 0x20,
> +		.max_sel =3D 0x12C,
> +	}, {
> +		.min =3D 19200000,
> +		.step =3D 0,
> +		.min_sel =3D 0x12C,
> +		.max_sel =3D 0x1FF
> +	}
> +};
> +
> +/* Possible current values for fast-charging constant current phase */
> +static const struct linear_range fast_charge_current_ranges[] =3D {
> +	{
> +		.min =3D 0,
> +		.step =3D 64000,
> +		.min_sel =3D 0,
> +		.max_sel =3D 0xFF,
> +	}
> +};
> +
> +struct battery_init {
> +	const char *name;
> +	int *info_data;
> +	const struct linear_range *range;
> +	int ranges;
> +	u16 *data;
> +};
> +
> +struct dt_init {
> +	char *prop;
> +	const struct linear_range *range;
> +	int ranges;
> +	u16 *data;
> +};
> +
> +static int bd9995x_fw_probe(struct bd9995x_device *bd)
> +{
> +	int ret;
> +	struct power_supply_battery_info info;
> +	u32 property;
> +	int i;
> +	int regval;
> +	bool found;
> +	struct bd9995x_init_data *init =3D &bd->init_data;
> +	struct battery_init battery_inits[] =3D {
> +		{
> +			.name =3D "trickle-charging current",
> +			.info_data =3D &info.tricklecharge_current_ua,
> +			.range =3D &charging_current_ranges[0],
> +			.ranges =3D 2,
> +			.data =3D &init->itrich_set,
> +		}, {
> +			.name =3D "pre-charging current",
> +			.info_data =3D &info.precharge_current_ua,
> +			.range =3D &charging_current_ranges[0],
> +			.ranges =3D 2,
> +			.data =3D &init->iprech_set,
> +		}, {
> +			.name =3D "pre-to-trickle charge voltage threshold",
> +			.info_data =3D &info.precharge_voltage_max_uv,
> +			.range =3D &trickle_to_pre_threshold_ranges[0],
> +			.ranges =3D 2,
> +			.data =3D &init->vprechg_th_set,
> +		}, {
> +			.name =3D "charging termination current",
> +			.info_data =3D &info.charge_term_current_ua,
> +			.range =3D &charging_current_ranges[0],
> +			.ranges =3D 2,
> +			.data =3D &init->iterm_set,
> +		}, {
> +			.name =3D "charging re-start voltage",
> +			.info_data =3D &info.charge_restart_voltage_uv,
> +			.range =3D &charge_voltage_regulation_ranges[0],
> +			.ranges =3D 2,
> +			.data =3D &init->vrechg_set,
> +		}, {
> +			.name =3D "battery overvoltage limit",
> +			.info_data =3D &info.overvoltage_limit_uv,
> +			.range =3D &charge_voltage_regulation_ranges[0],
> +			.ranges =3D 2,
> +			.data =3D &init->vbatovp_set,
> +		}, {
> +			.name =3D "fast-charging max current",
> +			.info_data =3D &info.constant_charge_current_max_ua,
> +			.range =3D &fast_charge_current_ranges[0],
> +			.ranges =3D 1,
> +			.data =3D &init->ichg_set,
> +		}, {
> +			.name =3D "fast-charging voltage",
> +			.info_data =3D &info.constant_charge_voltage_max_uv,
> +			.range =3D &charge_voltage_regulation_ranges[0],
> +			.ranges =3D 2,
> +			.data =3D &init->vfastchg_reg_set1,
> +		},
> +	};
> +	struct dt_init props[] =3D {
> +		{
> +			.prop =3D "rohm,vsys-regulation-microvolt",
> +			.range =3D &vsys_voltage_regulation_ranges[0],
> +			.ranges =3D 2,
> +			.data =3D &init->vsysreg_set,
> +		}, {
> +			.prop =3D "rohm,vbus-input-current-limit-microamp",
> +			.range =3D &input_current_limit_ranges[0],
> +			.ranges =3D 1,
> +			.data =3D &init->ibus_lim_set,
> +		}, {
> +			.prop =3D "rohm,vcc-input-current-limit-microamp",
> +			.range =3D &input_current_limit_ranges[0],
> +			.ranges =3D 1,
> +			.data =3D &init->icc_lim_set,
> +		},
> +	};
> +
> +	/*
> +	 * The power_supply_get_battery_info() does not support getting values
> +	 * from ACPI. Let's fix it if ACPI is required here.
> +	 */
> +	ret =3D power_supply_get_battery_info(bd->charger, &info);
> +	if (ret < 0)
> +		return ret;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(battery_inits); i++) {
> +		int val =3D *battery_inits[i].info_data;
> +		const struct linear_range *range =3D battery_inits[i].range;
> +		int ranges =3D battery_inits[i].ranges;
> +
> +		if (val =3D=3D -EINVAL)
> +			continue;
> +
> +		ret =3D linear_range_get_selector_low_array(range, ranges, val,
> +							  &regval, &found);
> +		if (ret) {
> +			dev_err(bd->dev, "Unsupported value for %s\n",
> +				battery_inits[i].name);
> +
> +			power_supply_put_battery_info(bd->charger, &info);
> +			return -EINVAL;
> +		}
> +		if (!found) {
> +			dev_warn(bd->dev,
> +				 "Unsupported value for %s - using smaller\n",
> +				 battery_inits[i].name);
> +		}
> +		*(battery_inits[i].data) =3D regval;
> +	}
> +
> +	power_supply_put_battery_info(bd->charger, &info);
> +
> +	for (i =3D 0; i < ARRAY_SIZE(props); i++) {
> +		ret =3D device_property_read_u32(bd->dev, props[i].prop,
> +					       &property);
> +		if (ret < 0) {
> +			dev_err(bd->dev, "failed to read %s", props[i].prop);
> +
> +			return ret;
> +		}
> +
> +		ret =3D linear_range_get_selector_low_array(props[i].range,
> +							  props[i].ranges,
> +							  property, &regval,
> +							  &found);
> +		if (ret) {
> +			dev_err(bd->dev, "Unsupported value for '%s'\n",
> +				props[i].prop);
> +
> +			return -EINVAL;
> +		}
> +
> +		if (!found) {
> +			dev_warn(bd->dev,
> +				 "Unsupported value for '%s' - using smaller\n",
> +				 props[i].prop);
> +		}
> +
> +		*(props[i].data) =3D regval;
> +	}
> +
> +	return 0;
> +}
> +
> +static int bd9995x_probe(struct i2c_client *client)
> +{
> +	struct device *dev =3D &client->dev;
> +	struct bd9995x_device *bd;
> +	struct power_supply_config psy_cfg =3D {};
> +	int ret;
> +	int i;
> +
> +	bd =3D devm_kzalloc(dev, sizeof(*bd), GFP_KERNEL);
> +	if (!bd)
> +		return -ENOMEM;
> +
> +	bd->client =3D client;
> +	bd->dev =3D dev;
> +	psy_cfg.drv_data =3D bd;
> +	psy_cfg.of_node =3D dev->of_node;
> +
> +	mutex_init(&bd->lock);
> +
> +	bd->rmap =3D devm_regmap_init_i2c(client, &bd9995x_regmap_config);
> +	if (IS_ERR(bd->rmap)) {
> +		dev_err(dev, "Failed to setup register access via i2c\n");
> +		return PTR_ERR(bd->rmap);
> +	}
> +
> +	for (i =3D 0; i < ARRAY_SIZE(bd9995x_reg_fields); i++) {
> +		const struct reg_field *reg_fields =3D bd9995x_reg_fields;
> +
> +		bd->rmap_fields[i] =3D devm_regmap_field_alloc(dev, bd->rmap,
> +							     reg_fields[i]);
> +		if (IS_ERR(bd->rmap_fields[i])) {
> +			dev_err(dev, "cannot allocate regmap field\n");
> +			return PTR_ERR(bd->rmap_fields[i]);
> +		}
> +	}
> +
> +	i2c_set_clientdata(client, bd);
> +
> +	ret =3D regmap_field_read(bd->rmap_fields[F_CHIP_ID], &bd->chip_id);
> +	if (ret) {
> +		dev_err(dev, "Cannot read chip ID.\n");
> +		return ret;
> +	}
> +
> +	if (bd->chip_id !=3D BD99954_ID) {
> +		dev_err(dev, "Chip with ID=3D0x%x, not supported!\n",
> +			bd->chip_id);
> +		return -ENODEV;
> +	}
> +
> +	ret =3D regmap_field_read(bd->rmap_fields[F_CHIP_REV], &bd->chip_rev);
> +	if (ret) {
> +		dev_err(dev, "Cannot read revision.\n");
> +		return ret;
> +	}
> +
> +	dev_info(bd->dev, "Found DB99954 chip rev %d\n", bd->chip_rev);

DB -> BD?

> +
> +	/*
> +	 * We need to init the psy before we can call
> +	 * power_supply_get_battery_info() for it
> +	 */
> +	bd->charger =3D devm_power_supply_register(bd->dev,
> +						 &bd9995x_power_supply_desc,
> +						&psy_cfg);
> +	if (IS_ERR(bd->charger)) {
> +		dev_err(dev, "Failed to register power supply\n");
> +		return PTR_ERR(bd->charger);
> +	}
> +
> +	ret =3D bd9995x_fw_probe(bd);
> +	if (ret < 0) {
> +		dev_err(dev, "Cannot read device properties.\n");
> +		return ret;
> +	}
> +
> +	ret =3D bd9995x_hw_init(bd);
> +	if (ret < 0) {
> +		dev_err(dev, "Cannot initialize the chip.\n");
> +		return ret;
> +	}
> +
> +	return devm_request_threaded_irq(dev, client->irq, NULL,
> +					 bd9995x_irq_handler_thread,
> +					 IRQF_TRIGGER_LOW | IRQF_ONESHOT,
> +					 BD9995X_IRQ_PIN, bd);
> +}
> +
> +static int bd9995x_remove(struct i2c_client *client)
> +{
> +	int ret;
> +	struct bd9995x_device *bd =3D i2c_get_clientdata(client);
> +
> +	disable_irq(client->irq);
> +
> +	/*
> +	 * Reset all registers to default values. This should also disable
> +	 * CHG_EN bit. If this is not required we can get rid of the remove.
> +	 */
> +	ret =3D bd9995x_chip_reset(bd);

You can register this using devm_add_action_or_reset() before the
devm_request_threaded_irq() call in probe and get rid of the remove
function :)

-- Sebastian

> +
> +	return 0;
> +}
> +
> +static const struct of_device_id bd9995x_of_match[] =3D {
> +	{ .compatible =3D "rohm,bd99954", },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, bd9995x_of_match);
> +
> +static struct i2c_driver bd9995x_driver =3D {
> +	.driver =3D {
> +		.name =3D "bd9995x-charger",
> +		.of_match_table =3D bd9995x_of_match,
> +	},
> +	.probe_new =3D bd9995x_probe,
> +	.remove =3D bd9995x_remove,
> +};
> +module_i2c_driver(bd9995x_driver);
> +
> +MODULE_AUTHOR("Laine Markus <markus.laine@fi.rohmeurope.com>");
> +MODULE_DESCRIPTION("ROHM BD99954 charger driver");
> +MODULE_LICENSE("GPL");
> diff --git a/include/linux/power/bd99954-charger.h b/include/linux/power/=
bd99954-charger.h
> new file mode 100644
> index 000000000000..f58897925383
> --- /dev/null
> +++ b/include/linux/power/bd99954-charger.h
> @@ -0,0 +1,1075 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* Copyright (C) 2020 ROHM Semiconductors */
> +#ifndef BD99954_CHARGER_H
> +#define BD99954_CHARGER_H
> +
> +#include <linux/regmap.h>
> +
> +#define BD9995X_MANUFACTURER "Rohm Semiconductor"
> +#define BD9995X_IRQ_PIN      "bd9995x_irq"
> +
> +#define BD9995X_VSYS_PRECHARGE_OFFSET_MV 200
> +
> +#define BD99954_ID            0x346
> +#define BD99955_ID            0x221
> +#define BD99956_ID            0x331
> +
> +/* Battery Charger Commands */
> +#define    CHARGING_CURRENT   0x14
> +#define    CHARGING_VOLTAGE   0x15
> +#define    PROTECT_SET        0x3E
> +#define    MAP_SET            0x3F
> +
> +/* Extended commands */
> +#define    CHGSTM_STATUS       0x100
> +#define    VBAT_VSYS_STATUS    0x101
> +#define    VBUS_VCC_STATUS     0x102
> +#define    CHGOP_STATUS        0x103
> +#define    WDT_STATUS          0x104
> +#define    CUR_ILIM_VAL        0x105
> +#define    SEL_ILIM_VAL        0x106
> +#define    IBUS_LIM_SET        0x107
> +#define    ICC_LIM_SET         0x108
> +#define    IOTG_LIM_SET        0x109
> +#define    VIN_CTRL_SET        0x10A
> +#define    CHGOP_SET1          0x10B
> +#define    CHGOP_SET2          0x10C
> +#define    VBUSCLPS_TH_SET     0x10D
> +#define    VCCCLPS_TH_SET      0x10E
> +#define    CHGWDT_SET          0x10F
> +#define    BATTWDT_SET         0x110
> +#define    VSYSREG_SET         0x111
> +#define    VSYSVAL_THH_SET     0x112
> +#define    VSYSVAL_THL_SET     0x113
> +#define    ITRICH_SET          0x114
> +#define    IPRECH_SET          0x115
> +#define    ICHG_SET            0x116
> +#define    ITERM_SET           0x117
> +#define    VPRECHG_TH_SET      0x118
> +#define    VRBOOST_SET         0x119
> +#define    VFASTCHG_REG_SET1   0x11A
> +#define    VFASTCHG_REG_SET2   0x11B
> +#define    VFASTCHG_REG_SET3   0x11C
> +#define    VRECHG_SET          0x11D
> +#define    VBATOVP_SET         0x11E
> +#define    IBATSHORT_SET       0x11F
> +#define    PROCHOT_CTRL_SET    0x120
> +#define    PROCHOT_ICRIT_SET   0x121
> +#define    PROCHOT_INORM_SET   0x122
> +#define    PROCHOT_IDCHG_SET   0x123
> +#define    PROCHOT_VSYS_SET    0x124
> +#define    PMON_IOUT_CTRL_SET  0x125
> +#define    PMON_DACIN_VAL      0x126
> +#define    IOUT_DACIN_VAL      0x127
> +#define    VCC_UCD_SET         0x128
> +#define    VCC_UCD_STATUS      0x129
> +#define    VCC_IDD_STATUS      0x12A
> +#define    VCC_UCD_FCTRL_SET   0x12B
> +#define    VCC_UCD_FCTRL_EN    0x12C
> +#define    VBUS_UCD_SET        0x130
> +#define    VBUS_UCD_STATUS     0x131
> +#define    VBUS_IDD_STATUS     0x132
> +#define    VBUS_UCD_FCTRL_SET  0x133
> +#define    VBUS_UCD_FCTRL_EN   0x134
> +#define    CHIP_ID             0x138
> +#define    CHIP_REV            0x139
> +#define    IC_SET1             0x13A
> +#define    IC_SET2             0x13B
> +#define    SYSTEM_STATUS       0x13C
> +#define    SYSTEM_CTRL_SET     0x13D
> +#define    VM_CTRL_SET         0x140
> +#define    THERM_WINDOW_SET1   0x141
> +#define    THERM_WINDOW_SET2   0x142
> +#define    THERM_WINDOW_SET3   0x143
> +#define    THERM_WINDOW_SET4   0x144
> +#define    THERM_WINDOW_SET5   0x145
> +#define    IBATP_TH_SET        0x146
> +#define    IBATM_TH_SET        0x147
> +#define    VBAT_TH_SET         0x148
> +#define    THERM_TH_SET        0x149
> +#define    IACP_TH_SET         0x14A
> +#define    VACP_TH_SET         0x14B
> +#define    VBUS_TH_SET         0x14C
> +#define    VCC_TH_SET          0x14D
> +#define    VSYS_TH_SET         0x14E
> +#define    EXTIADP_TH_SET      0x14F
> +#define    IBATP_VAL           0x150
> +#define    IBATP_AVE_VAL       0x151
> +#define    IBATM_VAL           0x152
> +#define    IBATM_AVE_VAL       0x153
> +#define    VBAT_VAL            0x154
> +#define    VBAT_AVE_VAL        0x155
> +#define    THERM_VAL           0x156
> +#define    VTH_VAL             0x157
> +#define    IACP_VAL            0x158
> +#define    IACP_AVE_VAL        0x159
> +#define    VACP_VAL            0x15A
> +#define    VACP_AVE_VAL        0x15B
> +#define    VBUS_VAL            0x15C
> +#define    VBUS_AVE_VAL        0x15D
> +#define    VCC_VAL             0x15E
> +#define    VCC_AVE_VAL         0x15F
> +#define    VSYS_VAL            0x160
> +#define    VSYS_AVE_VAL        0x161
> +#define    EXTIADP_VAL         0x162
> +#define    EXTIADP_AVE_VAL     0x163
> +#define    VACPCLPS_TH_SET     0x164
> +#define    INT0_SET            0x168
> +#define    INT1_SET            0x169
> +#define    INT2_SET            0x16A
> +#define    INT3_SET            0x16B
> +#define    INT4_SET            0x16C
> +#define    INT5_SET            0x16D
> +#define    INT6_SET            0x16E
> +#define    INT7_SET            0x16F
> +#define    INT0_STATUS         0x170
> +#define    INT1_STATUS         0x171
> +#define    INT2_STATUS         0x172
> +#define    INT3_STATUS         0x173
> +#define    INT4_STATUS         0x174
> +#define    INT5_STATUS         0x175
> +#define    INT6_STATUS         0x176
> +#define    INT7_STATUS         0x177
> +#define    OTPREG0             0x17A
> +#define    OTPREG1             0x17B
> +#define    SMBREG              0x17C
> +#define    DEBUG_MODE_SET      0x17F
> +#define    DEBUG0x14           0x214
> +#define    DEBUG0x1A           0x21A
> +
> +enum bd9995x_fields {
> +	F_PREV_CHGSTM_STATE, F_CHGSTM_STATE,
> +	F_VBAT_VSYS_STATUS,
> +	F_VBUS_VCC_STATUS,
> +	F_BATTEMP, F_VRECHG_DET, F_RBOOST_UV, F_RBOOSTS,
> +	F_THERMWDT_VAL, F_CHGWDT_VAL,
> +	F_CUR_ILIM_VAL,
> +	F_SEL_ILIM_VAL,
> +	F_IBUS_LIM_SET,
> +	F_ICC_LIM_SET,
> +	F_IOTG_LIM_SET,
> +	F_OTG_BOTH_EN,
> +	F_VRBOOST_TRIG,
> +	F_VRBOOST_EN,
> +	F_PP_BOTH_THRU,
> +	F_VIN_ORD,
> +	F_VBUS_EN,
> +	F_VCC_EN,
> +	F_VSYS_PRIORITY,
> +	F_PPC_SUB_CAP,
> +	F_PPC_CAP,
> +	F_DCP_2500_SEL,
> +	F_SDP_500_SEL,
> +	F_ILIM_AUTO_DISEN,
> +	F_VCC_BC_DISEN,
> +	F_VBUS_BC_DISEN,
> +	F_SDP_CHG_TRIG_EN,
> +	F_SDP_CHG_TRIG,
> +	F_AUTO_TOF,
> +	F_AUTO_FST,
> +	F_AUTO_RECH,
> +	F_ILIM_RESET_EN,
> +	F_DCDC_1MS_SEL,
> +	F_SEL_ILIM_DIV,
> +	F_BATT_LEARN,
> +	F_CHG_EN,
> +	F_USB_SUS,
> +	F_CHOP_SS_INIT,
> +	F_CHOP_ALL_INIT,
> +	F_DCDC_CLK_SEL,
> +	F_CHOP_SS,
> +	F_CHOP_ALL,
> +	F_VBUSCLPS_TH_SET,
> +	F_VCCCLPS_TH_SET,
> +	F_WDT_FST,
> +	F_WDT_PRE,
> +	F_WDT_IBAT_SHORT,
> +	F_WDT_THERM,
> +	F_VSYSREG_SET,
> +	F_VSYSVAL_THH_SET,
> +	F_VSYSVAL_THL_SET,
> +	F_ITRICH_SET,
> +	F_IPRECH_SET,
> +	F_ICHG_SET,
> +	F_ITERM_SET,
> +	F_VPRECHG_TH_SET,
> +	F_VRBOOST_SET,
> +	F_VFASTCHG_REG_SET1,
> +	F_VFASTCHG_REG_SET2,
> +	F_VFASTCHG_REG_SET3,
> +	F_VRECHG_SET,
> +	F_VBATOVP_SET,
> +	F_IBATM_SHORT_SET,
> +	F_PROCHOT_DG_SET,
> +	F_PROCHOT_ICRIT_DG_SET,
> +	F_PROCHOT_IDCHG_DG_SET,
> +	F_PROCHOT_EN,
> +	F_PROCHOT_ICRIT_SET,
> +	F_PROCHOT_INORM_SET,
> +	F_PROCHOT_IDCHG_SET,
> +	F_PROCHOT_VSYS_SET,
> +	F_IMON_INSEL,
> +	F_PMON_INSEL,
> +	F_IOUT_OUT_EN,
> +	F_IOUT_SOURCE_SEL,
> +	F_IOUT_GAIN_SET,
> +	F_PMON_OUT_EN,
> +	F_PMON_GAIN_SET,
> +	F_PMON_DACIN_VAL,
> +	F_IOUT_DACIN_VAL,
> +	F_VCC_BCSRETRY,
> +	F_VCC_ADCRTRY,
> +	F_VCC_USBDETEN,
> +	F_VCC_IDRDETEN,
> +	F_VCC_ENUMRDY,
> +	F_VCC_ADCPOLEN,
> +	F_VCC_DCDMODE,
> +	F_VCC_USB_SW_EN,
> +	F_VCC_USB_SW,
> +	F_VCC_DCDFAIL,
> +	F_VCC_CHGPORT,
> +	F_VCC_PUPDET,
> +	F_VCC_VBUS_VLD,
> +	F_VCC_CHGDET,
> +	F_VCC_OTGDET,
> +	F_VCC_VBINOP,
> +	F_VCC_EXTID,
> +	F_VCC_IDRDET,
> +	F_VCC_INDO,
> +	F_VCC_UCDSWEN,
> +	F_VCC_RREF_EN,
> +	F_VCC_DPPU_EN,
> +	F_VCC_DPREF_EN,
> +	F_VCC_DMREF_EN,
> +	F_VCC_DPDET_EN,
> +	F_VCC_DMDET_EN,
> +	F_VCC_DPSINK_EN,
> +	F_VCC_DMSINK_EN,
> +	F_VCC_DP_BUFF_EN,
> +	F_VCC_DM_BUFF_EN,
> +	F_VCC_EXTCLKENBL,
> +	F_VCC_PLSTESTEN,
> +	F_VCC_UCDSWEN_TSTENB,
> +	F_VCC_RREF_EN_TSTENB,
> +	F_VCC_DPPU_EN_TSTENB,
> +	F_VCC_DPREF_EN_TSTENB,
> +	F_VCC_DMREF_EN_TSTENB,
> +	F_VCC_DPDET_EN_TSTENB,
> +	F_VCC_DMDET_EN_TSTENB,
> +	F_VCC_DPSINK_EN_TSTENB,
> +	F_VCC_DMSINK_EN_TSTENB,
> +	F_VCC_DP_BUFF_EN_TSTENB,
> +	F_VCC_DM_BUFF_EN_TSTENB,
> +	F_VBUS_BCSRETRY,
> +	F_VBUS_ADCRTRY,
> +	F_VBUS_USBDETEN,
> +	F_VBUS_IDRDETEN,
> +	F_VBUS_ENUMRDY,
> +	F_VBUS_ADCPOLEN,
> +	F_VBUS_DCDMODE,
> +	F_VBUS_USB_SW_EN,
> +	F_VBUS_USB_SW,
> +	F_VBUS_DCDFAIL,
> +	F_VBUS_CHGPORT,
> +	F_VBUS_PUPDET,
> +	F_VBUS_VBUS_VLD,
> +	F_VBUS_CHGDET,
> +	F_VBUS_OTGDET,
> +	F_VBUS_VBINOP,
> +	F_VBUS_EXTID,
> +	F_VBUS_IDRDET,
> +	F_VBUS_INDO,
> +	F_VBUS_UCDSWEN,
> +	F_VBUS_RREF_EN,
> +	F_VBUS_DPPU_EN,
> +	F_VBUS_DPREF_EN,
> +	F_VBUS_DMREF_EN,
> +	F_VBUS_DPDET_EN,
> +	F_VBUS_DMDET_EN,
> +	F_VBUS_DPSINK_EN,
> +	F_VBUS_DMSINK_EN,
> +	F_VBUS_DP_BUFF_EN,
> +	F_VBUS_DM_BUFF_EN,
> +	F_VBUS_EXTCLKENBL,
> +	F_VBUS_PLSTESTEN,
> +	F_VBUS_UCDSWEN_TSTENB,
> +	F_VBUS_RREF_EN_TSTENB,
> +	F_VBUS_DPPU_EN_TSTENB,
> +	F_VBUS_DPREF_EN_TSTENB,
> +	F_VBUS_DMREF_EN_TSTENB,
> +	F_VBUS_DPDET_EN_TSTENB,
> +	F_VBUS_DMDET_EN_TSTENB,
> +	F_VBUS_DPSINK_EN_TSTENB,
> +	F_VBUS_DMSINK_EN_TSTENB,
> +	F_VBUS_DP_BUFF_EN_TSTENB,
> +	F_VBUS_DM_BUFF_EN_TSTENB,
> +	F_CHIP_ID,
> +	F_CHIP_REV,
> +	F_ONE_CELL_MODE,
> +	F_cell,
> +	F_VACP_AUTO_DISCHG,
> +	F_VACP_LOAD,
> +	F_ACOK_POL,
> +	F_ACOK_DISEN,
> +	F_DEBUG_SET1,
> +	F_DEBUG_SET0,
> +	F_MONRST_STATE,
> +	F_ALMRST_STATE,
> +	F_CHGRST_STATE,
> +	F_OTPLD_STATE,
> +	F_ALLRST_STATE,
> +	F_PROTECT_SET,
> +	F_MAP_SET,
> +	F_ADCINTERVAL,
> +	F_ADCMOD,
> +	F_ADCTMOD,
> +	F_EXTIADPEN,
> +	F_VSYSENB,
> +	F_VCCENB,
> +	F_VBUSENB,
> +	F_VACPENB,
> +	F_IACPENB,
> +	F_THERMENB,
> +	F_VBATENB,
> +	F_IBATMENB,
> +	F_IBATPENB,
> +	F_TMPTHR1B,
> +	F_TMPTHR1A,
> +	F_TMPTHR2B,
> +	F_TMPTHR2A,
> +	F_TMPTHR3B,
> +	F_TMPTHR3A,
> +	F_TMPTHR4B,
> +	F_TMPTHR4A,
> +	F_TMPTHR5B,
> +	F_TMPTHR5A,
> +	F_IBATP_TH_SET,
> +	F_IBATM_TH_SET,
> +	F_VBAT_TH_SET,
> +	F_THERM_TH_SET,
> +	F_IACP_TH_SET,
> +	F_VACP_TH_SET,
> +	F_VBUS_TH_SET,
> +	F_VCC_TH_SET,
> +	F_VSYS_TH_SET,
> +	F_EXTIADP_TH_SET,
> +	F_IBATP_VAL,
> +	F_IBATP_AVE_VAL,
> +	F_IBATM_VAL,
> +	F_IBATM_AVE_VAL,
> +	F_VBAT_VAL,
> +	F_VBAT_AVE_VAL,
> +	F_THERM_VAL,
> +	F_VTH_VAL,
> +	F_IACP_VAL,
> +	F_IACP_AVE_VAL,
> +	F_VACP_VAL,
> +	F_VACP_AVE_VAL,
> +	F_VBUS_VAL,
> +	F_VBUS_AVE_VAL,
> +	F_VCC_VAL,
> +	F_VCC_AVE_VAL,
> +	F_VSYS_VAL,
> +	F_VSYS_AVE_VAL,
> +	F_EXTIADP_VAL,
> +	F_EXTIADP_AVE_VAL,
> +	F_VACPCLPS_TH_SET,
> +	F_INT7_SET,
> +	F_INT6_SET,
> +	F_INT5_SET,
> +	F_INT4_SET,
> +	F_INT3_SET,
> +	F_INT2_SET,
> +	F_INT1_SET,
> +	F_INT0_SET,
> +	F_VBUS_RBUV_DET,
> +	F_VBUS_RBUV_RES,
> +	F_VBUS_TH_DET,
> +	F_VBUS_TH_RES,
> +	F_VBUS_IIN_MOD,
> +	F_VBUS_OV_DET,
> +	F_VBUS_OV_RES,
> +	F_VBUS_CLPS_DET,
> +	F_VBUS_CLPS,
> +	F_VBUS_DET,
> +	F_VBUS_RES,
> +	F_VCC_RBUV_DET,
> +	F_VCC_RBUV_RES,
> +	F_VCC_TH_DET,
> +	F_VCC_TH_RES,
> +	F_VCC_IIN_MOD,
> +	F_VCC_OVP_DET,
> +	F_VCC_OVP_RES,
> +	F_VCC_CLPS_DET,
> +	F_VCC_CLPS_RES,
> +	F_VCC_DET,
> +	F_VCC_RES,
> +	F_TH_DET,
> +	F_TH_RMV,
> +	F_TMP_OUT_DET,
> +	F_TMP_OUT_RES,
> +	F_VBAT_TH_DET,
> +	F_VBAT_TH_RES,
> +	F_IBAT_SHORT_DET,
> +	F_IBAT_SHORT_RES,
> +	F_VBAT_OV_DET,
> +	F_VBAT_OV_RES,
> +	F_BAT_ASSIST_DET,
> +	F_BAT_ASSIST_RES,
> +	F_VSYS_TH_DET,
> +	F_VSYS_TH_RES,
> +	F_VSYS_OV_DET,
> +	F_VSYS_OV_RES,
> +	F_VSYS_SHT_DET,
> +	F_VSYS_SHT_RES,
> +	F_VSYS_UV_DET,
> +	F_VSYS_UV_RES,
> +	F_OTP_LOAD_DONE,
> +	F_PWR_ON,
> +	F_EXTIADP_TRNS,
> +	F_EXTIADP_TH_DET,
> +	F_EXIADP_TH_RES,
> +	F_BAT_MNT_DET,
> +	F_BAT_MNT_RES,
> +	F_TSD_DET,
> +	F_TSD_RES,
> +	F_CHGWDT_EXP,
> +	F_THERMWDT_EXP,
> +	F_TMP_TRNS,
> +	F_CHG_TRNS,
> +	F_VBUS_UCD_PORT_DET,
> +	F_VBUS_UCD_UCHG_DET,
> +	F_VBUS_UCD_URID_RMV,
> +	F_VBUS_UCD_OTG_DET,
> +	F_VBUS_UCD_URID_MOD,
> +	F_VCC_UCD_PORT_DET,
> +	F_VCC_UCD_UCHG_DET,
> +	F_VCC_UCD_URID_RMV,
> +	F_VCC_UCD_OTG_DET,
> +	F_VCC_UCD_URID_MOD,
> +	F_PROCHOT_DET,
> +	F_PROCHOT_RES,
> +	F_VACP_DET,
> +	F_VACP_RES,
> +	F_VACP_TH_DET,
> +	F_VACP_TH_RES,
> +	F_IACP_TH_DET,
> +	F_IACP_THE_RES,
> +	F_THERM_TH_DET,
> +	F_THERM_TH_RES,
> +	F_IBATM_TH_DET,
> +	F_IBATM_TH_RES,
> +	F_IBATP_TH_DET,
> +	F_IBATP_TH_RES,
> +	F_INT7_STATUS,
> +	F_INT6_STATUS,
> +	F_INT5_STATUS,
> +	F_INT4_STATUS,
> +	F_INT3_STATUS,
> +	F_INT2_STATUS,
> +	F_INT1_STATUS,
> +	F_INT0_STATUS,
> +	F_ILIM_DECREASE,
> +	F_RESERVE_OTPREG1,
> +	F_POWER_SAVE_MODE,
> +	F_DEBUG_MODE_SET,
> +	F_DEBUG0x14,
> +	F_DEBUG0x1A,
> +	F_MAX_FIELDS
> +};
> +
> +static const struct reg_field bd9995x_reg_fields[] =3D {
> +	    [F_PREV_CHGSTM_STATE] =3D REG_FIELD(CHGSTM_STATUS, 8, 14),
> +	    [F_CHGSTM_STATE] =3D REG_FIELD(CHGSTM_STATUS, 0, 6),
> +	    [F_VBAT_VSYS_STATUS] =3D REG_FIELD(VBAT_VSYS_STATUS, 0, 15),
> +	    [F_VBUS_VCC_STATUS] =3D REG_FIELD(VBUS_VCC_STATUS, 0, 12),
> +	    [F_BATTEMP] =3D REG_FIELD(CHGOP_STATUS, 8, 10),
> +	    [F_VRECHG_DET] =3D REG_FIELD(CHGOP_STATUS, 6, 6),
> +	    [F_RBOOST_UV] =3D REG_FIELD(CHGOP_STATUS, 1, 1),
> +	    [F_RBOOSTS] =3D REG_FIELD(CHGOP_STATUS, 0, 0),
> +	    [F_THERMWDT_VAL] =3D REG_FIELD(WDT_STATUS, 8, 15),
> +	    [F_CHGWDT_VAL] =3D REG_FIELD(WDT_STATUS, 0, 7),
> +	    [F_CUR_ILIM_VAL] =3D REG_FIELD(CUR_ILIM_VAL, 0, 13),
> +	    [F_SEL_ILIM_VAL] =3D REG_FIELD(SEL_ILIM_VAL, 0, 13),
> +	    [F_IBUS_LIM_SET] =3D REG_FIELD(IBUS_LIM_SET, 5, 13),
> +	    [F_ICC_LIM_SET] =3D REG_FIELD(ICC_LIM_SET, 5, 13),
> +	    [F_IOTG_LIM_SET] =3D REG_FIELD(IOTG_LIM_SET, 5, 13),
> +	    [F_OTG_BOTH_EN] =3D REG_FIELD(VIN_CTRL_SET, 15, 15),
> +	    [F_VRBOOST_TRIG] =3D REG_FIELD(VIN_CTRL_SET, 14, 14),
> +	    [F_VRBOOST_EN] =3D REG_FIELD(VIN_CTRL_SET, 12, 13),
> +	    [F_PP_BOTH_THRU] =3D REG_FIELD(VIN_CTRL_SET, 11, 11),
> +	    [F_VIN_ORD] =3D REG_FIELD(VIN_CTRL_SET, 7, 7),
> +	    [F_VBUS_EN] =3D REG_FIELD(VIN_CTRL_SET, 6, 6),
> +	    [F_VCC_EN] =3D REG_FIELD(VIN_CTRL_SET, 5, 5),
> +	    [F_VSYS_PRIORITY] =3D REG_FIELD(VIN_CTRL_SET, 4, 4),
> +	    [F_PPC_SUB_CAP] =3D REG_FIELD(VIN_CTRL_SET, 2, 3),
> +	    [F_PPC_CAP] =3D REG_FIELD(VIN_CTRL_SET, 0, 1),
> +	    [F_DCP_2500_SEL] =3D REG_FIELD(CHGOP_SET1, 15, 15),
> +	    [F_SDP_500_SEL] =3D REG_FIELD(CHGOP_SET1, 14, 14),
> +	    [F_ILIM_AUTO_DISEN] =3D REG_FIELD(CHGOP_SET1, 13, 13),
> +	    [F_VCC_BC_DISEN] =3D REG_FIELD(CHGOP_SET1, 11, 11),
> +	    [F_VBUS_BC_DISEN] =3D REG_FIELD(CHGOP_SET1, 10, 10),
> +	    [F_SDP_CHG_TRIG_EN] =3D REG_FIELD(CHGOP_SET1, 9, 9),
> +	    [F_SDP_CHG_TRIG] =3D REG_FIELD(CHGOP_SET1, 8, 8),
> +	    [F_AUTO_TOF] =3D REG_FIELD(CHGOP_SET1, 6, 6),
> +	    [F_AUTO_FST] =3D REG_FIELD(CHGOP_SET1, 5, 5),
> +	    [F_AUTO_RECH] =3D REG_FIELD(CHGOP_SET1, 3, 3),
> +	    [F_ILIM_RESET_EN] =3D REG_FIELD(CHGOP_SET2, 14, 14),
> +	    [F_DCDC_1MS_SEL] =3D REG_FIELD(CHGOP_SET2, 12, 13),
> +	    [F_SEL_ILIM_DIV] =3D REG_FIELD(CHGOP_SET2, 10, 10),
> +	    [F_BATT_LEARN] =3D REG_FIELD(CHGOP_SET2, 8, 8),
> +	    [F_CHG_EN] =3D REG_FIELD(CHGOP_SET2, 7, 7),
> +	    [F_USB_SUS] =3D REG_FIELD(CHGOP_SET2, 6, 6),
> +	    [F_CHOP_SS_INIT] =3D REG_FIELD(CHGOP_SET2, 5, 5),
> +	    [F_CHOP_ALL_INIT] =3D REG_FIELD(CHGOP_SET2, 4, 4),
> +	    [F_DCDC_CLK_SEL] =3D REG_FIELD(CHGOP_SET2, 2, 3),
> +	    [F_CHOP_SS] =3D REG_FIELD(CHGOP_SET2, 1, 1),
> +	    [F_CHOP_ALL] =3D REG_FIELD(CHGOP_SET2, 0, 0),
> +	    [F_VBUSCLPS_TH_SET] =3D REG_FIELD(VBUSCLPS_TH_SET, 7, 14),
> +	    [F_VCCCLPS_TH_SET] =3D REG_FIELD(VCCCLPS_TH_SET, 7, 14),
> +	    [F_WDT_FST] =3D REG_FIELD(CHGWDT_SET, 8, 15),
> +	    [F_WDT_PRE] =3D REG_FIELD(CHGWDT_SET, 0, 7),
> +	    [F_WDT_IBAT_SHORT] =3D REG_FIELD(BATTWDT_SET, 8, 15),
> +	    [F_WDT_THERM] =3D REG_FIELD(BATTWDT_SET, 0, 7),
> +	    [F_VSYSREG_SET] =3D REG_FIELD(VSYSREG_SET, 6, 14),
> +	    [F_VSYSVAL_THH_SET] =3D REG_FIELD(VSYSVAL_THH_SET, 6, 14),
> +	    [F_VSYSVAL_THL_SET] =3D REG_FIELD(VSYSVAL_THL_SET, 6, 14),
> +	    [F_ITRICH_SET] =3D REG_FIELD(ITRICH_SET, 6, 10),
> +	    [F_IPRECH_SET] =3D REG_FIELD(IPRECH_SET, 6, 10),
> +	    [F_ICHG_SET] =3D REG_FIELD(ICHG_SET, 6, 13),
> +	    [F_ITERM_SET] =3D REG_FIELD(ITERM_SET, 6, 10),
> +	    [F_VPRECHG_TH_SET] =3D REG_FIELD(VPRECHG_TH_SET, 6, 14),
> +	    [F_VRBOOST_SET] =3D REG_FIELD(VRBOOST_SET, 6, 14),
> +	    [F_VFASTCHG_REG_SET1] =3D REG_FIELD(VFASTCHG_REG_SET1, 4, 14),
> +	    [F_VFASTCHG_REG_SET2] =3D REG_FIELD(VFASTCHG_REG_SET2, 4, 14),
> +	    [F_VFASTCHG_REG_SET3] =3D REG_FIELD(VFASTCHG_REG_SET3, 4, 14),
> +	    [F_VRECHG_SET] =3D REG_FIELD(VRECHG_SET, 4, 14),
> +	    [F_VBATOVP_SET] =3D REG_FIELD(VBATOVP_SET, 4, 14),
> +	    [F_IBATM_SHORT_SET] =3D REG_FIELD(IBATSHORT_SET, 0, 14),
> +	    [F_PROCHOT_DG_SET] =3D REG_FIELD(PROCHOT_CTRL_SET, 14, 15),
> +	    [F_PROCHOT_ICRIT_DG_SET] =3D REG_FIELD(PROCHOT_CTRL_SET, 10, 11),
> +	    [F_PROCHOT_IDCHG_DG_SET] =3D REG_FIELD(PROCHOT_CTRL_SET, 8, 9),
> +	    [F_PROCHOT_EN] =3D REG_FIELD(PROCHOT_CTRL_SET, 0, 4),
> +	    [F_PROCHOT_ICRIT_SET] =3D REG_FIELD(PROCHOT_ICRIT_SET, 0, 14),
> +	    [F_PROCHOT_INORM_SET] =3D REG_FIELD(PROCHOT_INORM_SET, 0, 14),
> +	    [F_PROCHOT_IDCHG_SET] =3D REG_FIELD(PROCHOT_IDCHG_SET, 0, 14),
> +	    [F_PROCHOT_VSYS_SET] =3D REG_FIELD(PROCHOT_VSYS_SET, 0, 14),
> +	    [F_IMON_INSEL] =3D REG_FIELD(PMON_IOUT_CTRL_SET, 9, 9),
> +	    [F_PMON_INSEL] =3D REG_FIELD(PMON_IOUT_CTRL_SET, 8, 8),
> +	    [F_IOUT_OUT_EN] =3D REG_FIELD(PMON_IOUT_CTRL_SET, 7, 7),
> +	    [F_IOUT_SOURCE_SEL] =3D REG_FIELD(PMON_IOUT_CTRL_SET, 6, 6),
> +	    [F_IOUT_GAIN_SET] =3D REG_FIELD(PMON_IOUT_CTRL_SET, 4, 5),
> +	    [F_PMON_OUT_EN] =3D REG_FIELD(PMON_IOUT_CTRL_SET, 3, 3),
> +	    [F_PMON_GAIN_SET] =3D REG_FIELD(PMON_IOUT_CTRL_SET, 0, 2),
> +	    [F_PMON_DACIN_VAL] =3D REG_FIELD(PMON_DACIN_VAL, 0, 9),
> +	    [F_IOUT_DACIN_VAL] =3D REG_FIELD(IOUT_DACIN_VAL, 0, 11),
> +	    [F_VCC_BCSRETRY] =3D REG_FIELD(VCC_UCD_SET, 12, 12),
> +	    [F_VCC_ADCRTRY] =3D REG_FIELD(VCC_UCD_SET, 8, 8),
> +	    [F_VCC_USBDETEN] =3D REG_FIELD(VCC_UCD_SET, 7, 7),
> +	    [F_VCC_IDRDETEN] =3D REG_FIELD(VCC_UCD_SET, 6, 6),
> +	    [F_VCC_ENUMRDY] =3D REG_FIELD(VCC_UCD_SET, 5, 5),
> +	    [F_VCC_ADCPOLEN] =3D REG_FIELD(VCC_UCD_SET, 4, 4),
> +	    [F_VCC_DCDMODE] =3D REG_FIELD(VCC_UCD_SET, 3, 3),
> +	    [F_VCC_USB_SW_EN] =3D REG_FIELD(VCC_UCD_SET, 1, 1),
> +	    [F_VCC_USB_SW] =3D REG_FIELD(VCC_UCD_SET, 0, 0),
> +	    [F_VCC_DCDFAIL] =3D REG_FIELD(VCC_UCD_STATUS, 15, 15),
> +	    [F_VCC_CHGPORT] =3D REG_FIELD(VCC_UCD_STATUS, 12, 13),
> +	    [F_VCC_PUPDET] =3D REG_FIELD(VCC_UCD_STATUS, 11, 11),
> +	    [F_VCC_VBUS_VLD] =3D REG_FIELD(VCC_UCD_STATUS, 7, 7),
> +	    [F_VCC_CHGDET] =3D REG_FIELD(VCC_UCD_STATUS, 6, 6),
> +	    [F_VCC_OTGDET] =3D REG_FIELD(VCC_UCD_STATUS, 3, 3),
> +	    [F_VCC_VBINOP] =3D REG_FIELD(VCC_IDD_STATUS, 6, 6),
> +	    [F_VCC_EXTID] =3D REG_FIELD(VCC_IDD_STATUS, 5, 5),
> +	    [F_VCC_IDRDET] =3D REG_FIELD(VCC_IDD_STATUS, 4, 4),
> +	    [F_VCC_INDO] =3D REG_FIELD(VCC_IDD_STATUS, 0, 3),
> +	    [F_VCC_UCDSWEN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 10, 10),
> +	    [F_VCC_RREF_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 9, 9),
> +	    [F_VCC_DPPU_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 8, 8),
> +	    [F_VCC_DPREF_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 7, 7),
> +	    [F_VCC_DMREF_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 6, 6),
> +	    [F_VCC_DPDET_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 5, 5),
> +	    [F_VCC_DMDET_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 4, 4),
> +	    [F_VCC_DPSINK_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 3, 3),
> +	    [F_VCC_DMSINK_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 2, 2),
> +	    [F_VCC_DP_BUFF_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 1, 1),
> +	    [F_VCC_DM_BUFF_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 0, 0),
> +	    [F_VCC_EXTCLKENBL] =3D REG_FIELD(VCC_UCD_FCTRL_EN, 15, 15),
> +	    [F_VCC_PLSTESTEN] =3D REG_FIELD(VCC_UCD_FCTRL_EN, 14, 14),
> +	    [F_VCC_UCDSWEN_TSTENB] =3D REG_FIELD(VCC_UCD_FCTRL_EN, 10, 10),
> +	    [F_VCC_RREF_EN_TSTENB] =3D REG_FIELD(VCC_UCD_FCTRL_EN, 9, 9),
> +	    [F_VCC_DPPU_EN_TSTENB] =3D REG_FIELD(VCC_UCD_FCTRL_EN, 8, 8),
> +	    [F_VCC_DPREF_EN_TSTENB] =3D REG_FIELD(VCC_UCD_FCTRL_EN, 7, 7),
> +	    [F_VCC_DMREF_EN_TSTENB] =3D REG_FIELD(VCC_UCD_FCTRL_EN, 6, 6),
> +	    [F_VCC_DPDET_EN_TSTENB] =3D REG_FIELD(VCC_UCD_FCTRL_EN, 5, 5),
> +	    [F_VCC_DMDET_EN_TSTENB] =3D REG_FIELD(VCC_UCD_FCTRL_EN, 4, 4),
> +	    [F_VCC_DPSINK_EN_TSTENB] =3D REG_FIELD(VCC_UCD_FCTRL_EN, 3, 3),
> +	    [F_VCC_DMSINK_EN_TSTENB] =3D REG_FIELD(VCC_UCD_FCTRL_EN, 2, 2),
> +	    [F_VCC_DP_BUFF_EN_TSTENB] =3D REG_FIELD(VCC_UCD_FCTRL_EN, 1, 1),
> +	    [F_VCC_DM_BUFF_EN_TSTENB] =3D REG_FIELD(VCC_UCD_FCTRL_EN, 0, 0),
> +
> +	    [F_VBUS_BCSRETRY] =3D REG_FIELD(VBUS_UCD_SET, 12, 12),
> +	    [F_VBUS_ADCRTRY] =3D REG_FIELD(VBUS_UCD_SET, 8, 8),
> +	    [F_VBUS_USBDETEN] =3D REG_FIELD(VBUS_UCD_SET, 7, 7),
> +	    [F_VBUS_IDRDETEN] =3D REG_FIELD(VBUS_UCD_SET, 6, 6),
> +	    [F_VBUS_ENUMRDY] =3D REG_FIELD(VBUS_UCD_SET, 5, 5),
> +	    [F_VBUS_ADCPOLEN] =3D REG_FIELD(VBUS_UCD_SET, 4, 4),
> +	    [F_VBUS_DCDMODE] =3D REG_FIELD(VBUS_UCD_SET, 3, 3),
> +	    [F_VBUS_USB_SW_EN] =3D REG_FIELD(VBUS_UCD_SET, 1, 1),
> +	    [F_VBUS_USB_SW] =3D REG_FIELD(VBUS_UCD_SET, 0, 0),
> +	    [F_VBUS_DCDFAIL] =3D REG_FIELD(VBUS_UCD_STATUS, 15, 15),
> +	    [F_VBUS_CHGPORT] =3D REG_FIELD(VBUS_UCD_STATUS, 12, 13),
> +	    [F_VBUS_PUPDET] =3D REG_FIELD(VBUS_UCD_STATUS, 11, 11),
> +	    [F_VBUS_VBUS_VLD] =3D REG_FIELD(VBUS_UCD_STATUS, 7, 7),
> +	    [F_VBUS_CHGDET] =3D REG_FIELD(VBUS_UCD_STATUS, 6, 6),
> +	    [F_VBUS_OTGDET] =3D REG_FIELD(VBUS_UCD_STATUS, 3, 3),
> +	    [F_VBUS_VBINOP] =3D REG_FIELD(VBUS_IDD_STATUS, 6, 6),
> +	    [F_VBUS_EXTID] =3D REG_FIELD(VBUS_IDD_STATUS, 5, 5),
> +	    [F_VBUS_IDRDET] =3D REG_FIELD(VBUS_IDD_STATUS, 4, 4),
> +	    [F_VBUS_INDO] =3D REG_FIELD(VBUS_IDD_STATUS, 0, 3),
> +	    [F_VBUS_UCDSWEN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 10, 10),
> +	    [F_VBUS_RREF_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 9, 9),
> +	    [F_VBUS_DPPU_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 8, 8),
> +	    [F_VBUS_DPREF_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 7, 7),
> +	    [F_VBUS_DMREF_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 6, 6),
> +	    [F_VBUS_DPDET_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 5, 5),
> +	    [F_VBUS_DMDET_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 4, 4),
> +	    [F_VBUS_DPSINK_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 3, 3),
> +	    [F_VBUS_DMSINK_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 2, 2),
> +	    [F_VBUS_DP_BUFF_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 1, 1),
> +	    [F_VBUS_DM_BUFF_EN] =3D REG_FIELD(VCC_UCD_FCTRL_SET, 0, 0),
> +
> +	    [F_VBUS_EXTCLKENBL] =3D REG_FIELD(VBUS_UCD_FCTRL_EN, 15, 15),
> +	    [F_VBUS_PLSTESTEN] =3D REG_FIELD(VBUS_UCD_FCTRL_EN, 14, 14),
> +	    [F_VBUS_UCDSWEN_TSTENB] =3D REG_FIELD(VBUS_UCD_FCTRL_EN, 10, 10),
> +	    [F_VBUS_RREF_EN_TSTENB] =3D REG_FIELD(VBUS_UCD_FCTRL_EN, 9, 9),
> +	    [F_VBUS_DPPU_EN_TSTENB] =3D REG_FIELD(VBUS_UCD_FCTRL_EN, 8, 8),
> +	    [F_VBUS_DPREF_EN_TSTENB] =3D REG_FIELD(VBUS_UCD_FCTRL_EN, 7, 7),
> +	    [F_VBUS_DMREF_EN_TSTENB] =3D REG_FIELD(VBUS_UCD_FCTRL_EN, 6, 6),
> +	    [F_VBUS_DPDET_EN_TSTENB] =3D REG_FIELD(VBUS_UCD_FCTRL_EN, 5, 5),
> +	    [F_VBUS_DMDET_EN_TSTENB] =3D REG_FIELD(VBUS_UCD_FCTRL_EN, 4, 4),
> +	    [F_VBUS_DPSINK_EN_TSTENB] =3D REG_FIELD(VBUS_UCD_FCTRL_EN, 3, 3),
> +	    [F_VBUS_DMSINK_EN_TSTENB] =3D REG_FIELD(VBUS_UCD_FCTRL_EN, 2, 2),
> +	    [F_VBUS_DP_BUFF_EN_TSTENB] =3D REG_FIELD(VBUS_UCD_FCTRL_EN, 1, 1),
> +	    [F_VBUS_DM_BUFF_EN_TSTENB] =3D REG_FIELD(VBUS_UCD_FCTRL_EN, 0, 0),
> +
> +	    [F_CHIP_ID] =3D REG_FIELD(CHIP_ID, 0, 15),
> +	    [F_CHIP_REV] =3D REG_FIELD(CHIP_REV, 0, 15),
> +	    [F_ONE_CELL_MODE] =3D REG_FIELD(IC_SET1, 11, 11),
> +	    [F_cell] =3D REG_FIELD(IC_SET1, 1, 1),
> +	    [F_VACP_AUTO_DISCHG] =3D REG_FIELD(IC_SET1, 9, 9),
> +	    [F_VACP_LOAD] =3D REG_FIELD(IC_SET1, 8, 8),
> +	    [F_ACOK_POL] =3D REG_FIELD(IC_SET1, 1, 1),
> +	    [F_ACOK_DISEN] =3D REG_FIELD(IC_SET1, 0, 0),
> +	    [F_DEBUG_SET1] =3D REG_FIELD(IC_SET2, 4, 8),
> +	    [F_DEBUG_SET0] =3D REG_FIELD(IC_SET2, 0, 0),
> +	    [F_MONRST_STATE] =3D REG_FIELD(SYSTEM_STATUS, 6, 6),
> +	    [F_ALMRST_STATE] =3D REG_FIELD(SYSTEM_STATUS, 5, 5),
> +	    [F_CHGRST_STATE] =3D REG_FIELD(SYSTEM_STATUS, 4, 4),
> +	    [F_OTPLD_STATE] =3D REG_FIELD(SYSTEM_STATUS, 1, 1),
> +	    [F_ALLRST_STATE] =3D REG_FIELD(SYSTEM_STATUS, 0, 0),
> +	    [F_PROTECT_SET] =3D REG_FIELD(PROTECT_SET, 0, 15),
> +	    [F_MAP_SET] =3D REG_FIELD(MAP_SET, 0, 15),
> +	    [F_ADCINTERVAL] =3D REG_FIELD(VM_CTRL_SET, 14, 15),
> +	    [F_ADCMOD] =3D REG_FIELD(VM_CTRL_SET, 12, 13),
> +	    [F_ADCTMOD] =3D REG_FIELD(VM_CTRL_SET, 10, 11),
> +	    [F_EXTIADPEN] =3D REG_FIELD(VM_CTRL_SET, 9, 9),
> +	    [F_VSYSENB] =3D REG_FIELD(VM_CTRL_SET, 8, 8),
> +	    [F_VCCENB] =3D REG_FIELD(VM_CTRL_SET, 7, 7),
> +	    [F_VBUSENB] =3D REG_FIELD(VM_CTRL_SET, 6, 6),
> +	    [F_VACPENB] =3D REG_FIELD(VM_CTRL_SET, 5, 5),
> +	    [F_IACPENB] =3D REG_FIELD(VM_CTRL_SET, 4, 4),
> +	    [F_THERMENB] =3D REG_FIELD(VM_CTRL_SET, 3, 3),
> +	    [F_VBATENB] =3D REG_FIELD(VM_CTRL_SET, 2, 2),
> +	    [F_IBATMENB] =3D REG_FIELD(VM_CTRL_SET, 1, 1),
> +	    [F_IBATPENB] =3D REG_FIELD(VM_CTRL_SET, 0, 0),
> +	    [F_TMPTHR1B] =3D REG_FIELD(THERM_WINDOW_SET1, 8, 15),
> +	    [F_TMPTHR1A] =3D REG_FIELD(THERM_WINDOW_SET1, 0, 7),
> +	    [F_TMPTHR2B] =3D REG_FIELD(THERM_WINDOW_SET2, 8, 15),
> +	    [F_TMPTHR2A] =3D REG_FIELD(THERM_WINDOW_SET2, 0, 7),
> +	    [F_TMPTHR3B] =3D REG_FIELD(THERM_WINDOW_SET3, 8, 15),
> +	    [F_TMPTHR3A] =3D REG_FIELD(THERM_WINDOW_SET3, 0, 7),
> +	    [F_TMPTHR4B] =3D REG_FIELD(THERM_WINDOW_SET4, 8, 15),
> +	    [F_TMPTHR4A] =3D REG_FIELD(THERM_WINDOW_SET4, 0, 7),
> +	    [F_TMPTHR5B] =3D REG_FIELD(THERM_WINDOW_SET5, 8, 15),
> +	    [F_TMPTHR5A] =3D REG_FIELD(THERM_WINDOW_SET5, 0, 7),
> +	    [F_IBATP_TH_SET] =3D REG_FIELD(IBATP_TH_SET, 0, 14),
> +	    [F_IBATM_TH_SET] =3D REG_FIELD(IBATM_TH_SET, 0, 14),
> +	    [F_VBAT_TH_SET] =3D REG_FIELD(VBAT_TH_SET, 0, 14),
> +	    [F_THERM_TH_SET] =3D REG_FIELD(THERM_TH_SET, 0, 7),
> +	    [F_IACP_TH_SET] =3D REG_FIELD(IACP_TH_SET, 0, 14),
> +	    [F_VACP_TH_SET] =3D REG_FIELD(VACP_TH_SET, 0, 14),
> +	    [F_VBUS_TH_SET] =3D REG_FIELD(VBUS_TH_SET, 0, 14),
> +	    [F_VCC_TH_SET] =3D REG_FIELD(VCC_TH_SET, 0, 14),
> +	    [F_VSYS_TH_SET] =3D REG_FIELD(VSYS_TH_SET, 0, 14),
> +	    [F_EXTIADP_TH_SET] =3D REG_FIELD(EXTIADP_TH_SET, 0, 11),
> +	    [F_IBATP_VAL] =3D REG_FIELD(IBATP_VAL, 0, 14),
> +	    [F_IBATP_AVE_VAL] =3D REG_FIELD(IBATP_AVE_VAL, 0, 14),
> +	    [F_IBATM_VAL] =3D REG_FIELD(IBATM_VAL, 0, 14),
> +	    [F_IBATM_AVE_VAL] =3D REG_FIELD(IBATM_AVE_VAL, 0, 14),
> +	    [F_VBAT_VAL] =3D REG_FIELD(VBAT_VAL, 0, 14),
> +	    [F_VBAT_AVE_VAL] =3D REG_FIELD(VBAT_AVE_VAL, 0, 14),
> +	    [F_THERM_VAL] =3D REG_FIELD(THERM_VAL, 0, 7),
> +	    [F_VTH_VAL] =3D REG_FIELD(VTH_VAL, 0, 11),
> +	    [F_IACP_VAL] =3D REG_FIELD(IACP_VAL, 0, 14),
> +	    [F_IACP_AVE_VAL] =3D REG_FIELD(IACP_AVE_VAL, 0, 14),
> +	    [F_VACP_VAL] =3D REG_FIELD(VACP_VAL, 0, 14),
> +	    [F_VACP_AVE_VAL] =3D REG_FIELD(VACP_AVE_VAL, 0, 14),
> +	    [F_VBUS_VAL] =3D REG_FIELD(VBUS_VAL, 0, 14),
> +	    [F_VBUS_AVE_VAL] =3D REG_FIELD(VBUS_AVE_VAL, 0, 14),
> +	    [F_VCC_VAL] =3D REG_FIELD(VCC_VAL, 0, 14),
> +	    [F_VCC_AVE_VAL] =3D REG_FIELD(VCC_AVE_VAL, 0, 14),
> +	    [F_VSYS_VAL] =3D REG_FIELD(VSYS_VAL, 0, 14),
> +	    [F_VSYS_AVE_VAL] =3D REG_FIELD(VSYS_AVE_VAL, 0, 14),
> +	    [F_EXTIADP_VAL] =3D REG_FIELD(EXTIADP_VAL, 0, 11),
> +	    [F_EXTIADP_AVE_VAL] =3D REG_FIELD(EXTIADP_AVE_VAL, 0, 11),
> +	    [F_VACPCLPS_TH_SET] =3D REG_FIELD(VACPCLPS_TH_SET, 7, 14),
> +	    [F_INT7_SET] =3D REG_FIELD(INT7_SET, 0, 15),
> +	    [F_INT6_SET] =3D REG_FIELD(INT6_SET, 0, 13),
> +	    [F_INT5_SET] =3D REG_FIELD(INT5_SET, 0, 13),
> +	    [F_INT4_SET] =3D REG_FIELD(INT4_SET, 0, 9),
> +	    [F_INT3_SET] =3D REG_FIELD(INT3_SET, 0, 15),
> +	    [F_INT2_SET] =3D REG_FIELD(INT2_SET, 0, 15),
> +	    [F_INT1_SET] =3D REG_FIELD(INT1_SET, 0, 15),
> +	    [F_INT0_SET] =3D REG_FIELD(INT0_SET, 0, 7),
> +	    [F_VBUS_RBUV_DET] =3D REG_FIELD(INT1_SET, 15, 15),
> +	    [F_VBUS_RBUV_RES] =3D REG_FIELD(INT1_SET, 14, 14),
> +	    [F_VBUS_TH_DET] =3D REG_FIELD(INT1_SET, 9, 9),
> +	    [F_VBUS_TH_RES] =3D REG_FIELD(INT1_SET, 8, 8),
> +	    [F_VBUS_IIN_MOD] =3D REG_FIELD(INT1_SET, 6, 6),
> +	    [F_VBUS_OV_DET] =3D REG_FIELD(INT1_SET, 5, 5),
> +	    [F_VBUS_OV_RES] =3D REG_FIELD(INT1_SET, 4, 4),
> +	    [F_VBUS_CLPS_DET] =3D REG_FIELD(INT1_SET, 3, 3),
> +	    [F_VBUS_CLPS] =3D REG_FIELD(INT1_SET, 2, 2),
> +	    [F_VBUS_DET] =3D REG_FIELD(INT1_SET, 1, 1),
> +	    [F_VBUS_RES] =3D REG_FIELD(INT1_SET, 0, 0),
> +	    [F_VCC_RBUV_DET] =3D REG_FIELD(INT2_SET, 15, 15),
> +	    [F_VCC_RBUV_RES] =3D REG_FIELD(INT2_SET, 14, 14),
> +	    [F_VCC_TH_DET] =3D REG_FIELD(INT2_SET, 9, 9),
> +	    [F_VCC_TH_RES] =3D REG_FIELD(INT2_SET, 8, 8),
> +	    [F_VCC_IIN_MOD] =3D REG_FIELD(INT2_SET, 6, 6),
> +	    [F_VCC_OVP_DET] =3D REG_FIELD(INT2_SET, 5, 5),
> +	    [F_VCC_OVP_RES] =3D REG_FIELD(INT2_SET, 4, 4),
> +	    [F_VCC_CLPS_DET] =3D REG_FIELD(INT2_SET, 3, 3),
> +	    [F_VCC_CLPS_RES] =3D REG_FIELD(INT2_SET, 2, 2),
> +	    [F_VCC_DET] =3D REG_FIELD(INT2_SET, 1, 1),
> +	    [F_VCC_RES] =3D REG_FIELD(INT2_SET, 0, 0),
> +	    [F_TH_DET] =3D REG_FIELD(INT3_SET, 15, 15),
> +	    [F_TH_RMV] =3D REG_FIELD(INT3_SET, 14, 14),
> +	    [F_TMP_OUT_DET] =3D REG_FIELD(INT3_SET, 11, 11),
> +	    [F_TMP_OUT_RES] =3D REG_FIELD(INT3_SET, 10, 10),
> +	    [F_VBAT_TH_DET] =3D REG_FIELD(INT3_SET, 9, 9),
> +	    [F_VBAT_TH_RES] =3D REG_FIELD(INT3_SET, 8, 8),
> +	    [F_IBAT_SHORT_DET] =3D REG_FIELD(INT3_SET, 7, 7),
> +	    [F_IBAT_SHORT_RES] =3D REG_FIELD(INT3_SET, 6, 6),
> +	    [F_VBAT_OV_DET] =3D REG_FIELD(INT3_SET, 5, 5),
> +	    [F_VBAT_OV_RES] =3D REG_FIELD(INT3_SET, 4, 4),
> +	    [F_BAT_ASSIST_DET] =3D REG_FIELD(INT3_SET, 3, 3),
> +	    [F_BAT_ASSIST_RES] =3D REG_FIELD(INT3_SET, 2, 2),
> +	    [F_VSYS_TH_DET] =3D REG_FIELD(INT4_SET, 9, 9),
> +	    [F_VSYS_TH_RES] =3D REG_FIELD(INT4_SET, 8, 8),
> +	    [F_VSYS_OV_DET] =3D REG_FIELD(INT4_SET, 5, 5),
> +	    [F_VSYS_OV_RES] =3D REG_FIELD(INT4_SET, 4, 4),
> +	    [F_VSYS_SHT_DET] =3D REG_FIELD(INT4_SET, 3, 3),
> +	    [F_VSYS_SHT_RES] =3D REG_FIELD(INT4_SET, 2, 2),
> +	    [F_VSYS_UV_DET] =3D REG_FIELD(INT4_SET, 1, 1),
> +	    [F_VSYS_UV_RES] =3D REG_FIELD(INT4_SET, 0, 0),
> +	    [F_OTP_LOAD_DONE] =3D REG_FIELD(INT5_SET, 13, 13),
> +	    [F_PWR_ON] =3D REG_FIELD(INT5_SET, 12, 12),
> +	    [F_EXTIADP_TRNS] =3D REG_FIELD(INT5_SET, 11, 11),
> +	    [F_EXTIADP_TH_DET] =3D REG_FIELD(INT5_SET, 9, 9),
> +	    [F_EXIADP_TH_RES] =3D REG_FIELD(INT5_SET, 8, 8),
> +	    [F_BAT_MNT_DET] =3D REG_FIELD(INT5_SET, 7, 7),
> +	    [F_BAT_MNT_RES] =3D REG_FIELD(INT5_SET, 6, 6),
> +	    [F_TSD_DET] =3D REG_FIELD(INT5_SET, 5, 5),
> +	    [F_TSD_RES] =3D REG_FIELD(INT5_SET, 4, 4),
> +	    [F_CHGWDT_EXP] =3D REG_FIELD(INT5_SET, 3, 3),
> +	    [F_THERMWDT_EXP] =3D REG_FIELD(INT5_SET, 2, 2),
> +	    [F_TMP_TRNS] =3D REG_FIELD(INT5_SET, 1, 1),
> +	    [F_CHG_TRNS] =3D REG_FIELD(INT5_SET, 0, 0),
> +	    [F_VBUS_UCD_PORT_DET] =3D REG_FIELD(INT6_SET, 13, 13),
> +	    [F_VBUS_UCD_UCHG_DET] =3D REG_FIELD(INT6_SET, 12, 12),
> +	    [F_VBUS_UCD_URID_RMV] =3D REG_FIELD(INT6_SET, 11, 11),
> +	    [F_VBUS_UCD_OTG_DET] =3D REG_FIELD(INT6_SET, 10, 10),
> +	    [F_VBUS_UCD_URID_MOD] =3D REG_FIELD(INT6_SET, 8, 8),
> +	    [F_VCC_UCD_PORT_DET] =3D REG_FIELD(INT6_SET, 5, 5),
> +	    [F_VCC_UCD_UCHG_DET] =3D REG_FIELD(INT6_SET, 4, 4),
> +	    [F_VCC_UCD_URID_RMV] =3D REG_FIELD(INT6_SET, 3, 3),
> +	    [F_VCC_UCD_OTG_DET] =3D REG_FIELD(INT6_SET, 2, 2),
> +	    [F_VCC_UCD_URID_MOD] =3D REG_FIELD(INT6_SET, 0, 0),
> +	    [F_PROCHOT_DET] =3D REG_FIELD(INT7_SET, 15, 15),
> +	    [F_PROCHOT_RES] =3D REG_FIELD(INT7_SET, 14, 14),
> +	    [F_VACP_DET] =3D REG_FIELD(INT7_SET, 11, 11),
> +	    [F_VACP_RES] =3D REG_FIELD(INT7_SET, 10, 10),
> +	    [F_VACP_TH_DET] =3D REG_FIELD(INT7_SET, 9, 9),
> +	    [F_VACP_TH_RES] =3D REG_FIELD(INT7_SET, 8, 8),
> +	    [F_IACP_TH_DET] =3D REG_FIELD(INT7_SET, 7, 7),
> +	    [F_IACP_THE_RES] =3D REG_FIELD(INT7_SET, 6, 6),
> +	    [F_THERM_TH_DET] =3D REG_FIELD(INT7_SET, 5, 5),
> +	    [F_THERM_TH_RES] =3D REG_FIELD(INT7_SET, 4, 4),
> +	    [F_IBATM_TH_DET] =3D REG_FIELD(INT7_SET, 3, 3),
> +	    [F_IBATM_TH_RES] =3D REG_FIELD(INT7_SET, 2, 2),
> +	    [F_IBATP_TH_DET] =3D REG_FIELD(INT7_SET, 1, 1),
> +	    [F_IBATP_TH_RES] =3D REG_FIELD(INT7_SET, 0, 0),
> +	    [F_INT7_STATUS] =3D REG_FIELD(INT7_STATUS, 0, 15),
> +	    [F_INT6_STATUS] =3D REG_FIELD(INT6_STATUS, 0, 13),
> +	    [F_INT5_STATUS] =3D REG_FIELD(INT5_STATUS, 0, 13),
> +	    [F_INT4_STATUS] =3D REG_FIELD(INT4_STATUS, 0, 9),
> +	    [F_INT3_STATUS] =3D REG_FIELD(INT3_STATUS, 0, 15),
> +	    [F_INT2_STATUS] =3D REG_FIELD(INT2_STATUS, 0, 15),
> +	    [F_INT1_STATUS] =3D REG_FIELD(INT1_STATUS, 0, 15),
> +	    [F_INT0_STATUS] =3D REG_FIELD(INT0_STATUS, 0, 7),
> +	    [F_ILIM_DECREASE] =3D REG_FIELD(OTPREG0, 0, 15),
> +	    [F_RESERVE_OTPREG1] =3D REG_FIELD(OTPREG1, 0, 15),
> +	    [F_POWER_SAVE_MODE] =3D REG_FIELD(SMBREG, 0, 15),
> +	    [F_DEBUG_MODE_SET] =3D REG_FIELD(DEBUG_MODE_SET, 0, 15),
> +	    [F_DEBUG0x14] =3D REG_FIELD(DEBUG0x14, 0, 15),
> +	    [F_DEBUG0x1A] =3D REG_FIELD(DEBUG0x1A, 0, 15),
> +};
> +
> +/* CHGSTM_STATEs */
> +#define CHGSTM_SUSPEND 0x00
> +#define CHGSTM_TRICKLE_CHARGE 0x01
> +#define CHGSTM_PRE_CHARGE 0x02
> +#define CHGSTM_FAST_CHARGE 0x03
> +#define CHGSTM_TOP_OFF 0x04
> +#define CHGSTM_DONE 0x05
> +#define CHGSTM_OTG 0x08
> +#define CHGSTM_OTG_DONE 0x09
> +#define CHGSTM_TEMPERATURE_ERROR_1 0x10
> +#define CHGSTM_TEMPERATURE_ERROR_2 0x11
> +#define CHGSTM_TEMPERATURE_ERROR_3 0x12
> +#define CHGSTM_TEMPERATURE_ERROR_4 0x13
> +#define CHGSTM_TEMPERATURE_ERROR_5 0x14
> +#define CHGSTM_TEMPERATURE_ERROR_6 0x15
> +#define CHGSTM_TEMPERATURE_ERROR_7 0x18
> +#define CHGSTM_THERMAL_SHUT_DOWN_1 0x20
> +#define CHGSTM_THERMAL_SHUT_DOWN_2 0x21
> +#define CHGSTM_THERMAL_SHUT_DOWN_3 0x22
> +#define CHGSTM_THERMAL_SHUT_DOWN_4 0x23
> +#define CHGSTM_THERMAL_SHUT_DOWN_5 0x24
> +#define CHGSTM_THERMAL_SHUT_DOWN_6 0x25
> +#define CHGSTM_THERMAL_SHUT_DOWN_7 0x28
> +#define CHGSTM_BATTERY_ERROR 0x40
> +
> +/* VBAT_VSYS_STATUS */
> +#define STATUS_VSYS_OV BIT(15)
> +#define STATUS_VSYS_SSD BIT(14)
> +#define STATUS_VSYS_SCP BIT(13)
> +#define STATUS_VSYS_UVN BIT(12)
> +#define STATUS_IBAT_SHORT BIT(6)
> +#define STATUS_VBAT_OV BIT(3)
> +#define STATUS_DEAD_BAT BIT(0)
> +
> +/* VBUS_VCC_STATUS */
> +#define STATUS_VACP_DET BIT(12)
> +#define STATUS_VCC_OVP BIT(11)
> +#define STATUS_ILIM_VCC_MOD BIT(10)
> +#define STATUS_VCC_CLPS BIT(9)
> +#define STATUS_VCC_DET BIT(8)
> +#define STATUS_VBUS_OVP BIT(3)
> +#define STATUS_ILIM_VBUS_MOD BIT(2)
> +#define STATUS_VBUS_CLPS BIT(1)
> +#define STATUS_VBUS_DET BIT(0)
> +
> +/* Interrupt set/status definitions */
> +
> +/* INT 0 */
> +#define INT0_INT7_STATUS BIT(7)
> +#define INT0_INT6_STATUS BIT(6)
> +#define INT0_INT5_STATUS BIT(5)
> +#define INT0_INT4_STATUS BIT(4)
> +#define INT0_INT3_STATUS BIT(3)
> +#define INT0_INT2_STATUS BIT(2)
> +#define INT0_INT1_STATUS BIT(1)
> +#define INT0_INT0_STATUS BIT(0)
> +#define INT0_ALL 0xff
> +
> +/* INT 1 */
> +#define VBUS_RBUV_DET BIT(15)
> +#define VBUS_RBUV_RES BIT(14)
> +#define VBUS_TH_DET BIT(9)
> +#define VBUS_TH_RES BIT(8)
> +#define VBUS_IIN_MOD BIT(6)
> +#define VBUS_OV_DET BIT(5)
> +#define VBUS_OV_RES BIT(4)
> +#define VBUS_CLPS_DET BIT(3)
> +#define VBUS_CLPS BIT(2)
> +#define VBUS_DET BIT(1)
> +#define VBUS_RES BIT(0)
> +#define INT1_ALL (VBUS_RBUV_DET|\
> +		 VBUS_RBUV_RES|\
> +		 VBUS_TH_DET |\
> +		 VBUS_TH_RES |\
> +		 VBUS_IIN_MOD|\
> +		 VBUS_OV_DET |\
> +		 VBUS_OV_RES |\
> +		 VBUS_CLPS_DET |\
> +		 VBUS_CLPS |\
> +		 VBUS_DET |\
> +		 VBUS_RES)
> +
> +/* INT 2 */
> +#define VCC_RBUV_DET BIT(15)
> +#define VCC_RBUV_RES BIT(14)
> +#define VCC_TH_DET BIT(9)
> +#define VCC_TH_RES BIT(8)
> +#define VCC_IIN_MOD BIT(6)
> +#define VCC_OVP_DET BIT(5)
> +#define VCC_OVP_RES BIT(4)
> +#define VCC_CLPS_DET BIT(3)
> +#define VCC_CLPS_RES BIT(2)
> +#define VCC_DET BIT(1)
> +#define VCC_RES BIT(0)
> +#define INT2_ALL (VCC_RBUV_DET |\
> +		 VCC_RBUV_RES |\
> +		 VCC_TH_DET |\
> +		 VCC_TH_RES |\
> +		 VCC_IIN_MOD |\
> +		 VCC_OVP_DET |\
> +		 VCC_OVP_RES |\
> +		 VCC_CLPS_DET |\
> +		 VCC_CLPS_RES |\
> +		 VCC_DET |\
> +		 VCC_RES)
> +/* INT 3 */
> +#define TH_DET BIT(15)
> +#define TH_RMV BIT(14)
> +#define TMP_OUT_DET BIT(11)
> +#define TMP_OUT_RES BIT(10)
> +#define VBAT_TH_DET BIT(9)
> +#define VBAT_TH_RES BIT(8)
> +#define IBAT_SHORT_DET BIT(7)
> +#define IBAT_SHORT_RES BIT(6)
> +#define VBAT_OV_DET BIT(5)
> +#define VBAT_OV_RES BIT(4)
> +#define BAT_ASSIST_DET BIT(3)
> +#define BAT_ASSIST_RES BIT(2)
> +#define INT3_ALL (TH_DET |\
> +		 TH_RMV |\
> +		 TMP_OUT_DET |\
> +		 TMP_OUT_RES |\
> +		 VBAT_TH_DET |\
> +		 VBAT_TH_RES |\
> +		 IBAT_SHORT_DET |\
> +		 IBAT_SHORT_RES |\
> +		 VBAT_OV_DET |\
> +		 VBAT_OV_RES |\
> +		 BAT_ASSIST_DET |\
> +		 BAT_ASSIST_RES)
> +
> +/* INT 4 */
> +#define VSYS_TH_DET BIT(9)
> +#define VSYS_TH_RES BIT(8)
> +#define VSYS_OV_DET BIT(5)
> +#define VSYS_OV_RES BIT(4)
> +#define VSYS_SHT_DET BIT(3)
> +#define VSYS_SHT_RES BIT(2)
> +#define VSYS_UV_DET BIT(1)
> +#define VSYS_UV_RES BIT(0)
> +#define INT4_ALL (VSYS_TH_DET |\
> +		 VSYS_TH_RES |\
> +		 VSYS_OV_DET |\
> +		 VSYS_OV_RES |\
> +		 VSYS_SHT_DET |\
> +		 VSYS_SHT_RES |\
> +		 VSYS_UV_DET |\
> +		 VSYS_UV_RES)
> +
> +/* INT 5*/
> +#define OTP_LOAD_DONE BIT(13)
> +#define PWR_ON BIT(12)
> +#define EXTIADP_TRNS BIT(11)
> +#define EXTIADP_TH_DET BIT(9)
> +#define EXIADP_TH_RES BIT(8)
> +#define BAT_MNT_DET BIT(7)
> +#define BAT_MNT_RES BIT(6)
> +#define TSD_DET BIT(5)
> +#define TSD_RES BIT(4)
> +#define CHGWDT_EXP BIT(3)
> +#define THERMWDT_EXP BIT(2)
> +#define TMP_TRNS BIT(1)
> +#define CHG_TRNS BIT(0)
> +#define INT5_ALL (OTP_LOAD_DONE |\
> +		 PWR_ON |\
> +		 EXTIADP_TRNS |\
> +		 EXTIADP_TH_DET |\
> +		 EXIADP_TH_RES |\
> +		 BAT_MNT_DET |\
> +		 BAT_MNT_RES |\
> +		 TSD_DET |\
> +		 TSD_RES |\
> +		 CHGWDT_EXP |\
> +		 THERMWDT_EXP |\
> +		 TMP_TRNS |\
> +		 CHG_TRNS)
> +
> +/* INT 6*/
> +#define VBUS_UCD_PORT_DET BIT(13)
> +#define VBUS_UCD_UCHG_DET BIT(12)
> +#define VBUS_UCD_URID_RMV BIT(11)
> +#define VBUS_UCD_OTG_DET BIT(10)
> +#define VBUS_UCD_URID_MOD BIT(8)
> +#define VCC_UCD_PORT_DET BIT(5)
> +#define VCC_UCD_UCHG_DET BIT(4)
> +#define VCC_UCD_URID_RMV BIT(3)
> +#define VCC_UCD_OTG_DET BIT(2)
> +#define VCC_UCD_URID_MOD BIT(0)
> +#define INT6_ALL (VBUS_UCD_PORT_DET |\
> +		 VBUS_UCD_UCHG_DET |\
> +		 VBUS_UCD_URID_RMV |\
> +		 VBUS_UCD_OTG_DET |\
> +		 VBUS_UCD_URID_MOD |\
> +		 VCC_UCD_PORT_DET |\
> +		 VCC_UCD_UCHG_DET |\
> +		 VCC_UCD_URID_RMV |\
> +		 VCC_UCD_OTG_DET |\
> +		 VCC_UCD_URID_MOD)
> +
> +/* INT 7 */
> +#define PROCHOT_DET BIT(15)
> +#define PROCHOT_RES BIT(14)
> +#define VACP_DET BIT(11)
> +#define VACP_RES BIT(10)
> +#define VACP_TH_DET BIT(9)
> +#define VACP_TH_RES BIT(8)
> +#define IACP_TH_DET BIT(7)
> +#define IACP_THE_RES BIT(6)
> +#define THERM_TH_DET BIT(5)
> +#define THERM_TH_RES BIT(4)
> +#define IBATM_TH_DET BIT(3)
> +#define IBATM_TH_RES BIT(2)
> +#define IBATP_TH_DET BIT(1)
> +#define IBATP_TH_RES BIT(0)
> +#define INT7_ALL (PROCHOT_DET |\
> +		 PROCHOT_RES |\
> +		 VACP_DET |\
> +		 VACP_RES |\
> +		 VACP_TH_DET |\
> +		 VACP_TH_RES |\
> +		 IACP_TH_DET |\
> +		 IACP_THE_RES |\
> +		 THERM_TH_DET |\
> +		 THERM_TH_RES |\
> +		 IBATM_TH_DET |\
> +		 IBATM_TH_RES |\
> +		 IBATP_TH_DET |\
> +		 IBATP_TH_RES)
> +
> +/* SYSTEM_CTRL_SET*/
> +#define MONRST BIT(6)
> +#define ALMRST BIT(5)
> +#define CHGRST BIT(4)
> +#define OTPLD  BIT(1)
> +#define ALLRST BIT(0)
> +
> +/* F_BATTEMP */
> +#define ROOM		0x0
> +#define HOT1		0x1
> +#define HOT2		0x2
> +#define HOT3		0x3
> +#define COLD1		0x4
> +#define COLD2		0x5
> +#define TEMP_DIS	0x6
> +#define BATT_OPEN	0x7
> +
> +#endif
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

--scizvxsfxllrt6k5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl6JTvMACgkQ2O7X88g7
+prl6Q//XRMz9H+C7p0Ghkmfv5wa2qS805UpWQuGsz1KtjYO6D7/CFWlYCDosknC
TIFNHmFawThZ/q4Y6ZgS9R51Fk0I1yXScBshoPGkFokVoqEGQ0ogtDOPMIguaNsi
xHyBeHslX+gyRmRYGGYqhrfsNn3j46GPJUEplqnsje4saTA1LJK3h/i/yf6PgYwx
2MUJsSIl092zJjs9UainIoHLB+RVUPINEr5v7Am13WHXJuoEnBIrv1FTYvfKI6ep
X3lkeb0Eyp0vPMmyb1U1JbJozpgH7FovjCPHZH1UfMLMLhcEJKXh1fN6qX3roGDs
84prf+f22bpi3UjQl89jobgux5E2WqLBkSkIdX+An567dJzPTihmssP9nV16sJop
SOJeuAVXE7zCzD13DbgrHdYksc0Vs7VBlULZNgfXxYdLu9LFmBtf94Mqpa/FFJz5
1go/gJD3tSmNNBjIHXLqDkqnuaBuwlgzsTeU4MyklZ9+SpiSQnPvGZW607hPCg6H
ZBhopwYXoH/GG1jrHxREMAZsIWx2BWGxXaCg1BmGydbmgJheHvmDmI7IFCiAgJ0o
FOZxhIomjbcijAOCQEcIAybwE9I1h2T5aO3fLmKGjrz5xQHz8wcgfSMI3noDLesm
XxX87YKTi79tMmQzLBFr9cyOTZ2iwoLFRAWZQ27LTBSoZS/FqK4=
=FoDD
-----END PGP SIGNATURE-----

--scizvxsfxllrt6k5--


--===============7885543973465174219==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7885543973465174219==--

