Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7CE19D426
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:42:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAWQC7tf9JFIqmc1m/AQ7AmI2AQ8cNzl+yT4TNgct4w=; b=cp20p0r5A/1I4D
	3Nnx6/MGmHYTuf1/ZoIV1PKD30d0k2ZNsxBLY1A8EzfBJGAWVoQ6N43zHCu2/Rz65KO7wJch7Ko35
	7R7cJ79DM/+ZTlKJjllB8laeAOFI7V8U7bnIldm9tNlBbtGnwJcCRH5VnHUEuo/fZrPild6lhUniO
	LKX7lMxHshXzMteBvXiIDkhR79iP/52UrST+7T1JiT+jjECqTUgWGTYWaf8AUDZh1Z7SWNwi9d1L0
	yv5HtP0lPiuZiYfbjdJaeLbLcWcOadyWwY1iOL+I/GcA8CFD+Xis6QrPBHoNJQouB3fkEeLEdMmlh
	i+JB2pwjOVIBV30Nxf7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIpq-0001Z5-LW; Fri, 03 Apr 2020 09:41:58 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIpS-0001O8-M0; Fri, 03 Apr 2020 09:41:41 +0000
IronPort-SDR: 9yLSdEoecT9oTsG0htTjYHYvMJo295ZqEzRcNYgAR9vMk/0hY6dbNJCL7GCUptAa0EJuom3WcK
 QAyJLIbYJ7iw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 02:41:32 -0700
IronPort-SDR: Yv2Qz15ejRaKLmHHHLvMZJiuCzJmU0nVGKGk0jCV4E7w6ph0Nu+J9ks6EHE//xJ9pfcReknNrX
 H0uAroKrWmXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,339,1580803200"; d="scan'208";a="423474353"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga005.jf.intel.com with ESMTP; 03 Apr 2020 02:41:21 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jKIpG-00FOct-9V; Fri, 03 Apr 2020 12:41:22 +0300
Date: Fri, 3 Apr 2020 12:41:22 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Subject: Re: [PATCH v8 09/10] power: supply: Support ROHM bd99954 charger
Message-ID: <20200403094122.GK1922688@smile.fi.intel.com>
References: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
 <10b40f9bca727e790d891f6442a879bfeca68624.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10b40f9bca727e790d891f6442a879bfeca68624.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_024134_902164_8029B6CE 
X-CRM114-Status: GOOD (  25.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Liam Girdwood <lgirdwood@gmail.com>, Andreas Kemnade <andreas@kemnade.info>,
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
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Baolin Wang <baolin.wang@linaro.org>, Sangbeom Kim <sbkim73@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pm@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>, Sebastian Reichel <sre@kernel.org>,
 linux-kernel@vger.kernel.org, mikko.mutanen@fi.rohmeurope.com,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 patches@opensource.cirrus.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 11:48:05AM +0300, Matti Vaittinen wrote:
> The ROHM BD99954 is a Battery Management LSI for 1-4 cell Lithium-Ion
> secondary battery intended to be used in space-constraint equipment such
> as Low profile Notebook PC, Tablets and other applications. BD99954
> provides a Dual-source Battery Charger, two port BC1.2 detection and a
> Battery Monitor.
> 
> Support ROHM BD99954 Charger IC.
> 

FWIW,
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---
> 
> No changes since v7
> 
>  drivers/power/supply/Kconfig           |    9 +
>  drivers/power/supply/Makefile          |    1 +
>  drivers/power/supply/bd99954-charger.c | 1149 ++++++++++++++++++++++++
>  include/linux/power/bd99954-charger.h  | 1075 ++++++++++++++++++++++
>  4 files changed, 2234 insertions(+)
>  create mode 100644 drivers/power/supply/bd99954-charger.c
>  create mode 100644 include/linux/power/bd99954-charger.h
> 
> diff --git a/drivers/power/supply/Kconfig b/drivers/power/supply/Kconfig
> index 8781c674ed07..af96d7fa56b1 100644
> --- a/drivers/power/supply/Kconfig
> +++ b/drivers/power/supply/Kconfig
> @@ -702,6 +702,15 @@ config CHARGER_BD70528
>  	 information and altering charger configurations from charger
>  	 block of the ROHM BD70528 Power Management IC.
>  
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
> @@ -91,4 +91,5 @@ obj-$(CONFIG_CHARGER_SC2731)	+= sc2731_charger.o
>  obj-$(CONFIG_FUEL_GAUGE_SC27XX)	+= sc27xx_fuel_gauge.o
>  obj-$(CONFIG_CHARGER_UCS1002)	+= ucs1002_power.o
>  obj-$(CONFIG_CHARGER_BD70528)	+= bd70528-charger.o
> +obj-$(CONFIG_CHARGER_BD99954)	+= bd99954-charger.o
>  obj-$(CONFIG_CHARGER_WILCO)	+= wilco-charger.o
> diff --git a/drivers/power/supply/bd99954-charger.c b/drivers/power/supply/bd99954-charger.c
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
> + * Details of DT properties for different limits can be found from BD99954
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
> +static const struct regmap_range bd9995x_readonly_reg_ranges[] = {
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
> +static const struct regmap_access_table bd9995x_writeable_regs = {
> +	.no_ranges = bd9995x_readonly_reg_ranges,
> +	.n_no_ranges = ARRAY_SIZE(bd9995x_readonly_reg_ranges),
> +};
> +
> +static const struct regmap_range bd9995x_volatile_reg_ranges[] = {
> +	regmap_reg_range(CHGSTM_STATUS, WDT_STATUS),
> +	regmap_reg_range(VCC_UCD_STATUS, VCC_IDD_STATUS),
> +	regmap_reg_range(VBUS_UCD_STATUS, VBUS_IDD_STATUS),
> +	regmap_reg_range(INT0_STATUS, INT7_STATUS),
> +	regmap_reg_range(SYSTEM_STATUS, SYSTEM_CTRL_SET),
> +	regmap_reg_range(IBATP_VAL, EXTIADP_AVE_VAL), /* Measurement regs */
> +};
> +
> +static const struct regmap_access_table bd9995x_volatile_regs = {
> +	.yes_ranges = bd9995x_volatile_reg_ranges,
> +	.n_yes_ranges = ARRAY_SIZE(bd9995x_volatile_reg_ranges),
> +};
> +
> +static const struct regmap_range_cfg regmap_range_cfg[] = {
> +	{
> +	.selector_reg     = MAP_SET,
> +	.selector_mask    = 0xFFFF,
> +	.selector_shift   = 0,
> +	.window_start     = 0,
> +	.window_len       = 0x100,
> +	.range_min        = 0 * 0x100,
> +	.range_max        = 3 * 0x100,
> +	},
> +};
> +
> +static const struct regmap_config bd9995x_regmap_config = {
> +	.reg_bits = 8,
> +	.val_bits = 16,
> +	.reg_stride = 1,
> +
> +	.max_register = 3 * 0x100,
> +	.cache_type = REGCACHE_RBTREE,
> +
> +	.ranges = regmap_range_cfg,
> +	.num_ranges = ARRAY_SIZE(regmap_range_cfg),
> +	.val_format_endian = REGMAP_ENDIAN_LITTLE,
> +	.wr_table = &bd9995x_writeable_regs,
> +	.volatile_table = &bd9995x_volatile_regs,
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
> +	ret = regmap_field_read(bd->rmap_fields[F_BATTEMP], &tmp);
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
> +	ret = regmap_field_read(bd->rmap_fields[F_CHGSTM_STATE], &tmp);
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
> +	ret = regmap_field_read(bd->rmap_fields[F_BATTEMP], &tmp);
> +	if (ret)
> +		return false;
> +
> +	return tmp != BATT_OPEN;
> +}
> +
> +static int bd9995x_get_prop_batt_voltage(struct bd9995x_device *bd)
> +{
> +	int ret, tmp;
> +
> +	ret = regmap_field_read(bd->rmap_fields[F_VBAT_VAL], &tmp);
> +	if (ret)
> +		return 0;
> +
> +	tmp = min(tmp, 19200);
> +
> +	return tmp * 1000;
> +}
> +
> +static int bd9995x_get_prop_batt_current(struct bd9995x_device *bd)
> +{
> +	int ret, tmp;
> +
> +	ret = regmap_field_read(bd->rmap_fields[F_IBATP_VAL], &tmp);
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
> +	ret = regmap_field_read(bd->rmap_fields[F_THERM_VAL], &tmp);
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
> +	struct bd9995x_device *bd = power_supply_get_drvdata(psy);
> +	struct bd9995x_state state;
> +
> +	mutex_lock(&bd->lock);
> +	state = bd->state;
> +	mutex_unlock(&bd->lock);
> +
> +	switch (psp) {
> +	case POWER_SUPPLY_PROP_STATUS:
> +		switch (state.chgstm_status) {
> +		case CHGSTM_TRICKLE_CHARGE:
> +		case CHGSTM_PRE_CHARGE:
> +		case CHGSTM_FAST_CHARGE:
> +		case CHGSTM_TOP_OFF:
> +			val->intval = POWER_SUPPLY_STATUS_CHARGING;
> +			break;
> +
> +		case CHGSTM_DONE:
> +			val->intval = POWER_SUPPLY_STATUS_FULL;
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
> +			val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
> +			break;
> +
> +		default:
> +			val->intval = POWER_SUPPLY_STATUS_UNKNOWN;
> +			break;
> +		}
> +		break;
> +
> +	case POWER_SUPPLY_PROP_MANUFACTURER:
> +		val->strval = BD9995X_MANUFACTURER;
> +		break;
> +
> +	case POWER_SUPPLY_PROP_ONLINE:
> +		val->intval = state.online;
> +		break;
> +
> +	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
> +		ret = regmap_field_read(bd->rmap_fields[F_IBATP_VAL], &tmp);
> +		if (ret)
> +			return ret;
> +		val->intval = tmp * 1000;
> +		break;
> +
> +	case POWER_SUPPLY_PROP_CHARGE_AVG:
> +		ret = regmap_field_read(bd->rmap_fields[F_IBATP_AVE_VAL], &tmp);
> +		if (ret)
> +			return ret;
> +		val->intval = tmp * 1000;
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
> +		ret = regmap_field_read(bd->rmap_fields[F_SEL_ILIM_VAL], &tmp);
> +		if (ret)
> +			return ret;
> +		val->intval = tmp * 1000;
> +		break;
> +
> +	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE:
> +		if (!state.online) {
> +			val->intval = 0;
> +			break;
> +		}
> +
> +		ret = regmap_field_read(bd->rmap_fields[F_VFASTCHG_REG_SET1],
> +					&tmp);
> +		if (ret)
> +			return ret;
> +
> +		/*
> +		 * The actual range : 2560 to 19200 mV. No matter what the
> +		 * register says
> +		 */
> +		val->intval = clamp_val(tmp << 4, 2560, 19200);
> +		val->intval *= 1000;
> +		break;
> +
> +	case POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT:
> +		ret = regmap_field_read(bd->rmap_fields[F_ITERM_SET], &tmp);
> +		if (ret)
> +			return ret;
> +		/* Start step is 64 mA */
> +		val->intval = tmp << 6;
> +		/* Maximum is 1024 mA - no matter what register says */
> +		val->intval = min(val->intval, 1024);
> +		val->intval *= 1000;
> +		break;
> +
> +	/* Battery properties which we access through charger */
> +	case POWER_SUPPLY_PROP_PRESENT:
> +		val->intval = bd9995x_get_prop_batt_present(bd);
> +		break;
> +
> +	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
> +		val->intval = bd9995x_get_prop_batt_voltage(bd);
> +		break;
> +
> +	case POWER_SUPPLY_PROP_CURRENT_NOW:
> +		val->intval = bd9995x_get_prop_batt_current(bd);
> +		break;
> +
> +	case POWER_SUPPLY_PROP_CHARGE_TYPE:
> +		val->intval = bd9995x_get_prop_charge_type(bd);
> +		break;
> +
> +	case POWER_SUPPLY_PROP_HEALTH:
> +		val->intval = bd9995x_get_prop_batt_health(bd);
> +		break;
> +
> +	case POWER_SUPPLY_PROP_TEMP:
> +		val->intval = bd9995x_get_prop_batt_temp(bd);
> +		break;
> +
> +	case POWER_SUPPLY_PROP_TECHNOLOGY:
> +		val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
> +		break;
> +
> +	case POWER_SUPPLY_PROP_MODEL_NAME:
> +		val->strval = "bd99954";
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
> +	} state_fields[] = {
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
> +	for (i = 0; i < ARRAY_SIZE(state_fields); i++) {
> +		ret = regmap_field_read(state_fields[i].id, &tmp);
> +		if (ret)
> +			return ret;
> +
> +		*state_fields[i].data = tmp;
> +	}
> +
> +	if (state->vbus_vcc_status & STATUS_VCC_DET ||
> +	    state->vbus_vcc_status & STATUS_VBUS_DET)
> +		state->online = 1;
> +	else
> +		state->online = 0;
> +
> +	return 0;
> +}
> +
> +static irqreturn_t bd9995x_irq_handler_thread(int irq, void *private)
> +{
> +	struct bd9995x_device *bd = private;
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
> +	ret = regmap_read(bd->rmap, INT0_STATUS, &status);
> +	if (ret) {
> +		dev_err(bd->dev, "Failed to read IRQ status\n");
> +		return IRQ_NONE;
> +	}
> +
> +	ret = regmap_field_read(bd->rmap_fields[F_INT0_SET], &mask);
> +	if (ret) {
> +		dev_err(bd->dev, "Failed to read IRQ mask\n");
> +		return IRQ_NONE;
> +	}
> +
> +	/* Handle only IRQs that are not masked */
> +	status &= mask;
> +	tmp = status;
> +
> +	/* Lowest bit does not represent any sub-registers */
> +	tmp >>= 1;
> +
> +	/*
> +	 * Mask and ack IRQs we will handle (+ the idiot bit)
> +	 */
> +	ret = regmap_field_write(bd->rmap_fields[F_INT0_SET], 0);
> +	if (ret) {
> +		dev_err(bd->dev, "Failed to mask F_INT0\n");
> +		return IRQ_NONE;
> +	}
> +
> +	ret = regmap_write(bd->rmap, INT0_STATUS, status);
> +	if (ret) {
> +		dev_err(bd->dev, "Failed to ack F_INT0\n");
> +		goto err_umask;
> +	}
> +
> +	for_each_set_bit(i, &tmp, 7) {
> +		int sub_status, sub_mask;
> +		int sub_status_reg[] = {
> +			INT1_STATUS, INT2_STATUS, INT3_STATUS, INT4_STATUS,
> +			INT5_STATUS, INT6_STATUS, INT7_STATUS,
> +		};
> +		struct regmap_field *sub_mask_f[] = {
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
> +		ret = regmap_read(bd->rmap, sub_status_reg[i], &sub_status);
> +		if (ret) {
> +			dev_err(bd->dev, "Failed to read IRQ sub-status\n");
> +			goto err_umask;
> +		}
> +
> +		ret = regmap_field_read(sub_mask_f[i], &sub_mask);
> +		if (ret) {
> +			dev_err(bd->dev, "Failed to read IRQ sub-mask\n");
> +			goto err_umask;
> +		}
> +
> +		/* Ack active sub-statuses */
> +		sub_status &= sub_mask;
> +
> +		ret = regmap_write(bd->rmap, sub_status_reg[i], sub_status);
> +		if (ret) {
> +			dev_err(bd->dev, "Failed to ack sub-IRQ\n");
> +			goto err_umask;
> +		}
> +	}
> +
> +	ret = regmap_field_write(bd->rmap_fields[F_INT0_SET], mask);
> +	if (ret)
> +		/* May as well retry once */
> +		goto err_umask;
> +
> +	/* Read whole chip state */
> +	ret = bd9995x_get_chip_state(bd, &state);
> +	if (ret < 0) {
> +		dev_err(bd->dev, "Failed to read chip state\n");
> +	} else {
> +		mutex_lock(&bd->lock);
> +		bd->state = state;
> +		mutex_unlock(&bd->lock);
> +
> +		power_supply_changed(bd->charger);
> +	}
> +
> +	return IRQ_HANDLED;
> +
> +err_umask:
> +	ret = regmap_field_write(bd->rmap_fields[F_INT0_SET], mask);
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
> +	int rst_check_counter = 10;
> +	u16 tmp = ALLRST | OTPLD;
> +
> +	ret = regmap_raw_write(bd->rmap, SYSTEM_CTRL_SET, &tmp, 2);
> +	if (ret < 0)
> +		return ret;
> +
> +	do {
> +		ret = regmap_field_read(bd->rmap_fields[F_OTPLD_STATE], &state);
> +		if (ret)
> +			return ret;
> +
> +		msleep(10);
> +	} while (state == 0 && --rst_check_counter);
> +
> +	if (!rst_check_counter) {
> +		dev_err(bd->dev, "chip reset not completed\n");
> +		return -ETIMEDOUT;
> +	}
> +
> +	tmp = 0;
> +	ret = regmap_raw_write(bd->rmap, SYSTEM_CTRL_SET, &tmp, 2);
> +
> +	return ret;
> +}
> +
> +static int bd9995x_hw_init(struct bd9995x_device *bd)
> +{
> +	int ret;
> +	int i;
> +	struct bd9995x_state state;
> +	struct bd9995x_init_data *id = &bd->init_data;
> +
> +	const struct {
> +		enum bd9995x_fields id;
> +		u16 value;
> +	} init_data[] = {
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
> +	ret = bd9995x_chip_reset(bd);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* Initialize currents/voltages and other parameters */
> +	for (i = 0; i < ARRAY_SIZE(init_data); i++) {
> +		ret = regmap_field_write(bd->rmap_fields[init_data[i].id],
> +					 init_data[i].value);
> +		if (ret) {
> +			dev_err(bd->dev, "failed to initialize charger (%d)\n",
> +				ret);
> +			return ret;
> +		}
> +	}
> +
> +	ret = bd9995x_get_chip_state(bd, &state);
> +	if (ret < 0)
> +		return ret;
> +
> +	mutex_lock(&bd->lock);
> +	bd->state = state;
> +	mutex_unlock(&bd->lock);
> +
> +	return 0;
> +}
> +
> +static enum power_supply_property bd9995x_power_supply_props[] = {
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
> +static const struct power_supply_desc bd9995x_power_supply_desc = {
> +	.name = "bd9995x-charger",
> +	.type = POWER_SUPPLY_TYPE_USB,
> +	.properties = bd9995x_power_supply_props,
> +	.num_properties = ARRAY_SIZE(bd9995x_power_supply_props),
> +	.get_property = bd9995x_power_supply_get_property,
> +};
> +
> +/*
> + * Limit configurations for vbus-input-current and vcc-vacp-input-current
> + * Minimum limit is 0 uA. Max is 511 * 32000 uA = 16352000 uA. This is
> + * configured by writing a register so that each increment in register
> + * value equals to 32000 uA limit increment.
> + *
> + * Eg, value 0x0 is limit 0, value 0x1 is limit 32000, ...
> + * Describe the setting in linear_range table.
> + */
> +static const struct linear_range input_current_limit_ranges[] = {
> +	{
> +		.min = 0,
> +		.step = 32000,
> +		.min_sel = 0x0,
> +		.max_sel = 0x1ff,
> +	},
> +};
> +
> +/* Possible trickle, pre-charging and termination current values */
> +static const struct linear_range charging_current_ranges[] = {
> +	{
> +		.min = 0,
> +		.step = 64000,
> +		.min_sel = 0x0,
> +		.max_sel = 0x10,
> +	}, {
> +		.min = 1024000,
> +		.step = 0,
> +		.min_sel = 0x11,
> +		.max_sel = 0x1f,
> +	},
> +};
> +
> +/*
> + * Fast charging voltage regulation, starting re-charging limit
> + * and battery over voltage protection have same possible values
> + */
> +static const struct linear_range charge_voltage_regulation_ranges[] = {
> +	{
> +		.min = 2560000,
> +		.step = 0,
> +		.min_sel = 0,
> +		.max_sel = 0xA0,
> +	}, {
> +		.min = 2560000,
> +		.step = 16000,
> +		.min_sel = 0xA0,
> +		.max_sel = 0x4B0,
> +	}, {
> +		.min = 19200000,
> +		.step = 0,
> +		.min_sel = 0x4B0,
> +		.max_sel = 0x7FF,
> +	},
> +};
> +
> +/* Possible VSYS voltage regulation values */
> +static const struct linear_range vsys_voltage_regulation_ranges[] = {
> +	{
> +		.min = 2560000,
> +		.step = 0,
> +		.min_sel = 0,
> +		.max_sel = 0x28,
> +	}, {
> +		.min = 2560000,
> +		.step = 64000,
> +		.min_sel = 0x28,
> +		.max_sel = 0x12C,
> +	}, {
> +		.min = 19200000,
> +		.step = 0,
> +		.min_sel = 0x12C,
> +		.max_sel = 0x1FF,
> +	},
> +};
> +
> +/* Possible settings for switching from trickle to pre-charging limits */
> +static const struct linear_range trickle_to_pre_threshold_ranges[] = {
> +	{
> +		.min = 2048000,
> +		.step = 0,
> +		.min_sel = 0,
> +		.max_sel = 0x20,
> +	}, {
> +		.min = 2048000,
> +		.step = 64000,
> +		.min_sel = 0x20,
> +		.max_sel = 0x12C,
> +	}, {
> +		.min = 19200000,
> +		.step = 0,
> +		.min_sel = 0x12C,
> +		.max_sel = 0x1FF
> +	}
> +};
> +
> +/* Possible current values for fast-charging constant current phase */
> +static const struct linear_range fast_charge_current_ranges[] = {
> +	{
> +		.min = 0,
> +		.step = 64000,
> +		.min_sel = 0,
> +		.max_sel = 0xFF,
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
> +	struct bd9995x_init_data *init = &bd->init_data;
> +	struct battery_init battery_inits[] = {
> +		{
> +			.name = "trickle-charging current",
> +			.info_data = &info.tricklecharge_current_ua,
> +			.range = &charging_current_ranges[0],
> +			.ranges = 2,
> +			.data = &init->itrich_set,
> +		}, {
> +			.name = "pre-charging current",
> +			.info_data = &info.precharge_current_ua,
> +			.range = &charging_current_ranges[0],
> +			.ranges = 2,
> +			.data = &init->iprech_set,
> +		}, {
> +			.name = "pre-to-trickle charge voltage threshold",
> +			.info_data = &info.precharge_voltage_max_uv,
> +			.range = &trickle_to_pre_threshold_ranges[0],
> +			.ranges = 2,
> +			.data = &init->vprechg_th_set,
> +		}, {
> +			.name = "charging termination current",
> +			.info_data = &info.charge_term_current_ua,
> +			.range = &charging_current_ranges[0],
> +			.ranges = 2,
> +			.data = &init->iterm_set,
> +		}, {
> +			.name = "charging re-start voltage",
> +			.info_data = &info.charge_restart_voltage_uv,
> +			.range = &charge_voltage_regulation_ranges[0],
> +			.ranges = 2,
> +			.data = &init->vrechg_set,
> +		}, {
> +			.name = "battery overvoltage limit",
> +			.info_data = &info.overvoltage_limit_uv,
> +			.range = &charge_voltage_regulation_ranges[0],
> +			.ranges = 2,
> +			.data = &init->vbatovp_set,
> +		}, {
> +			.name = "fast-charging max current",
> +			.info_data = &info.constant_charge_current_max_ua,
> +			.range = &fast_charge_current_ranges[0],
> +			.ranges = 1,
> +			.data = &init->ichg_set,
> +		}, {
> +			.name = "fast-charging voltage",
> +			.info_data = &info.constant_charge_voltage_max_uv,
> +			.range = &charge_voltage_regulation_ranges[0],
> +			.ranges = 2,
> +			.data = &init->vfastchg_reg_set1,
> +		},
> +	};
> +	struct dt_init props[] = {
> +		{
> +			.prop = "rohm,vsys-regulation-microvolt",
> +			.range = &vsys_voltage_regulation_ranges[0],
> +			.ranges = 2,
> +			.data = &init->vsysreg_set,
> +		}, {
> +			.prop = "rohm,vbus-input-current-limit-microamp",
> +			.range = &input_current_limit_ranges[0],
> +			.ranges = 1,
> +			.data = &init->ibus_lim_set,
> +		}, {
> +			.prop = "rohm,vcc-input-current-limit-microamp",
> +			.range = &input_current_limit_ranges[0],
> +			.ranges = 1,
> +			.data = &init->icc_lim_set,
> +		},
> +	};
> +
> +	/*
> +	 * The power_supply_get_battery_info() does not support getting values
> +	 * from ACPI. Let's fix it if ACPI is required here.
> +	 */
> +	ret = power_supply_get_battery_info(bd->charger, &info);
> +	if (ret < 0)
> +		return ret;
> +
> +	for (i = 0; i < ARRAY_SIZE(battery_inits); i++) {
> +		int val = *battery_inits[i].info_data;
> +		const struct linear_range *range = battery_inits[i].range;
> +		int ranges = battery_inits[i].ranges;
> +
> +		if (val == -EINVAL)
> +			continue;
> +
> +		ret = linear_range_get_selector_low_array(range, ranges, val,
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
> +		*(battery_inits[i].data) = regval;
> +	}
> +
> +	power_supply_put_battery_info(bd->charger, &info);
> +
> +	for (i = 0; i < ARRAY_SIZE(props); i++) {
> +		ret = device_property_read_u32(bd->dev, props[i].prop,
> +					       &property);
> +		if (ret < 0) {
> +			dev_err(bd->dev, "failed to read %s", props[i].prop);
> +
> +			return ret;
> +		}
> +
> +		ret = linear_range_get_selector_low_array(props[i].range,
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
> +		*(props[i].data) = regval;
> +	}
> +
> +	return 0;
> +}
> +
> +static int bd9995x_probe(struct i2c_client *client)
> +{
> +	struct device *dev = &client->dev;
> +	struct bd9995x_device *bd;
> +	struct power_supply_config psy_cfg = {};
> +	int ret;
> +	int i;
> +
> +	bd = devm_kzalloc(dev, sizeof(*bd), GFP_KERNEL);
> +	if (!bd)
> +		return -ENOMEM;
> +
> +	bd->client = client;
> +	bd->dev = dev;
> +	psy_cfg.drv_data = bd;
> +	psy_cfg.of_node = dev->of_node;
> +
> +	mutex_init(&bd->lock);
> +
> +	bd->rmap = devm_regmap_init_i2c(client, &bd9995x_regmap_config);
> +	if (IS_ERR(bd->rmap)) {
> +		dev_err(dev, "Failed to setup register access via i2c\n");
> +		return PTR_ERR(bd->rmap);
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(bd9995x_reg_fields); i++) {
> +		const struct reg_field *reg_fields = bd9995x_reg_fields;
> +
> +		bd->rmap_fields[i] = devm_regmap_field_alloc(dev, bd->rmap,
> +							     reg_fields[i]);
> +		if (IS_ERR(bd->rmap_fields[i])) {
> +			dev_err(dev, "cannot allocate regmap field\n");
> +			return PTR_ERR(bd->rmap_fields[i]);
> +		}
> +	}
> +
> +	i2c_set_clientdata(client, bd);
> +
> +	ret = regmap_field_read(bd->rmap_fields[F_CHIP_ID], &bd->chip_id);
> +	if (ret) {
> +		dev_err(dev, "Cannot read chip ID.\n");
> +		return ret;
> +	}
> +
> +	if (bd->chip_id != BD99954_ID) {
> +		dev_err(dev, "Chip with ID=0x%x, not supported!\n",
> +			bd->chip_id);
> +		return -ENODEV;
> +	}
> +
> +	ret = regmap_field_read(bd->rmap_fields[F_CHIP_REV], &bd->chip_rev);
> +	if (ret) {
> +		dev_err(dev, "Cannot read revision.\n");
> +		return ret;
> +	}
> +
> +	dev_info(bd->dev, "Found DB99954 chip rev %d\n", bd->chip_rev);
> +
> +	/*
> +	 * We need to init the psy before we can call
> +	 * power_supply_get_battery_info() for it
> +	 */
> +	bd->charger = devm_power_supply_register(bd->dev,
> +						 &bd9995x_power_supply_desc,
> +						&psy_cfg);
> +	if (IS_ERR(bd->charger)) {
> +		dev_err(dev, "Failed to register power supply\n");
> +		return PTR_ERR(bd->charger);
> +	}
> +
> +	ret = bd9995x_fw_probe(bd);
> +	if (ret < 0) {
> +		dev_err(dev, "Cannot read device properties.\n");
> +		return ret;
> +	}
> +
> +	ret = bd9995x_hw_init(bd);
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
> +	struct bd9995x_device *bd = i2c_get_clientdata(client);
> +
> +	disable_irq(client->irq);
> +
> +	/*
> +	 * Reset all registers to default values. This should also disable
> +	 * CHG_EN bit. If this is not required we can get rid of the remove.
> +	 */
> +	ret = bd9995x_chip_reset(bd);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id bd9995x_of_match[] = {
> +	{ .compatible = "rohm,bd99954", },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, bd9995x_of_match);
> +
> +static struct i2c_driver bd9995x_driver = {
> +	.driver = {
> +		.name = "bd9995x-charger",
> +		.of_match_table = bd9995x_of_match,
> +	},
> +	.probe_new = bd9995x_probe,
> +	.remove = bd9995x_remove,
> +};
> +module_i2c_driver(bd9995x_driver);
> +
> +MODULE_AUTHOR("Laine Markus <markus.laine@fi.rohmeurope.com>");
> +MODULE_DESCRIPTION("ROHM BD99954 charger driver");
> +MODULE_LICENSE("GPL");
> diff --git a/include/linux/power/bd99954-charger.h b/include/linux/power/bd99954-charger.h
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
> +static const struct reg_field bd9995x_reg_fields[] = {
> +	    [F_PREV_CHGSTM_STATE] = REG_FIELD(CHGSTM_STATUS, 8, 14),
> +	    [F_CHGSTM_STATE] = REG_FIELD(CHGSTM_STATUS, 0, 6),
> +	    [F_VBAT_VSYS_STATUS] = REG_FIELD(VBAT_VSYS_STATUS, 0, 15),
> +	    [F_VBUS_VCC_STATUS] = REG_FIELD(VBUS_VCC_STATUS, 0, 12),
> +	    [F_BATTEMP] = REG_FIELD(CHGOP_STATUS, 8, 10),
> +	    [F_VRECHG_DET] = REG_FIELD(CHGOP_STATUS, 6, 6),
> +	    [F_RBOOST_UV] = REG_FIELD(CHGOP_STATUS, 1, 1),
> +	    [F_RBOOSTS] = REG_FIELD(CHGOP_STATUS, 0, 0),
> +	    [F_THERMWDT_VAL] = REG_FIELD(WDT_STATUS, 8, 15),
> +	    [F_CHGWDT_VAL] = REG_FIELD(WDT_STATUS, 0, 7),
> +	    [F_CUR_ILIM_VAL] = REG_FIELD(CUR_ILIM_VAL, 0, 13),
> +	    [F_SEL_ILIM_VAL] = REG_FIELD(SEL_ILIM_VAL, 0, 13),
> +	    [F_IBUS_LIM_SET] = REG_FIELD(IBUS_LIM_SET, 5, 13),
> +	    [F_ICC_LIM_SET] = REG_FIELD(ICC_LIM_SET, 5, 13),
> +	    [F_IOTG_LIM_SET] = REG_FIELD(IOTG_LIM_SET, 5, 13),
> +	    [F_OTG_BOTH_EN] = REG_FIELD(VIN_CTRL_SET, 15, 15),
> +	    [F_VRBOOST_TRIG] = REG_FIELD(VIN_CTRL_SET, 14, 14),
> +	    [F_VRBOOST_EN] = REG_FIELD(VIN_CTRL_SET, 12, 13),
> +	    [F_PP_BOTH_THRU] = REG_FIELD(VIN_CTRL_SET, 11, 11),
> +	    [F_VIN_ORD] = REG_FIELD(VIN_CTRL_SET, 7, 7),
> +	    [F_VBUS_EN] = REG_FIELD(VIN_CTRL_SET, 6, 6),
> +	    [F_VCC_EN] = REG_FIELD(VIN_CTRL_SET, 5, 5),
> +	    [F_VSYS_PRIORITY] = REG_FIELD(VIN_CTRL_SET, 4, 4),
> +	    [F_PPC_SUB_CAP] = REG_FIELD(VIN_CTRL_SET, 2, 3),
> +	    [F_PPC_CAP] = REG_FIELD(VIN_CTRL_SET, 0, 1),
> +	    [F_DCP_2500_SEL] = REG_FIELD(CHGOP_SET1, 15, 15),
> +	    [F_SDP_500_SEL] = REG_FIELD(CHGOP_SET1, 14, 14),
> +	    [F_ILIM_AUTO_DISEN] = REG_FIELD(CHGOP_SET1, 13, 13),
> +	    [F_VCC_BC_DISEN] = REG_FIELD(CHGOP_SET1, 11, 11),
> +	    [F_VBUS_BC_DISEN] = REG_FIELD(CHGOP_SET1, 10, 10),
> +	    [F_SDP_CHG_TRIG_EN] = REG_FIELD(CHGOP_SET1, 9, 9),
> +	    [F_SDP_CHG_TRIG] = REG_FIELD(CHGOP_SET1, 8, 8),
> +	    [F_AUTO_TOF] = REG_FIELD(CHGOP_SET1, 6, 6),
> +	    [F_AUTO_FST] = REG_FIELD(CHGOP_SET1, 5, 5),
> +	    [F_AUTO_RECH] = REG_FIELD(CHGOP_SET1, 3, 3),
> +	    [F_ILIM_RESET_EN] = REG_FIELD(CHGOP_SET2, 14, 14),
> +	    [F_DCDC_1MS_SEL] = REG_FIELD(CHGOP_SET2, 12, 13),
> +	    [F_SEL_ILIM_DIV] = REG_FIELD(CHGOP_SET2, 10, 10),
> +	    [F_BATT_LEARN] = REG_FIELD(CHGOP_SET2, 8, 8),
> +	    [F_CHG_EN] = REG_FIELD(CHGOP_SET2, 7, 7),
> +	    [F_USB_SUS] = REG_FIELD(CHGOP_SET2, 6, 6),
> +	    [F_CHOP_SS_INIT] = REG_FIELD(CHGOP_SET2, 5, 5),
> +	    [F_CHOP_ALL_INIT] = REG_FIELD(CHGOP_SET2, 4, 4),
> +	    [F_DCDC_CLK_SEL] = REG_FIELD(CHGOP_SET2, 2, 3),
> +	    [F_CHOP_SS] = REG_FIELD(CHGOP_SET2, 1, 1),
> +	    [F_CHOP_ALL] = REG_FIELD(CHGOP_SET2, 0, 0),
> +	    [F_VBUSCLPS_TH_SET] = REG_FIELD(VBUSCLPS_TH_SET, 7, 14),
> +	    [F_VCCCLPS_TH_SET] = REG_FIELD(VCCCLPS_TH_SET, 7, 14),
> +	    [F_WDT_FST] = REG_FIELD(CHGWDT_SET, 8, 15),
> +	    [F_WDT_PRE] = REG_FIELD(CHGWDT_SET, 0, 7),
> +	    [F_WDT_IBAT_SHORT] = REG_FIELD(BATTWDT_SET, 8, 15),
> +	    [F_WDT_THERM] = REG_FIELD(BATTWDT_SET, 0, 7),
> +	    [F_VSYSREG_SET] = REG_FIELD(VSYSREG_SET, 6, 14),
> +	    [F_VSYSVAL_THH_SET] = REG_FIELD(VSYSVAL_THH_SET, 6, 14),
> +	    [F_VSYSVAL_THL_SET] = REG_FIELD(VSYSVAL_THL_SET, 6, 14),
> +	    [F_ITRICH_SET] = REG_FIELD(ITRICH_SET, 6, 10),
> +	    [F_IPRECH_SET] = REG_FIELD(IPRECH_SET, 6, 10),
> +	    [F_ICHG_SET] = REG_FIELD(ICHG_SET, 6, 13),
> +	    [F_ITERM_SET] = REG_FIELD(ITERM_SET, 6, 10),
> +	    [F_VPRECHG_TH_SET] = REG_FIELD(VPRECHG_TH_SET, 6, 14),
> +	    [F_VRBOOST_SET] = REG_FIELD(VRBOOST_SET, 6, 14),
> +	    [F_VFASTCHG_REG_SET1] = REG_FIELD(VFASTCHG_REG_SET1, 4, 14),
> +	    [F_VFASTCHG_REG_SET2] = REG_FIELD(VFASTCHG_REG_SET2, 4, 14),
> +	    [F_VFASTCHG_REG_SET3] = REG_FIELD(VFASTCHG_REG_SET3, 4, 14),
> +	    [F_VRECHG_SET] = REG_FIELD(VRECHG_SET, 4, 14),
> +	    [F_VBATOVP_SET] = REG_FIELD(VBATOVP_SET, 4, 14),
> +	    [F_IBATM_SHORT_SET] = REG_FIELD(IBATSHORT_SET, 0, 14),
> +	    [F_PROCHOT_DG_SET] = REG_FIELD(PROCHOT_CTRL_SET, 14, 15),
> +	    [F_PROCHOT_ICRIT_DG_SET] = REG_FIELD(PROCHOT_CTRL_SET, 10, 11),
> +	    [F_PROCHOT_IDCHG_DG_SET] = REG_FIELD(PROCHOT_CTRL_SET, 8, 9),
> +	    [F_PROCHOT_EN] = REG_FIELD(PROCHOT_CTRL_SET, 0, 4),
> +	    [F_PROCHOT_ICRIT_SET] = REG_FIELD(PROCHOT_ICRIT_SET, 0, 14),
> +	    [F_PROCHOT_INORM_SET] = REG_FIELD(PROCHOT_INORM_SET, 0, 14),
> +	    [F_PROCHOT_IDCHG_SET] = REG_FIELD(PROCHOT_IDCHG_SET, 0, 14),
> +	    [F_PROCHOT_VSYS_SET] = REG_FIELD(PROCHOT_VSYS_SET, 0, 14),
> +	    [F_IMON_INSEL] = REG_FIELD(PMON_IOUT_CTRL_SET, 9, 9),
> +	    [F_PMON_INSEL] = REG_FIELD(PMON_IOUT_CTRL_SET, 8, 8),
> +	    [F_IOUT_OUT_EN] = REG_FIELD(PMON_IOUT_CTRL_SET, 7, 7),
> +	    [F_IOUT_SOURCE_SEL] = REG_FIELD(PMON_IOUT_CTRL_SET, 6, 6),
> +	    [F_IOUT_GAIN_SET] = REG_FIELD(PMON_IOUT_CTRL_SET, 4, 5),
> +	    [F_PMON_OUT_EN] = REG_FIELD(PMON_IOUT_CTRL_SET, 3, 3),
> +	    [F_PMON_GAIN_SET] = REG_FIELD(PMON_IOUT_CTRL_SET, 0, 2),
> +	    [F_PMON_DACIN_VAL] = REG_FIELD(PMON_DACIN_VAL, 0, 9),
> +	    [F_IOUT_DACIN_VAL] = REG_FIELD(IOUT_DACIN_VAL, 0, 11),
> +	    [F_VCC_BCSRETRY] = REG_FIELD(VCC_UCD_SET, 12, 12),
> +	    [F_VCC_ADCRTRY] = REG_FIELD(VCC_UCD_SET, 8, 8),
> +	    [F_VCC_USBDETEN] = REG_FIELD(VCC_UCD_SET, 7, 7),
> +	    [F_VCC_IDRDETEN] = REG_FIELD(VCC_UCD_SET, 6, 6),
> +	    [F_VCC_ENUMRDY] = REG_FIELD(VCC_UCD_SET, 5, 5),
> +	    [F_VCC_ADCPOLEN] = REG_FIELD(VCC_UCD_SET, 4, 4),
> +	    [F_VCC_DCDMODE] = REG_FIELD(VCC_UCD_SET, 3, 3),
> +	    [F_VCC_USB_SW_EN] = REG_FIELD(VCC_UCD_SET, 1, 1),
> +	    [F_VCC_USB_SW] = REG_FIELD(VCC_UCD_SET, 0, 0),
> +	    [F_VCC_DCDFAIL] = REG_FIELD(VCC_UCD_STATUS, 15, 15),
> +	    [F_VCC_CHGPORT] = REG_FIELD(VCC_UCD_STATUS, 12, 13),
> +	    [F_VCC_PUPDET] = REG_FIELD(VCC_UCD_STATUS, 11, 11),
> +	    [F_VCC_VBUS_VLD] = REG_FIELD(VCC_UCD_STATUS, 7, 7),
> +	    [F_VCC_CHGDET] = REG_FIELD(VCC_UCD_STATUS, 6, 6),
> +	    [F_VCC_OTGDET] = REG_FIELD(VCC_UCD_STATUS, 3, 3),
> +	    [F_VCC_VBINOP] = REG_FIELD(VCC_IDD_STATUS, 6, 6),
> +	    [F_VCC_EXTID] = REG_FIELD(VCC_IDD_STATUS, 5, 5),
> +	    [F_VCC_IDRDET] = REG_FIELD(VCC_IDD_STATUS, 4, 4),
> +	    [F_VCC_INDO] = REG_FIELD(VCC_IDD_STATUS, 0, 3),
> +	    [F_VCC_UCDSWEN] = REG_FIELD(VCC_UCD_FCTRL_SET, 10, 10),
> +	    [F_VCC_RREF_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 9, 9),
> +	    [F_VCC_DPPU_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 8, 8),
> +	    [F_VCC_DPREF_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 7, 7),
> +	    [F_VCC_DMREF_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 6, 6),
> +	    [F_VCC_DPDET_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 5, 5),
> +	    [F_VCC_DMDET_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 4, 4),
> +	    [F_VCC_DPSINK_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 3, 3),
> +	    [F_VCC_DMSINK_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 2, 2),
> +	    [F_VCC_DP_BUFF_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 1, 1),
> +	    [F_VCC_DM_BUFF_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 0, 0),
> +	    [F_VCC_EXTCLKENBL] = REG_FIELD(VCC_UCD_FCTRL_EN, 15, 15),
> +	    [F_VCC_PLSTESTEN] = REG_FIELD(VCC_UCD_FCTRL_EN, 14, 14),
> +	    [F_VCC_UCDSWEN_TSTENB] = REG_FIELD(VCC_UCD_FCTRL_EN, 10, 10),
> +	    [F_VCC_RREF_EN_TSTENB] = REG_FIELD(VCC_UCD_FCTRL_EN, 9, 9),
> +	    [F_VCC_DPPU_EN_TSTENB] = REG_FIELD(VCC_UCD_FCTRL_EN, 8, 8),
> +	    [F_VCC_DPREF_EN_TSTENB] = REG_FIELD(VCC_UCD_FCTRL_EN, 7, 7),
> +	    [F_VCC_DMREF_EN_TSTENB] = REG_FIELD(VCC_UCD_FCTRL_EN, 6, 6),
> +	    [F_VCC_DPDET_EN_TSTENB] = REG_FIELD(VCC_UCD_FCTRL_EN, 5, 5),
> +	    [F_VCC_DMDET_EN_TSTENB] = REG_FIELD(VCC_UCD_FCTRL_EN, 4, 4),
> +	    [F_VCC_DPSINK_EN_TSTENB] = REG_FIELD(VCC_UCD_FCTRL_EN, 3, 3),
> +	    [F_VCC_DMSINK_EN_TSTENB] = REG_FIELD(VCC_UCD_FCTRL_EN, 2, 2),
> +	    [F_VCC_DP_BUFF_EN_TSTENB] = REG_FIELD(VCC_UCD_FCTRL_EN, 1, 1),
> +	    [F_VCC_DM_BUFF_EN_TSTENB] = REG_FIELD(VCC_UCD_FCTRL_EN, 0, 0),
> +
> +	    [F_VBUS_BCSRETRY] = REG_FIELD(VBUS_UCD_SET, 12, 12),
> +	    [F_VBUS_ADCRTRY] = REG_FIELD(VBUS_UCD_SET, 8, 8),
> +	    [F_VBUS_USBDETEN] = REG_FIELD(VBUS_UCD_SET, 7, 7),
> +	    [F_VBUS_IDRDETEN] = REG_FIELD(VBUS_UCD_SET, 6, 6),
> +	    [F_VBUS_ENUMRDY] = REG_FIELD(VBUS_UCD_SET, 5, 5),
> +	    [F_VBUS_ADCPOLEN] = REG_FIELD(VBUS_UCD_SET, 4, 4),
> +	    [F_VBUS_DCDMODE] = REG_FIELD(VBUS_UCD_SET, 3, 3),
> +	    [F_VBUS_USB_SW_EN] = REG_FIELD(VBUS_UCD_SET, 1, 1),
> +	    [F_VBUS_USB_SW] = REG_FIELD(VBUS_UCD_SET, 0, 0),
> +	    [F_VBUS_DCDFAIL] = REG_FIELD(VBUS_UCD_STATUS, 15, 15),
> +	    [F_VBUS_CHGPORT] = REG_FIELD(VBUS_UCD_STATUS, 12, 13),
> +	    [F_VBUS_PUPDET] = REG_FIELD(VBUS_UCD_STATUS, 11, 11),
> +	    [F_VBUS_VBUS_VLD] = REG_FIELD(VBUS_UCD_STATUS, 7, 7),
> +	    [F_VBUS_CHGDET] = REG_FIELD(VBUS_UCD_STATUS, 6, 6),
> +	    [F_VBUS_OTGDET] = REG_FIELD(VBUS_UCD_STATUS, 3, 3),
> +	    [F_VBUS_VBINOP] = REG_FIELD(VBUS_IDD_STATUS, 6, 6),
> +	    [F_VBUS_EXTID] = REG_FIELD(VBUS_IDD_STATUS, 5, 5),
> +	    [F_VBUS_IDRDET] = REG_FIELD(VBUS_IDD_STATUS, 4, 4),
> +	    [F_VBUS_INDO] = REG_FIELD(VBUS_IDD_STATUS, 0, 3),
> +	    [F_VBUS_UCDSWEN] = REG_FIELD(VCC_UCD_FCTRL_SET, 10, 10),
> +	    [F_VBUS_RREF_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 9, 9),
> +	    [F_VBUS_DPPU_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 8, 8),
> +	    [F_VBUS_DPREF_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 7, 7),
> +	    [F_VBUS_DMREF_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 6, 6),
> +	    [F_VBUS_DPDET_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 5, 5),
> +	    [F_VBUS_DMDET_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 4, 4),
> +	    [F_VBUS_DPSINK_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 3, 3),
> +	    [F_VBUS_DMSINK_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 2, 2),
> +	    [F_VBUS_DP_BUFF_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 1, 1),
> +	    [F_VBUS_DM_BUFF_EN] = REG_FIELD(VCC_UCD_FCTRL_SET, 0, 0),
> +
> +	    [F_VBUS_EXTCLKENBL] = REG_FIELD(VBUS_UCD_FCTRL_EN, 15, 15),
> +	    [F_VBUS_PLSTESTEN] = REG_FIELD(VBUS_UCD_FCTRL_EN, 14, 14),
> +	    [F_VBUS_UCDSWEN_TSTENB] = REG_FIELD(VBUS_UCD_FCTRL_EN, 10, 10),
> +	    [F_VBUS_RREF_EN_TSTENB] = REG_FIELD(VBUS_UCD_FCTRL_EN, 9, 9),
> +	    [F_VBUS_DPPU_EN_TSTENB] = REG_FIELD(VBUS_UCD_FCTRL_EN, 8, 8),
> +	    [F_VBUS_DPREF_EN_TSTENB] = REG_FIELD(VBUS_UCD_FCTRL_EN, 7, 7),
> +	    [F_VBUS_DMREF_EN_TSTENB] = REG_FIELD(VBUS_UCD_FCTRL_EN, 6, 6),
> +	    [F_VBUS_DPDET_EN_TSTENB] = REG_FIELD(VBUS_UCD_FCTRL_EN, 5, 5),
> +	    [F_VBUS_DMDET_EN_TSTENB] = REG_FIELD(VBUS_UCD_FCTRL_EN, 4, 4),
> +	    [F_VBUS_DPSINK_EN_TSTENB] = REG_FIELD(VBUS_UCD_FCTRL_EN, 3, 3),
> +	    [F_VBUS_DMSINK_EN_TSTENB] = REG_FIELD(VBUS_UCD_FCTRL_EN, 2, 2),
> +	    [F_VBUS_DP_BUFF_EN_TSTENB] = REG_FIELD(VBUS_UCD_FCTRL_EN, 1, 1),
> +	    [F_VBUS_DM_BUFF_EN_TSTENB] = REG_FIELD(VBUS_UCD_FCTRL_EN, 0, 0),
> +
> +	    [F_CHIP_ID] = REG_FIELD(CHIP_ID, 0, 15),
> +	    [F_CHIP_REV] = REG_FIELD(CHIP_REV, 0, 15),
> +	    [F_ONE_CELL_MODE] = REG_FIELD(IC_SET1, 11, 11),
> +	    [F_cell] = REG_FIELD(IC_SET1, 1, 1),
> +	    [F_VACP_AUTO_DISCHG] = REG_FIELD(IC_SET1, 9, 9),
> +	    [F_VACP_LOAD] = REG_FIELD(IC_SET1, 8, 8),
> +	    [F_ACOK_POL] = REG_FIELD(IC_SET1, 1, 1),
> +	    [F_ACOK_DISEN] = REG_FIELD(IC_SET1, 0, 0),
> +	    [F_DEBUG_SET1] = REG_FIELD(IC_SET2, 4, 8),
> +	    [F_DEBUG_SET0] = REG_FIELD(IC_SET2, 0, 0),
> +	    [F_MONRST_STATE] = REG_FIELD(SYSTEM_STATUS, 6, 6),
> +	    [F_ALMRST_STATE] = REG_FIELD(SYSTEM_STATUS, 5, 5),
> +	    [F_CHGRST_STATE] = REG_FIELD(SYSTEM_STATUS, 4, 4),
> +	    [F_OTPLD_STATE] = REG_FIELD(SYSTEM_STATUS, 1, 1),
> +	    [F_ALLRST_STATE] = REG_FIELD(SYSTEM_STATUS, 0, 0),
> +	    [F_PROTECT_SET] = REG_FIELD(PROTECT_SET, 0, 15),
> +	    [F_MAP_SET] = REG_FIELD(MAP_SET, 0, 15),
> +	    [F_ADCINTERVAL] = REG_FIELD(VM_CTRL_SET, 14, 15),
> +	    [F_ADCMOD] = REG_FIELD(VM_CTRL_SET, 12, 13),
> +	    [F_ADCTMOD] = REG_FIELD(VM_CTRL_SET, 10, 11),
> +	    [F_EXTIADPEN] = REG_FIELD(VM_CTRL_SET, 9, 9),
> +	    [F_VSYSENB] = REG_FIELD(VM_CTRL_SET, 8, 8),
> +	    [F_VCCENB] = REG_FIELD(VM_CTRL_SET, 7, 7),
> +	    [F_VBUSENB] = REG_FIELD(VM_CTRL_SET, 6, 6),
> +	    [F_VACPENB] = REG_FIELD(VM_CTRL_SET, 5, 5),
> +	    [F_IACPENB] = REG_FIELD(VM_CTRL_SET, 4, 4),
> +	    [F_THERMENB] = REG_FIELD(VM_CTRL_SET, 3, 3),
> +	    [F_VBATENB] = REG_FIELD(VM_CTRL_SET, 2, 2),
> +	    [F_IBATMENB] = REG_FIELD(VM_CTRL_SET, 1, 1),
> +	    [F_IBATPENB] = REG_FIELD(VM_CTRL_SET, 0, 0),
> +	    [F_TMPTHR1B] = REG_FIELD(THERM_WINDOW_SET1, 8, 15),
> +	    [F_TMPTHR1A] = REG_FIELD(THERM_WINDOW_SET1, 0, 7),
> +	    [F_TMPTHR2B] = REG_FIELD(THERM_WINDOW_SET2, 8, 15),
> +	    [F_TMPTHR2A] = REG_FIELD(THERM_WINDOW_SET2, 0, 7),
> +	    [F_TMPTHR3B] = REG_FIELD(THERM_WINDOW_SET3, 8, 15),
> +	    [F_TMPTHR3A] = REG_FIELD(THERM_WINDOW_SET3, 0, 7),
> +	    [F_TMPTHR4B] = REG_FIELD(THERM_WINDOW_SET4, 8, 15),
> +	    [F_TMPTHR4A] = REG_FIELD(THERM_WINDOW_SET4, 0, 7),
> +	    [F_TMPTHR5B] = REG_FIELD(THERM_WINDOW_SET5, 8, 15),
> +	    [F_TMPTHR5A] = REG_FIELD(THERM_WINDOW_SET5, 0, 7),
> +	    [F_IBATP_TH_SET] = REG_FIELD(IBATP_TH_SET, 0, 14),
> +	    [F_IBATM_TH_SET] = REG_FIELD(IBATM_TH_SET, 0, 14),
> +	    [F_VBAT_TH_SET] = REG_FIELD(VBAT_TH_SET, 0, 14),
> +	    [F_THERM_TH_SET] = REG_FIELD(THERM_TH_SET, 0, 7),
> +	    [F_IACP_TH_SET] = REG_FIELD(IACP_TH_SET, 0, 14),
> +	    [F_VACP_TH_SET] = REG_FIELD(VACP_TH_SET, 0, 14),
> +	    [F_VBUS_TH_SET] = REG_FIELD(VBUS_TH_SET, 0, 14),
> +	    [F_VCC_TH_SET] = REG_FIELD(VCC_TH_SET, 0, 14),
> +	    [F_VSYS_TH_SET] = REG_FIELD(VSYS_TH_SET, 0, 14),
> +	    [F_EXTIADP_TH_SET] = REG_FIELD(EXTIADP_TH_SET, 0, 11),
> +	    [F_IBATP_VAL] = REG_FIELD(IBATP_VAL, 0, 14),
> +	    [F_IBATP_AVE_VAL] = REG_FIELD(IBATP_AVE_VAL, 0, 14),
> +	    [F_IBATM_VAL] = REG_FIELD(IBATM_VAL, 0, 14),
> +	    [F_IBATM_AVE_VAL] = REG_FIELD(IBATM_AVE_VAL, 0, 14),
> +	    [F_VBAT_VAL] = REG_FIELD(VBAT_VAL, 0, 14),
> +	    [F_VBAT_AVE_VAL] = REG_FIELD(VBAT_AVE_VAL, 0, 14),
> +	    [F_THERM_VAL] = REG_FIELD(THERM_VAL, 0, 7),
> +	    [F_VTH_VAL] = REG_FIELD(VTH_VAL, 0, 11),
> +	    [F_IACP_VAL] = REG_FIELD(IACP_VAL, 0, 14),
> +	    [F_IACP_AVE_VAL] = REG_FIELD(IACP_AVE_VAL, 0, 14),
> +	    [F_VACP_VAL] = REG_FIELD(VACP_VAL, 0, 14),
> +	    [F_VACP_AVE_VAL] = REG_FIELD(VACP_AVE_VAL, 0, 14),
> +	    [F_VBUS_VAL] = REG_FIELD(VBUS_VAL, 0, 14),
> +	    [F_VBUS_AVE_VAL] = REG_FIELD(VBUS_AVE_VAL, 0, 14),
> +	    [F_VCC_VAL] = REG_FIELD(VCC_VAL, 0, 14),
> +	    [F_VCC_AVE_VAL] = REG_FIELD(VCC_AVE_VAL, 0, 14),
> +	    [F_VSYS_VAL] = REG_FIELD(VSYS_VAL, 0, 14),
> +	    [F_VSYS_AVE_VAL] = REG_FIELD(VSYS_AVE_VAL, 0, 14),
> +	    [F_EXTIADP_VAL] = REG_FIELD(EXTIADP_VAL, 0, 11),
> +	    [F_EXTIADP_AVE_VAL] = REG_FIELD(EXTIADP_AVE_VAL, 0, 11),
> +	    [F_VACPCLPS_TH_SET] = REG_FIELD(VACPCLPS_TH_SET, 7, 14),
> +	    [F_INT7_SET] = REG_FIELD(INT7_SET, 0, 15),
> +	    [F_INT6_SET] = REG_FIELD(INT6_SET, 0, 13),
> +	    [F_INT5_SET] = REG_FIELD(INT5_SET, 0, 13),
> +	    [F_INT4_SET] = REG_FIELD(INT4_SET, 0, 9),
> +	    [F_INT3_SET] = REG_FIELD(INT3_SET, 0, 15),
> +	    [F_INT2_SET] = REG_FIELD(INT2_SET, 0, 15),
> +	    [F_INT1_SET] = REG_FIELD(INT1_SET, 0, 15),
> +	    [F_INT0_SET] = REG_FIELD(INT0_SET, 0, 7),
> +	    [F_VBUS_RBUV_DET] = REG_FIELD(INT1_SET, 15, 15),
> +	    [F_VBUS_RBUV_RES] = REG_FIELD(INT1_SET, 14, 14),
> +	    [F_VBUS_TH_DET] = REG_FIELD(INT1_SET, 9, 9),
> +	    [F_VBUS_TH_RES] = REG_FIELD(INT1_SET, 8, 8),
> +	    [F_VBUS_IIN_MOD] = REG_FIELD(INT1_SET, 6, 6),
> +	    [F_VBUS_OV_DET] = REG_FIELD(INT1_SET, 5, 5),
> +	    [F_VBUS_OV_RES] = REG_FIELD(INT1_SET, 4, 4),
> +	    [F_VBUS_CLPS_DET] = REG_FIELD(INT1_SET, 3, 3),
> +	    [F_VBUS_CLPS] = REG_FIELD(INT1_SET, 2, 2),
> +	    [F_VBUS_DET] = REG_FIELD(INT1_SET, 1, 1),
> +	    [F_VBUS_RES] = REG_FIELD(INT1_SET, 0, 0),
> +	    [F_VCC_RBUV_DET] = REG_FIELD(INT2_SET, 15, 15),
> +	    [F_VCC_RBUV_RES] = REG_FIELD(INT2_SET, 14, 14),
> +	    [F_VCC_TH_DET] = REG_FIELD(INT2_SET, 9, 9),
> +	    [F_VCC_TH_RES] = REG_FIELD(INT2_SET, 8, 8),
> +	    [F_VCC_IIN_MOD] = REG_FIELD(INT2_SET, 6, 6),
> +	    [F_VCC_OVP_DET] = REG_FIELD(INT2_SET, 5, 5),
> +	    [F_VCC_OVP_RES] = REG_FIELD(INT2_SET, 4, 4),
> +	    [F_VCC_CLPS_DET] = REG_FIELD(INT2_SET, 3, 3),
> +	    [F_VCC_CLPS_RES] = REG_FIELD(INT2_SET, 2, 2),
> +	    [F_VCC_DET] = REG_FIELD(INT2_SET, 1, 1),
> +	    [F_VCC_RES] = REG_FIELD(INT2_SET, 0, 0),
> +	    [F_TH_DET] = REG_FIELD(INT3_SET, 15, 15),
> +	    [F_TH_RMV] = REG_FIELD(INT3_SET, 14, 14),
> +	    [F_TMP_OUT_DET] = REG_FIELD(INT3_SET, 11, 11),
> +	    [F_TMP_OUT_RES] = REG_FIELD(INT3_SET, 10, 10),
> +	    [F_VBAT_TH_DET] = REG_FIELD(INT3_SET, 9, 9),
> +	    [F_VBAT_TH_RES] = REG_FIELD(INT3_SET, 8, 8),
> +	    [F_IBAT_SHORT_DET] = REG_FIELD(INT3_SET, 7, 7),
> +	    [F_IBAT_SHORT_RES] = REG_FIELD(INT3_SET, 6, 6),
> +	    [F_VBAT_OV_DET] = REG_FIELD(INT3_SET, 5, 5),
> +	    [F_VBAT_OV_RES] = REG_FIELD(INT3_SET, 4, 4),
> +	    [F_BAT_ASSIST_DET] = REG_FIELD(INT3_SET, 3, 3),
> +	    [F_BAT_ASSIST_RES] = REG_FIELD(INT3_SET, 2, 2),
> +	    [F_VSYS_TH_DET] = REG_FIELD(INT4_SET, 9, 9),
> +	    [F_VSYS_TH_RES] = REG_FIELD(INT4_SET, 8, 8),
> +	    [F_VSYS_OV_DET] = REG_FIELD(INT4_SET, 5, 5),
> +	    [F_VSYS_OV_RES] = REG_FIELD(INT4_SET, 4, 4),
> +	    [F_VSYS_SHT_DET] = REG_FIELD(INT4_SET, 3, 3),
> +	    [F_VSYS_SHT_RES] = REG_FIELD(INT4_SET, 2, 2),
> +	    [F_VSYS_UV_DET] = REG_FIELD(INT4_SET, 1, 1),
> +	    [F_VSYS_UV_RES] = REG_FIELD(INT4_SET, 0, 0),
> +	    [F_OTP_LOAD_DONE] = REG_FIELD(INT5_SET, 13, 13),
> +	    [F_PWR_ON] = REG_FIELD(INT5_SET, 12, 12),
> +	    [F_EXTIADP_TRNS] = REG_FIELD(INT5_SET, 11, 11),
> +	    [F_EXTIADP_TH_DET] = REG_FIELD(INT5_SET, 9, 9),
> +	    [F_EXIADP_TH_RES] = REG_FIELD(INT5_SET, 8, 8),
> +	    [F_BAT_MNT_DET] = REG_FIELD(INT5_SET, 7, 7),
> +	    [F_BAT_MNT_RES] = REG_FIELD(INT5_SET, 6, 6),
> +	    [F_TSD_DET] = REG_FIELD(INT5_SET, 5, 5),
> +	    [F_TSD_RES] = REG_FIELD(INT5_SET, 4, 4),
> +	    [F_CHGWDT_EXP] = REG_FIELD(INT5_SET, 3, 3),
> +	    [F_THERMWDT_EXP] = REG_FIELD(INT5_SET, 2, 2),
> +	    [F_TMP_TRNS] = REG_FIELD(INT5_SET, 1, 1),
> +	    [F_CHG_TRNS] = REG_FIELD(INT5_SET, 0, 0),
> +	    [F_VBUS_UCD_PORT_DET] = REG_FIELD(INT6_SET, 13, 13),
> +	    [F_VBUS_UCD_UCHG_DET] = REG_FIELD(INT6_SET, 12, 12),
> +	    [F_VBUS_UCD_URID_RMV] = REG_FIELD(INT6_SET, 11, 11),
> +	    [F_VBUS_UCD_OTG_DET] = REG_FIELD(INT6_SET, 10, 10),
> +	    [F_VBUS_UCD_URID_MOD] = REG_FIELD(INT6_SET, 8, 8),
> +	    [F_VCC_UCD_PORT_DET] = REG_FIELD(INT6_SET, 5, 5),
> +	    [F_VCC_UCD_UCHG_DET] = REG_FIELD(INT6_SET, 4, 4),
> +	    [F_VCC_UCD_URID_RMV] = REG_FIELD(INT6_SET, 3, 3),
> +	    [F_VCC_UCD_OTG_DET] = REG_FIELD(INT6_SET, 2, 2),
> +	    [F_VCC_UCD_URID_MOD] = REG_FIELD(INT6_SET, 0, 0),
> +	    [F_PROCHOT_DET] = REG_FIELD(INT7_SET, 15, 15),
> +	    [F_PROCHOT_RES] = REG_FIELD(INT7_SET, 14, 14),
> +	    [F_VACP_DET] = REG_FIELD(INT7_SET, 11, 11),
> +	    [F_VACP_RES] = REG_FIELD(INT7_SET, 10, 10),
> +	    [F_VACP_TH_DET] = REG_FIELD(INT7_SET, 9, 9),
> +	    [F_VACP_TH_RES] = REG_FIELD(INT7_SET, 8, 8),
> +	    [F_IACP_TH_DET] = REG_FIELD(INT7_SET, 7, 7),
> +	    [F_IACP_THE_RES] = REG_FIELD(INT7_SET, 6, 6),
> +	    [F_THERM_TH_DET] = REG_FIELD(INT7_SET, 5, 5),
> +	    [F_THERM_TH_RES] = REG_FIELD(INT7_SET, 4, 4),
> +	    [F_IBATM_TH_DET] = REG_FIELD(INT7_SET, 3, 3),
> +	    [F_IBATM_TH_RES] = REG_FIELD(INT7_SET, 2, 2),
> +	    [F_IBATP_TH_DET] = REG_FIELD(INT7_SET, 1, 1),
> +	    [F_IBATP_TH_RES] = REG_FIELD(INT7_SET, 0, 0),
> +	    [F_INT7_STATUS] = REG_FIELD(INT7_STATUS, 0, 15),
> +	    [F_INT6_STATUS] = REG_FIELD(INT6_STATUS, 0, 13),
> +	    [F_INT5_STATUS] = REG_FIELD(INT5_STATUS, 0, 13),
> +	    [F_INT4_STATUS] = REG_FIELD(INT4_STATUS, 0, 9),
> +	    [F_INT3_STATUS] = REG_FIELD(INT3_STATUS, 0, 15),
> +	    [F_INT2_STATUS] = REG_FIELD(INT2_STATUS, 0, 15),
> +	    [F_INT1_STATUS] = REG_FIELD(INT1_STATUS, 0, 15),
> +	    [F_INT0_STATUS] = REG_FIELD(INT0_STATUS, 0, 7),
> +	    [F_ILIM_DECREASE] = REG_FIELD(OTPREG0, 0, 15),
> +	    [F_RESERVE_OTPREG1] = REG_FIELD(OTPREG1, 0, 15),
> +	    [F_POWER_SAVE_MODE] = REG_FIELD(SMBREG, 0, 15),
> +	    [F_DEBUG_MODE_SET] = REG_FIELD(DEBUG_MODE_SET, 0, 15),
> +	    [F_DEBUG0x14] = REG_FIELD(DEBUG0x14, 0, 15),
> +	    [F_DEBUG0x1A] = REG_FIELD(DEBUG0x1A, 0, 15),
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
> -- 
> 2.21.0
> 
> 
> -- 
> Matti Vaittinen, Linux device drivers
> ROHM Semiconductors, Finland SWDC
> Kiviharjunlenkki 1E
> 90220 OULU
> FINLAND
> 
> ~~~ "I don't think so," said Rene Descartes. Just then he vanished ~~~
> Simon says - in Latin please.
> ~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
> Thanks to Simon Glass for the translation =] 

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
