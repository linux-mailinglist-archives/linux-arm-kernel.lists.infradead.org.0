Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A119139F8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 03:40:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VCHNNRyFQTyTn2Z1GjFat7XOnt8P9emlF0yuG5439mw=; b=XDCjrlCT9jWJmZ
	Wqe0cLA8dLcy2cWll1ByO1XeqQnOgUfpdjwFRqzSuunFfg4hChQU7FQpkESzSSpdpCIz+gMHjTkp1
	9isSktQsEQjQWUghp+0zRWQc43y1aQyDJdtis6gER3pRPsWlrrBr9+ZfWTmL1PFdkS8Xa05rehRNv
	VCO7ZJQV9YAx3qkcSxBYKYG5yALzhqXW9Z60SYqmBFeRSuWvLyAXB2+DgHBPgmB1/uGU/k2P9LWFx
	pl7bToCqY2rh+OyKww+1UENssEvb2x+RIpDGtE5CpYl+n2L2OLY1yyDGFsDUkrmWz4KfHWVhaRbnT
	0w33nMDRCYYIcjAC6U7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irC7r-00032h-Pc; Tue, 14 Jan 2020 02:40:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irC7g-0001lR-Vy; Tue, 14 Jan 2020 02:40:08 +0000
X-UUID: b62d6205794b4a479368c145d5e5ef24-20200113
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=s91wsWY3AMojoJAsD/yjj0Y42k7CxEKn0IaToXR7qMA=; 
 b=WGKS7pnz8gLmOBIjrTS6ocVkv9Eb7/k/ecjRDa9Q8DnfuWDo4JXrBs6jPBom6ffAVwkuvWQ6jVyOB3jWKJo81DNugRYqzGbP0Ba+jyJnuUKJOeXjFGitTSb/xUfb53nke0KYAzI/ZZeCspFISUUnFYA23lSPFVYfYOv8heKCPf0=;
X-UUID: b62d6205794b4a479368c145d5e5ef24-20200113
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <wen.su@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1491256476; Mon, 13 Jan 2020 18:39:58 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 Jan 2020 18:40:41 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 Jan 2020 10:39:27 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 Jan 2020 10:40:07 +0800
Message-ID: <1578969594.4495.3.camel@mtkswgap22>
Subject: Re: [PATCH 3/4] regulator: mt6359: Add support for MT6359 regulator
From: Wen Su <Wen.Su@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Brown" <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Date: Tue, 14 Jan 2020 10:39:54 +0800
In-Reply-To: <1571218786-15073-4-git-send-email-Wen.Su@mediatek.com>
References: <1571218786-15073-1-git-send-email-Wen.Su@mediatek.com>
 <1571218786-15073-4-git-send-email-Wen.Su@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_184005_273322_86CE972B 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, wen.su@mediatek.com,
 wsd_upstream <wsd_upstream@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear reviewers, 

	Gentle ping for this patch set.

On Wed, 2019-10-16 at 17:39 +0800, Wen Su wrote:
> From: "wen.su" <wen.su@mediatek.com>
> 
> The MT6359 is a regulator found on boards based on MediaTek MT6779 and
> probably other SoCs. It is a so called pmic and connects as a slave to
> SoC using SPI, wrapped inside the pmic-wrapper.
> 
> Signed-off-by: wen.su <wen.su@mediatek.com>
> ---
>  drivers/regulator/Kconfig                  |   9 +
>  drivers/regulator/Makefile                 |   1 +
>  drivers/regulator/mt6359-regulator.c       | 859 +++++++++++++++++++++++++++++
>  include/linux/regulator/mt6359-regulator.h |  58 ++
>  4 files changed, 927 insertions(+)
>  create mode 100644 drivers/regulator/mt6359-regulator.c
>  create mode 100644 include/linux/regulator/mt6359-regulator.h
> 
> diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
> index b57093d..70844a8 100644
> --- a/drivers/regulator/Kconfig
> +++ b/drivers/regulator/Kconfig
> @@ -618,6 +618,15 @@ config REGULATOR_MT6323
>    This driver supports the control of different power rails of device
>    through regulator interface.
> 
> +config REGULATOR_MT6359
> +tristate "MediaTek MT6359 PMIC"
> +depends on MFD_MT6397
> +help
> +  Say y here to select this option to enable the power regulator of
> +  MediaTek MT6359 PMIC.
> +  This driver supports the control of different power rails of device
> +  through regulator interface.
> +
>  config REGULATOR_MT6380
>  tristate "MediaTek MT6380 PMIC"
>  depends on MTK_PMIC_WRAP
> diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
> index eef73b5..b4a6e23 100644
> --- a/drivers/regulator/Makefile
> +++ b/drivers/regulator/Makefile
> @@ -79,6 +79,7 @@ obj-$(CONFIG_REGULATOR_MC13XXX_CORE) +=  mc13xxx-regulator-core.o
>  obj-$(CONFIG_REGULATOR_MCP16502) += mcp16502.o
>  obj-$(CONFIG_REGULATOR_MT6311) += mt6311-regulator.o
>  obj-$(CONFIG_REGULATOR_MT6323)+= mt6323-regulator.o
> +obj-$(CONFIG_REGULATOR_MT6359)+= mt6359-regulator.o
>  obj-$(CONFIG_REGULATOR_MT6380)+= mt6380-regulator.o
>  obj-$(CONFIG_REGULATOR_MT6397)+= mt6397-regulator.o
>  obj-$(CONFIG_REGULATOR_QCOM_RPM) += qcom_rpm-regulator.o
> diff --git a/drivers/regulator/mt6359-regulator.c b/drivers/regulator/mt6359-regulator.c
> new file mode 100644
> index 0000000..17b66c4
> --- /dev/null
> +++ b/drivers/regulator/mt6359-regulator.c
> @@ -0,0 +1,859 @@
> +// SPDX-License-Identifier: GPL-2.0
> +//
> +// Copyright (c) 2019 MediaTek Inc.
> +
> +#include <linux/platform_device.h>
> +#include <linux/mfd/mt6359/registers.h>
> +#include <linux/mfd/mt6397/core.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/driver.h>
> +#include <linux/regulator/machine.h>
> +#include <linux/regulator/mt6359-regulator.h>
> +#include <linux/regulator/of_regulator.h>
> +
> +#define MT6359_BUCK_MODE_AUTO0
> +#define MT6359_BUCK_MODE_FORCE_PWM1
> +#define MT6359_BUCK_MODE_NORMAL0
> +#define MT6359_BUCK_MODE_LP2
> +
> +/*
> + * MT6359 regulators' information
> + *
> + * @desc: standard fields of regulator description.
> + * @status_reg: for query status of regulators.
> + * @qi: Mask for query enable signal status of regulators.
> + * @modeset_reg: for operating AUTO/PWM mode register.
> + * @modeset_mask: MASK for operating modeset register.
> + * @modeset_shift: SHIFT for operating modeset register.
> + */
> +struct mt6359_regulator_info {
> +struct regulator_desc desc;
> +u32 status_reg;
> +u32 qi;
> +const u32 *index_table;
> +unsigned int n_table;
> +u32 vsel_shift;
> +u32 da_vsel_reg;
> +u32 da_vsel_mask;
> +u32 da_vsel_shift;
> +u32 modeset_reg;
> +u32 modeset_mask;
> +u32 modeset_shift;
> +u32 lp_mode_reg;
> +u32 lp_mode_mask;
> +u32 lp_mode_shift;
> +};
> +
> +#define MT6359_BUCK(match, _name, min, max, step, min_sel,\
> +volt_ranges, _enable_reg, _status_reg,\
> +_da_vsel_reg, _da_vsel_mask, _da_vsel_shift,\
> +_vsel_reg, _vsel_mask,\
> +_lp_mode_reg, _lp_mode_shift,\
> +_modeset_reg, _modeset_shift)\
> +[MT6359_ID_##_name] = {\
> +.desc = {\
> +.name = #_name,\
> +.of_match = of_match_ptr(match),\
> +.ops = &mt6359_volt_range_ops,\
> +.type = REGULATOR_VOLTAGE,\
> +.id = MT6359_ID_##_name,\
> +.owner = THIS_MODULE,\
> +.uV_step = (step),\
> +.linear_min_sel = (min_sel),\
> +.n_voltages = ((max) - (min)) / (step) + 1,\
> +.min_uV = (min),\
> +.linear_ranges = volt_ranges,\
> +.n_linear_ranges = ARRAY_SIZE(volt_ranges),\
> +.vsel_reg = _vsel_reg,\
> +.vsel_mask = _vsel_mask,\
> +.enable_reg = _enable_reg,\
> +.enable_mask = BIT(0),\
> +.of_map_mode = mt6359_map_mode,\
> +},\
> +.da_vsel_reg = _da_vsel_reg,\
> +.da_vsel_mask = _da_vsel_mask,\
> +.da_vsel_shift = _da_vsel_shift,\
> +.status_reg = _status_reg,\
> +.qi = BIT(0),\
> +.lp_mode_reg = _lp_mode_reg,\
> +.lp_mode_mask = BIT(_lp_mode_shift),\
> +.lp_mode_shift = _lp_mode_shift,\
> +.modeset_reg = _modeset_reg,\
> +.modeset_mask = BIT(_modeset_shift),\
> +.modeset_shift = _modeset_shift\
> +}
> +
> +#define MT6359_LDO_LINEAR(match, _name, min, max, step, min_sel,\
> +volt_ranges, _enable_reg, _status_reg,\
> +_da_vsel_reg, _da_vsel_mask, _da_vsel_shift,\
> +_vsel_reg, _vsel_mask)\
> +[MT6359_ID_##_name] = {\
> +.desc = {\
> +.name = #_name,\
> +.of_match = of_match_ptr(match),\
> +.ops = &mt6359_volt_range_ops,\
> +.type = REGULATOR_VOLTAGE,\
> +.id = MT6359_ID_##_name,\
> +.owner = THIS_MODULE,\
> +.uV_step = (step),\
> +.linear_min_sel = (min_sel),\
> +.n_voltages = ((max) - (min)) / (step) + 1,\
> +.min_uV = (min),\
> +.linear_ranges = volt_ranges,\
> +.n_linear_ranges = ARRAY_SIZE(volt_ranges),\
> +.vsel_reg = _vsel_reg,\
> +.vsel_mask = _vsel_mask,\
> +.enable_reg = _enable_reg,\
> +.enable_mask = BIT(0),\
> +},\
> +.da_vsel_reg = _da_vsel_reg,\
> +.da_vsel_mask = _da_vsel_mask,\
> +.da_vsel_shift = _da_vsel_shift,\
> +.status_reg = _status_reg,\
> +.qi = BIT(0),\
> +}
> +
> +#define MT6359_LDO(match, _name, _volt_table, _index_table,\
> +_enable_reg, _enable_mask, _status_reg,\
> +_vsel_reg, _vsel_mask, _vsel_shift)\
> +[MT6359_ID_##_name] = {\
> +.desc = {\
> +.name = #_name,\
> +.of_match = of_match_ptr(match),\
> +.ops = &mt6359_volt_table_ops,\
> +.type = REGULATOR_VOLTAGE,\
> +.id = MT6359_ID_##_name,\
> +.owner = THIS_MODULE,\
> +.n_voltages = ARRAY_SIZE(_volt_table),\
> +.volt_table = _volt_table,\
> +.vsel_reg = _vsel_reg,\
> +.vsel_mask = _vsel_mask,\
> +.enable_reg = _enable_reg,\
> +.enable_mask = BIT(_enable_mask),\
> +},\
> +.status_reg = _status_reg,\
> +.qi = BIT(0),\
> +.index_table = _index_table,\
> +.n_table = ARRAY_SIZE(_index_table),\
> +.vsel_shift = _vsel_shift,\
> +}
> +
> +#define MT6359_REG_FIXED(match, _name, _enable_reg,\
> +_status_reg, _fixed_volt)\
> +[MT6359_ID_##_name] = {\
> +.desc = {\
> +.name = #_name,\
> +.of_match = of_match_ptr(match),\
> +.ops = &mt6359_volt_fixed_ops,\
> +.type = REGULATOR_VOLTAGE,\
> +.id = MT6359_ID_##_name,\
> +.owner = THIS_MODULE,\
> +.n_voltages = 1,\
> +.enable_reg = _enable_reg,\
> +.enable_mask = BIT(0),\
> +.fixed_uV = (_fixed_volt),\
> +},\
> +.status_reg = _status_reg,\
> +.qi = BIT(0),\
> +}
> +
> +static const struct regulator_linear_range mt_volt_range1[] = {
> +REGULATOR_LINEAR_RANGE(800000, 0, 0x70, 12500),
> +};
> +
> +static const struct regulator_linear_range mt_volt_range2[] = {
> +REGULATOR_LINEAR_RANGE(400000, 0, 0x7f, 6250),
> +};
> +
> +static const struct regulator_linear_range mt_volt_range3[] = {
> +REGULATOR_LINEAR_RANGE(400000, 0, 0x70, 6250),
> +};
> +
> +static const struct regulator_linear_range mt_volt_range4[] = {
> +REGULATOR_LINEAR_RANGE(800000, 0, 0x40, 12500),
> +};
> +
> +static const struct regulator_linear_range mt_volt_range5[] = {
> +REGULATOR_LINEAR_RANGE(500000, 0, 0x3F, 50000),
> +};
> +
> +static const struct regulator_linear_range mt_volt_range6[] = {
> +REGULATOR_LINEAR_RANGE(500000, 0, 0x6f, 6250),
> +};
> +
> +static const struct regulator_linear_range mt_volt_range7[] = {
> +REGULATOR_LINEAR_RANGE(500000, 0, 0x60, 6250),
> +};
> +
> +static const u32 vsim1_voltages[] = {
> +1700000, 1800000, 2700000, 3000000, 3100000,
> +};
> +
> +static const u32 vibr_voltages[] = {
> +1200000, 1300000, 1500000, 1800000, 2000000,
> +2700000, 2800000, 3000000, 3300000,
> +};
> +
> +static const u32 vrf12_voltages[] = {
> +1100000, 1200000, 1300000,
> +};
> +
> +static const u32 volt18_voltages[] = {
> +1700000, 1800000, 1900000,
> +};
> +
> +static const u32 vcn13_voltages[] = {
> +900000, 1000000, 1200000, 1300000,
> +};
> +
> +static const u32 vcn33_voltages[] = {
> +2800000, 3300000, 3400000, 3500000,
> +};
> +
> +static const u32 vefuse_voltages[] = {
> +1700000, 1800000, 1900000, 2000000,
> +};
> +
> +static const u32 vxo22_voltages[] = {
> +1800000, 2200000,
> +};
> +
> +static const u32 vrfck_voltages[] = {
> +1500000, 1600000, 1700000,
> +};
> +
> +static const u32 vio28_voltages[] = {
> +2800000, 2900000, 3000000, 3100000, 3300000,
> +};
> +
> +static const u32 vemc_voltages[] = {
> +2900000, 3000000, 3300000,
> +};
> +
> +static const u32 va12_voltages[] = {
> +1200000, 1300000,
> +};
> +
> +static const u32 va09_voltages[] = {
> +800000, 900000, 1200000,
> +};
> +
> +static const u32 vrf18_voltages[] = {
> +1700000, 1800000, 1810000,
> +};
> +
> +static const u32 vbbck_voltages[] = {
> +1100000, 1150000, 1200000,
> +};
> +
> +static const u32 vsim2_voltages[] = {
> +1700000, 1800000, 2700000, 3000000, 3100000,
> +};
> +
> +static const u32 vsim1_idx[] = {
> +3, 4, 8, 11, 12,
> +};
> +
> +static const u32 vibr_idx[] = {
> +0, 1, 2, 4, 5, 8, 9, 11, 13,
> +};
> +
> +static const u32 vrf12_idx[] = {
> +2, 3, 4,
> +};
> +
> +static const u32 volt18_idx[] = {
> +11, 12, 13,
> +};
> +
> +static const u32 vcn13_idx[] = {
> +0, 1, 3, 4,
> +};
> +
> +static const u32 vcn33_idx[] = {
> +9, 13, 14, 15,
> +};
> +
> +static const u32 vefuse_idx[] = {
> +11, 12, 13, 14,
> +};
> +
> +static const u32 vxo22_idx[] = {
> +0, 4,
> +};
> +
> +static const u32 vrfck_idx[] = {
> +2, 7, 12,
> +};
> +
> +static const u32 vio28_idx[] = {
> +9, 10, 11, 12, 13,
> +};
> +
> +static const u32 vemc_idx[] = {
> +10, 11, 13,
> +};
> +
> +static const u32 va12_idx[] = {
> +6, 7,
> +};
> +
> +static const u32 va09_idx[] = {
> +2, 3, 6,
> +};
> +
> +static const u32 vrf18_idx[] = {
> +5, 6, 7,
> +};
> +
> +static const u32 vbbck_idx[] = {
> +4, 8, 12,
> +};
> +
> +static const u32 vsim2_idx[] = {
> +3, 4, 8, 11, 12,
> +};
> +
> +static inline unsigned int mt6359_map_mode(unsigned int mode)
> +{
> +switch (mode) {
> +case MT6359_BUCK_MODE_NORMAL:
> +return REGULATOR_MODE_NORMAL;
> +case MT6359_BUCK_MODE_FORCE_PWM:
> +return REGULATOR_MODE_FAST;
> +case MT6359_BUCK_MODE_LP:
> +return REGULATOR_MODE_IDLE;
> +default:
> +return REGULATOR_MODE_INVALID;
> +}
> +}
> +
> +static int mt6359_set_voltage_sel(struct regulator_dev *rdev,
> +  unsigned int selector)
> +{
> +int idx, ret;
> +const u32 *pvol;
> +struct mt6359_regulator_info *info = rdev_get_drvdata(rdev);
> +
> +pvol = info->index_table;
> +
> +idx = pvol[selector];
> +ret = regmap_update_bits(rdev->regmap, info->desc.vsel_reg,
> + info->desc.vsel_mask,
> + idx << info->vsel_shift);
> +
> +return ret;
> +}
> +
> +static int mt6359_get_voltage_sel(struct regulator_dev *rdev)
> +{
> +int idx, ret;
> +u32 selector;
> +struct mt6359_regulator_info *info = rdev_get_drvdata(rdev);
> +const u32 *pvol;
> +
> +ret = regmap_read(rdev->regmap, info->desc.vsel_reg, &selector);
> +if (ret != 0) {
> +dev_err(&rdev->dev,
> +"Failed to get mt6359 %s vsel reg: %d\n",
> +info->desc.name, ret);
> +return ret;
> +}
> +
> +selector = (selector & info->desc.vsel_mask) >> info->vsel_shift;
> +pvol = info->index_table;
> +for (idx = 0; idx < info->desc.n_voltages; idx++) {
> +if (pvol[idx] == selector)
> +return idx;
> +}
> +
> +return -EINVAL;
> +}
> +
> +static int mt6359_get_linear_voltage_sel(struct regulator_dev *rdev)
> +{
> +struct mt6359_regulator_info *info = rdev_get_drvdata(rdev);
> +int ret, regval;
> +
> +ret = regmap_read(rdev->regmap, info->da_vsel_reg, &regval);
> +if (ret != 0) {
> +dev_err(&rdev->dev,
> +"Failed to get mt6359 Buck %s vsel reg: %d\n",
> +info->desc.name, ret);
> +return ret;
> +}
> +
> +ret = (regval >> info->da_vsel_shift) & info->da_vsel_mask;
> +
> +return ret;
> +}
> +
> +static int mt6359_get_status(struct regulator_dev *rdev)
> +{
> +int ret;
> +u32 regval;
> +struct mt6359_regulator_info *info = rdev_get_drvdata(rdev);
> +
> +ret = regmap_read(rdev->regmap, info->status_reg, &regval);
> +if (ret != 0) {
> +dev_err(&rdev->dev, "Failed to get enable reg: %d\n", ret);
> +return ret;
> +}
> +
> +return (regval & info->qi) ? REGULATOR_STATUS_ON : REGULATOR_STATUS_OFF;
> +}
> +
> +static unsigned int mt6359_regulator_get_mode(struct regulator_dev *rdev)
> +{
> +struct mt6359_regulator_info *info = rdev_get_drvdata(rdev);
> +int ret, regval;
> +
> +ret = regmap_read(rdev->regmap, info->modeset_reg, &regval);
> +if (ret != 0) {
> +dev_err(&rdev->dev,
> +"Failed to get mt6359 buck mode: %d\n", ret);
> +return ret;
> +}
> +
> +if ((regval & info->modeset_mask) >> info->modeset_shift ==
> +MT6359_BUCK_MODE_FORCE_PWM)
> +return REGULATOR_MODE_FAST;
> +
> +ret = regmap_read(rdev->regmap, info->lp_mode_reg, &regval);
> +if (ret != 0) {
> +dev_err(&rdev->dev,
> +"Failed to get mt6359 buck lp mode: %d\n", ret);
> +return ret;
> +}
> +
> +if (regval & info->lp_mode_mask)
> +return REGULATOR_MODE_IDLE;
> +else
> +return REGULATOR_MODE_NORMAL;
> +}
> +
> +static int mt6359_regulator_set_mode(struct regulator_dev *rdev,
> +     unsigned int mode)
> +{
> +struct mt6359_regulator_info *info = rdev_get_drvdata(rdev);
> +int ret = 0, val;
> +int curr_mode;
> +
> +curr_mode = mt6359_regulator_get_mode(rdev);
> +switch (mode) {
> +case REGULATOR_MODE_FAST:
> +if (curr_mode == REGULATOR_MODE_IDLE) {
> +WARN_ON(1);
> +dev_notice(&rdev->dev,
> +   "BUCK %s is LP mode, can't FPWM\n",
> +   rdev->desc->name);
> +return -EIO;
> +}
> +val = MT6359_BUCK_MODE_FORCE_PWM;
> +val <<= info->modeset_shift;
> +ret = regmap_update_bits(rdev->regmap,
> + info->modeset_reg,
> + info->modeset_mask,
> + val);
> +break;
> +case REGULATOR_MODE_NORMAL:
> +if (curr_mode == REGULATOR_MODE_FAST) {
> +val = MT6359_BUCK_MODE_AUTO;
> +val <<= info->modeset_shift;
> +ret = regmap_update_bits(rdev->regmap,
> + info->modeset_reg,
> + info->modeset_mask,
> + val);
> +} else if (curr_mode == REGULATOR_MODE_IDLE) {
> +val = MT6359_BUCK_MODE_NORMAL;
> +val <<= info->lp_mode_shift;
> +ret = regmap_update_bits(rdev->regmap,
> + info->lp_mode_reg,
> + info->lp_mode_mask,
> + val);
> +udelay(100);
> +}
> +break;
> +case REGULATOR_MODE_IDLE:
> +if (curr_mode == REGULATOR_MODE_FAST) {
> +WARN_ON(1);
> +dev_notice(&rdev->dev,
> +   "BUCK %s is FPWM mode, can't enter LP\n",
> +   rdev->desc->name);
> +return -EIO;
> +}
> +val = MT6359_BUCK_MODE_LP >> 1;
> +val <<= info->lp_mode_shift;
> +ret = regmap_update_bits(rdev->regmap,
> + info->lp_mode_reg,
> + info->lp_mode_mask,
> + val);
> +break;
> +default:
> +return -EINVAL;
> +}
> +
> +if (ret != 0) {
> +dev_err(&rdev->dev,
> +"Failed to set mt6359 buck mode: %d\n", ret);
> +}
> +
> +return ret;
> +}
> +
> +static const struct regulator_ops mt6359_volt_range_ops = {
> +.list_voltage = regulator_list_voltage_linear_range,
> +.map_voltage = regulator_map_voltage_linear_range,
> +.set_voltage_sel = regulator_set_voltage_sel_regmap,
> +.get_voltage_sel = mt6359_get_linear_voltage_sel,
> +.set_voltage_time_sel = regulator_set_voltage_time_sel,
> +.enable = regulator_enable_regmap,
> +.disable = regulator_disable_regmap,
> +.is_enabled = regulator_is_enabled_regmap,
> +.get_status = mt6359_get_status,
> +.set_mode = mt6359_regulator_set_mode,
> +.get_mode = mt6359_regulator_get_mode,
> +};
> +
> +static const struct regulator_ops mt6359_volt_table_ops = {
> +.list_voltage = regulator_list_voltage_table,
> +.map_voltage = regulator_map_voltage_iterate,
> +.set_voltage_sel = mt6359_set_voltage_sel,
> +.get_voltage_sel = mt6359_get_voltage_sel,
> +.set_voltage_time_sel = regulator_set_voltage_time_sel,
> +.enable = regulator_enable_regmap,
> +.disable = regulator_disable_regmap,
> +.is_enabled = regulator_is_enabled_regmap,
> +.get_status = mt6359_get_status,
> +};
> +
> +static const struct regulator_ops mt6359_volt_fixed_ops = {
> +.enable = regulator_enable_regmap,
> +.disable = regulator_disable_regmap,
> +.is_enabled = regulator_is_enabled_regmap,
> +.get_status = mt6359_get_status,
> +};
> +
> +/* The array is indexed by id(MT6359_ID_XXX) */
> +static struct mt6359_regulator_info mt6359_regulators[] = {
> +MT6359_BUCK("buck_vs1", VS1, 800000, 2200000, 12500, 0,
> +    mt_volt_range1, MT6359_RG_BUCK_VS1_EN_ADDR,
> +    MT6359_DA_VS1_EN_ADDR, MT6359_DA_VS1_VOSEL_ADDR,
> +    MT6359_DA_VS1_VOSEL_MASK, MT6359_DA_VS1_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VS1_VOSEL_ADDR,
> +    MT6359_RG_BUCK_VS1_VOSEL_MASK <<
> +    MT6359_RG_BUCK_VS1_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VS1_LP_ADDR, MT6359_RG_BUCK_VS1_LP_SHIFT,
> +    MT6359_RG_VS1_FPWM_ADDR, MT6359_RG_VS1_FPWM_SHIFT),
> +MT6359_BUCK("buck_vgpu11", VGPU11, 400000, 1193750, 6250, 0,
> +    mt_volt_range2, MT6359_RG_BUCK_VGPU11_EN_ADDR,
> +    MT6359_DA_VGPU11_EN_ADDR, MT6359_DA_VGPU11_VOSEL_ADDR,
> +    MT6359_DA_VGPU11_VOSEL_MASK, MT6359_DA_VGPU11_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VGPU11_VOSEL_ADDR,
> +    MT6359_RG_BUCK_VGPU11_VOSEL_MASK <<
> +    MT6359_RG_BUCK_VGPU11_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VGPU11_LP_ADDR,
> +    MT6359_RG_BUCK_VGPU11_LP_SHIFT,
> +    MT6359_RG_VGPU11_FCCM_ADDR, MT6359_RG_VGPU11_FCCM_SHIFT),
> +MT6359_BUCK("buck_vmodem", VMODEM, 400000, 1100000, 6250, 0,
> +    mt_volt_range3, MT6359_RG_BUCK_VMODEM_EN_ADDR,
> +    MT6359_DA_VMODEM_EN_ADDR, MT6359_DA_VMODEM_VOSEL_ADDR,
> +    MT6359_DA_VMODEM_VOSEL_MASK, MT6359_DA_VMODEM_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VMODEM_VOSEL_ADDR,
> +    MT6359_RG_BUCK_VMODEM_VOSEL_MASK <<
> +    MT6359_RG_BUCK_VMODEM_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VMODEM_LP_ADDR,
> +    MT6359_RG_BUCK_VMODEM_LP_SHIFT,
> +    MT6359_RG_VMODEM_FCCM_ADDR, MT6359_RG_VMODEM_FCCM_SHIFT),
> +MT6359_BUCK("buck_vpu", VPU, 400000, 1193750, 6250, 0,
> +    mt_volt_range2, MT6359_RG_BUCK_VPU_EN_ADDR,
> +    MT6359_DA_VPU_EN_ADDR, MT6359_DA_VPU_VOSEL_ADDR,
> +    MT6359_DA_VPU_VOSEL_MASK, MT6359_DA_VPU_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VPU_VOSEL_ADDR,
> +    MT6359_RG_BUCK_VPU_VOSEL_MASK <<
> +    MT6359_RG_BUCK_VPU_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VPU_LP_ADDR, MT6359_RG_BUCK_VPU_LP_SHIFT,
> +    MT6359_RG_VPU_FCCM_ADDR, MT6359_RG_VPU_FCCM_SHIFT),
> +MT6359_BUCK("buck_vcore", VCORE, 400000, 1193750, 6250, 0,
> +    mt_volt_range2, MT6359_RG_BUCK_VCORE_EN_ADDR,
> +    MT6359_DA_VCORE_EN_ADDR, MT6359_DA_VCORE_VOSEL_ADDR,
> +    MT6359_DA_VCORE_VOSEL_MASK, MT6359_DA_VCORE_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VCORE_VOSEL_ADDR,
> +    MT6359_RG_BUCK_VCORE_VOSEL_MASK <<
> +    MT6359_RG_BUCK_VCORE_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VCORE_LP_ADDR, MT6359_RG_BUCK_VCORE_LP_SHIFT,
> +    MT6359_RG_VCORE_FCCM_ADDR, MT6359_RG_VCORE_FCCM_SHIFT),
> +MT6359_BUCK("buck_vs2", VS2, 800000, 1600000, 12500, 0,
> +    mt_volt_range4, MT6359_RG_BUCK_VS2_EN_ADDR,
> +    MT6359_DA_VS2_EN_ADDR, MT6359_DA_VS2_VOSEL_ADDR,
> +    MT6359_DA_VS2_VOSEL_MASK, MT6359_DA_VS2_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VS2_VOSEL_ADDR,
> +    MT6359_RG_BUCK_VS2_VOSEL_MASK <<
> +    MT6359_RG_BUCK_VS2_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VS2_LP_ADDR, MT6359_RG_BUCK_VS2_LP_SHIFT,
> +    MT6359_RG_VS2_FPWM_ADDR, MT6359_RG_VS2_FPWM_SHIFT),
> +MT6359_BUCK("buck_vpa", VPA, 500000, 3650000, 50000, 0,
> +    mt_volt_range5, MT6359_RG_BUCK_VPA_EN_ADDR,
> +    MT6359_DA_VPA_EN_ADDR, MT6359_DA_VPA_VOSEL_ADDR,
> +    MT6359_DA_VPA_VOSEL_MASK, MT6359_DA_VPA_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VPA_VOSEL_ADDR,
> +    MT6359_RG_BUCK_VPA_VOSEL_MASK <<
> +    MT6359_RG_BUCK_VPA_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VPA_LP_ADDR, MT6359_RG_BUCK_VPA_LP_SHIFT,
> +    MT6359_RG_VPA_MODESET_ADDR, MT6359_RG_VPA_MODESET_SHIFT),
> +MT6359_BUCK("buck_vproc2", VPROC2, 400000, 1193750, 6250, 0,
> +    mt_volt_range2, MT6359_RG_BUCK_VPROC2_EN_ADDR,
> +    MT6359_DA_VPROC2_EN_ADDR, MT6359_DA_VPROC2_VOSEL_ADDR,
> +    MT6359_DA_VPROC2_VOSEL_MASK, MT6359_DA_VPROC2_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VPROC2_VOSEL_ADDR,
> +    MT6359_RG_BUCK_VPROC2_VOSEL_MASK <<
> +    MT6359_RG_BUCK_VPROC2_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VPROC2_LP_ADDR,
> +    MT6359_RG_BUCK_VPROC2_LP_SHIFT,
> +    MT6359_RG_VPROC2_FCCM_ADDR, MT6359_RG_VPROC2_FCCM_SHIFT),
> +MT6359_BUCK("buck_vproc1", VPROC1, 400000, 1193750, 6250, 0,
> +    mt_volt_range2, MT6359_RG_BUCK_VPROC1_EN_ADDR,
> +    MT6359_DA_VPROC1_EN_ADDR, MT6359_DA_VPROC1_VOSEL_ADDR,
> +    MT6359_DA_VPROC1_VOSEL_MASK, MT6359_DA_VPROC1_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VPROC1_VOSEL_ADDR,
> +    MT6359_RG_BUCK_VPROC1_VOSEL_MASK <<
> +    MT6359_RG_BUCK_VPROC1_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VPROC1_LP_ADDR,
> +    MT6359_RG_BUCK_VPROC1_LP_SHIFT,
> +    MT6359_RG_VPROC1_FCCM_ADDR, MT6359_RG_VPROC1_FCCM_SHIFT),
> +MT6359_BUCK("buck_vcore_sshub", VCORE_SSHUB, 400000, 1193750, 6250, 0,
> +    mt_volt_range2, MT6359_RG_BUCK_VCORE_SSHUB_EN_ADDR,
> +    MT6359_DA_VCORE_EN_ADDR,
> +    MT6359_RG_BUCK_VCORE_SSHUB_VOSEL_ADDR,
> +    MT6359_RG_BUCK_VCORE_SSHUB_VOSEL_MASK,
> +    MT6359_RG_BUCK_VCORE_SSHUB_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VCORE_SSHUB_VOSEL_ADDR,
> +    MT6359_RG_BUCK_VCORE_SSHUB_VOSEL_MASK <<
> +    MT6359_RG_BUCK_VCORE_SSHUB_VOSEL_SHIFT,
> +    MT6359_RG_BUCK_VCORE_LP_ADDR, MT6359_RG_BUCK_VCORE_LP_SHIFT,
> +    MT6359_RG_VCORE_FCCM_ADDR, MT6359_RG_VCORE_FCCM_SHIFT),
> +MT6359_REG_FIXED("ldo_vaud18", VAUD18, MT6359_RG_LDO_VAUD18_EN_ADDR,
> + MT6359_DA_VAUD18_B_EN_ADDR, 1800000),
> +MT6359_LDO("ldo_vsim1", VSIM1, vsim1_voltages, vsim1_idx,
> +   MT6359_RG_LDO_VSIM1_EN_ADDR, MT6359_RG_LDO_VSIM1_EN_SHIFT,
> +   MT6359_DA_VSIM1_B_EN_ADDR, MT6359_RG_VSIM1_VOSEL_ADDR,
> +   MT6359_RG_VSIM1_VOSEL_MASK << MT6359_RG_VSIM1_VOSEL_SHIFT,
> +   MT6359_RG_VSIM1_VOSEL_SHIFT),
> +MT6359_LDO("ldo_vibr", VIBR, vibr_voltages, vibr_idx,
> +   MT6359_RG_LDO_VIBR_EN_ADDR, MT6359_RG_LDO_VIBR_EN_SHIFT,
> +   MT6359_DA_VIBR_B_EN_ADDR, MT6359_RG_VIBR_VOSEL_ADDR,
> +   MT6359_RG_VIBR_VOSEL_MASK << MT6359_RG_VIBR_VOSEL_SHIFT,
> +   MT6359_RG_VIBR_VOSEL_SHIFT),
> +MT6359_LDO("ldo_vrf12", VRF12, vrf12_voltages, vrf12_idx,
> +   MT6359_RG_LDO_VRF12_EN_ADDR, MT6359_RG_LDO_VRF12_EN_SHIFT,
> +   MT6359_DA_VRF12_B_EN_ADDR, MT6359_RG_VRF12_VOSEL_ADDR,
> +   MT6359_RG_VRF12_VOSEL_MASK << MT6359_RG_VRF12_VOSEL_SHIFT,
> +   MT6359_RG_VRF12_VOSEL_SHIFT),
> +MT6359_REG_FIXED("ldo_vusb", VUSB, MT6359_RG_LDO_VUSB_EN_0_ADDR,
> + MT6359_DA_VUSB_B_EN_ADDR, 3000000),
> +MT6359_LDO_LINEAR("ldo_vsram_proc2", VSRAM_PROC2, 500000, 1193750, 6250,
> +  0, mt_volt_range6, MT6359_RG_LDO_VSRAM_PROC2_EN_ADDR,
> +  MT6359_DA_VSRAM_PROC2_B_EN_ADDR,
> +  MT6359_DA_VSRAM_PROC2_VOSEL_ADDR,
> +  MT6359_DA_VSRAM_PROC2_VOSEL_MASK,
> +  MT6359_DA_VSRAM_PROC2_VOSEL_SHIFT,
> +  MT6359_RG_LDO_VSRAM_PROC2_VOSEL_ADDR,
> +  MT6359_RG_LDO_VSRAM_PROC2_VOSEL_MASK <<
> +  MT6359_RG_LDO_VSRAM_PROC2_VOSEL_SHIFT),
> +MT6359_LDO("ldo_vio18", VIO18, volt18_voltages, volt18_idx,
> +   MT6359_RG_LDO_VIO18_EN_ADDR, MT6359_RG_LDO_VIO18_EN_SHIFT,
> +   MT6359_DA_VIO18_B_EN_ADDR, MT6359_RG_VIO18_VOSEL_ADDR,
> +   MT6359_RG_VIO18_VOSEL_MASK << MT6359_RG_VIO18_VOSEL_SHIFT,
> +   MT6359_RG_VIO18_VOSEL_SHIFT),
> +MT6359_LDO("ldo_vcamio", VCAMIO, volt18_voltages, volt18_idx,
> +   MT6359_RG_LDO_VCAMIO_EN_ADDR, MT6359_RG_LDO_VCAMIO_EN_SHIFT,
> +   MT6359_DA_VCAMIO_B_EN_ADDR, MT6359_RG_VCAMIO_VOSEL_ADDR,
> +   MT6359_RG_VCAMIO_VOSEL_MASK << MT6359_RG_VCAMIO_VOSEL_SHIFT,
> +   MT6359_RG_VCAMIO_VOSEL_SHIFT),
> +MT6359_REG_FIXED("ldo_vcn18", VCN18, MT6359_RG_LDO_VCN18_EN_ADDR,
> + MT6359_DA_VCN18_B_EN_ADDR, 1800000),
> +MT6359_REG_FIXED("ldo_vfe28", VFE28, MT6359_RG_LDO_VFE28_EN_ADDR,
> + MT6359_DA_VFE28_B_EN_ADDR, 2800000),
> +MT6359_LDO("ldo_vcn13", VCN13, vcn13_voltages, vcn13_idx,
> +   MT6359_RG_LDO_VCN13_EN_ADDR, MT6359_RG_LDO_VCN13_EN_SHIFT,
> +   MT6359_DA_VCN13_B_EN_ADDR, MT6359_RG_VCN13_VOSEL_ADDR,
> +   MT6359_RG_VCN13_VOSEL_MASK << MT6359_RG_VCN13_VOSEL_SHIFT,
> +   MT6359_RG_VCN13_VOSEL_SHIFT),
> +MT6359_LDO("ldo_vcn33_1_bt", VCN33_1_BT, vcn33_voltages, vcn33_idx,
> +   MT6359_RG_LDO_VCN33_1_EN_0_ADDR,
> +   MT6359_RG_LDO_VCN33_1_EN_0_SHIFT,
> +   MT6359_DA_VCN33_1_B_EN_ADDR, MT6359_RG_VCN33_1_VOSEL_ADDR,
> +   MT6359_RG_VCN33_1_VOSEL_MASK <<
> +   MT6359_RG_VCN33_1_VOSEL_SHIFT,
> +   MT6359_RG_VCN33_1_VOSEL_SHIFT),
> +MT6359_LDO("ldo_vcn33_1_wifi", VCN33_1_WIFI, vcn33_voltages, vcn33_idx,
> +   MT6359_RG_LDO_VCN33_1_EN_1_ADDR,
> +   MT6359_RG_LDO_VCN33_1_EN_1_SHIFT,
> +   MT6359_DA_VCN33_1_B_EN_ADDR, MT6359_RG_VCN33_1_VOSEL_ADDR,
> +   MT6359_RG_VCN33_1_VOSEL_MASK <<
> +   MT6359_RG_VCN33_1_VOSEL_SHIFT,
> +   MT6359_RG_VCN33_1_VOSEL_SHIFT),
> +MT6359_REG_FIXED("ldo_vaux18", VAUX18, MT6359_RG_LDO_VAUX18_EN_ADDR,
> + MT6359_DA_VAUX18_B_EN_ADDR, 1800000),
> +MT6359_LDO_LINEAR("ldo_vsram_others", VSRAM_OTHERS, 500000, 1193750,
> +  6250, 0, mt_volt_range6,
> +  MT6359_RG_LDO_VSRAM_OTHERS_EN_ADDR,
> +  MT6359_DA_VSRAM_OTHERS_B_EN_ADDR,
> +  MT6359_DA_VSRAM_OTHERS_VOSEL_ADDR,
> +  MT6359_DA_VSRAM_OTHERS_VOSEL_MASK,
> +  MT6359_DA_VSRAM_OTHERS_VOSEL_SHIFT,
> +  MT6359_RG_LDO_VSRAM_OTHERS_VOSEL_ADDR,
> +  MT6359_RG_LDO_VSRAM_OTHERS_VOSEL_MASK <<
> +  MT6359_RG_LDO_VSRAM_OTHERS_VOSEL_SHIFT),
> +MT6359_LDO("ldo_vefuse", VEFUSE, vefuse_voltages, vefuse_idx,
> +   MT6359_RG_LDO_VEFUSE_EN_ADDR, MT6359_RG_LDO_VEFUSE_EN_SHIFT,
> +   MT6359_DA_VEFUSE_B_EN_ADDR, MT6359_RG_VEFUSE_VOSEL_ADDR,
> +   MT6359_RG_VEFUSE_VOSEL_MASK << MT6359_RG_VEFUSE_VOSEL_SHIFT,
> +   MT6359_RG_VEFUSE_VOSEL_SHIFT),
> +MT6359_LDO("ldo_vxo22", VXO22, vxo22_voltages, vxo22_idx,
> +   MT6359_RG_LDO_VXO22_EN_ADDR, MT6359_RG_LDO_VXO22_EN_SHIFT,
> +   MT6359_DA_VXO22_B_EN_ADDR, MT6359_RG_VXO22_VOSEL_ADDR,
> +   MT6359_RG_VXO22_VOSEL_MASK << MT6359_RG_VXO22_VOSEL_SHIFT,
> +   MT6359_RG_VXO22_VOSEL_SHIFT),
> +MT6359_LDO("ldo_vrfck", VRFCK, vrfck_voltages, vrfck_idx,
> +   MT6359_RG_LDO_VRFCK_EN_ADDR, MT6359_RG_LDO_VRFCK_EN_SHIFT,
> +   MT6359_DA_VRFCK_B_EN_ADDR, MT6359_RG_VRFCK_VOSEL_ADDR,
> +   MT6359_RG_VRFCK_VOSEL_MASK << MT6359_RG_VRFCK_VOSEL_SHIFT,
> +   MT6359_RG_VRFCK_VOSEL_SHIFT),
> +MT6359_REG_FIXED("ldo_vbif28", VBIF28, MT6359_RG_LDO_VBIF28_EN_ADDR,
> + MT6359_DA_VBIF28_B_EN_ADDR, 2800000),
> +MT6359_LDO("ldo_vio28", VIO28, vio28_voltages, vio28_idx,
> +   MT6359_RG_LDO_VIO28_EN_ADDR, MT6359_RG_LDO_VIO28_EN_SHIFT,
> +   MT6359_DA_VIO28_B_EN_ADDR, MT6359_RG_VIO28_VOSEL_ADDR,
> +   MT6359_RG_VIO28_VOSEL_MASK << MT6359_RG_VIO28_VOSEL_SHIFT,
> +   MT6359_RG_VIO28_VOSEL_SHIFT),
> +MT6359_LDO("ldo_vemc", VEMC, vemc_voltages, vemc_idx,
> +   MT6359_RG_LDO_VEMC_EN_ADDR, MT6359_RG_LDO_VEMC_EN_SHIFT,
> +   MT6359_DA_VEMC_B_EN_ADDR, MT6359_RG_VEMC_VOSEL_ADDR,
> +   MT6359_RG_VEMC_VOSEL_MASK << MT6359_RG_VEMC_VOSEL_SHIFT,
> +   MT6359_RG_VEMC_VOSEL_SHIFT),
> +MT6359_LDO("ldo_vcn33_2_bt", VCN33_2_BT, vcn33_voltages, vcn33_idx,
> +   MT6359_RG_LDO_VCN33_2_EN_0_ADDR,
> +   MT6359_RG_LDO_VCN33_2_EN_0_SHIFT,
> +   MT6359_DA_VCN33_2_B_EN_ADDR, MT6359_RG_VCN33_2_VOSEL_ADDR,
> +   MT6359_RG_VCN33_2_VOSEL_MASK <<
> +   MT6359_RG_VCN33_2_VOSEL_SHIFT,
> +   MT6359_RG_VCN33_2_VOSEL_SHIFT),
> +MT6359_LDO("ldo_vcn33_2_wifi", VCN33_2_WIFI, vcn33_voltages, vcn33_idx,
> +   MT6359_RG_LDO_VCN33_2_EN_1_ADDR,
> +   MT6359_RG_LDO_VCN33_2_EN_1_SHIFT,
> +   MT6359_DA_VCN33_2_B_EN_ADDR, MT6359_RG_VCN33_2_VOSEL_ADDR,
> +   MT6359_RG_VCN33_2_VOSEL_MASK <<
> +   MT6359_RG_VCN33_2_VOSEL_SHIFT,
> +   MT6359_RG_VCN33_2_VOSEL_SHIFT),
> +MT6359_LDO("ldo_va12", VA12, va12_voltages, va12_idx,
> +   MT6359_RG_LDO_VA12_EN_ADDR, MT6359_RG_LDO_VA12_EN_SHIFT,
> +   MT6359_DA_VA12_B_EN_ADDR, MT6359_RG_VA12_VOSEL_ADDR,
> +   MT6359_RG_VA12_VOSEL_MASK << MT6359_RG_VA12_VOSEL_SHIFT,
> +   MT6359_RG_VA12_VOSEL_SHIFT),
> +MT6359_LDO("ldo_va09", VA09, va09_voltages, va09_idx,
> +   MT6359_RG_LDO_VA09_EN_ADDR, MT6359_RG_LDO_VA09_EN_SHIFT,
> +   MT6359_DA_VA09_B_EN_ADDR, MT6359_RG_VA09_VOSEL_ADDR,
> +   MT6359_RG_VA09_VOSEL_MASK << MT6359_RG_VA09_VOSEL_SHIFT,
> +   MT6359_RG_VA09_VOSEL_SHIFT),
> +MT6359_LDO("ldo_vrf18", VRF18, vrf18_voltages, vrf18_idx,
> +   MT6359_RG_LDO_VRF18_EN_ADDR, MT6359_RG_LDO_VRF18_EN_SHIFT,
> +   MT6359_DA_VRF18_B_EN_ADDR, MT6359_RG_VRF18_VOSEL_ADDR,
> +   MT6359_RG_VRF18_VOSEL_MASK << MT6359_RG_VRF18_VOSEL_SHIFT,
> +   MT6359_RG_VRF18_VOSEL_SHIFT),
> +MT6359_LDO_LINEAR("ldo_vsram_md", VSRAM_MD, 500000, 1100000, 6250,
> +  0, mt_volt_range7, MT6359_RG_LDO_VSRAM_MD_EN_ADDR,
> +  MT6359_DA_VSRAM_MD_B_EN_ADDR,
> +  MT6359_DA_VSRAM_MD_VOSEL_ADDR,
> +  MT6359_DA_VSRAM_MD_VOSEL_MASK,
> +  MT6359_DA_VSRAM_MD_VOSEL_SHIFT,
> +  MT6359_RG_LDO_VSRAM_MD_VOSEL_ADDR,
> +  MT6359_RG_LDO_VSRAM_MD_VOSEL_MASK <<
> +  MT6359_RG_LDO_VSRAM_MD_VOSEL_SHIFT),
> +MT6359_LDO("ldo_vufs", VUFS, volt18_voltages, volt18_idx,
> +   MT6359_RG_LDO_VUFS_EN_ADDR, MT6359_RG_LDO_VUFS_EN_SHIFT,
> +   MT6359_DA_VUFS_B_EN_ADDR, MT6359_RG_VUFS_VOSEL_ADDR,
> +   MT6359_RG_VUFS_VOSEL_MASK << MT6359_RG_VUFS_VOSEL_SHIFT,
> +   MT6359_RG_VUFS_VOSEL_SHIFT),
> +MT6359_LDO("ldo_vm18", VM18, volt18_voltages, volt18_idx,
> +   MT6359_RG_LDO_VM18_EN_ADDR, MT6359_RG_LDO_VM18_EN_SHIFT,
> +   MT6359_DA_VM18_B_EN_ADDR, MT6359_RG_VM18_VOSEL_ADDR,
> +   MT6359_RG_VM18_VOSEL_MASK << MT6359_RG_VM18_VOSEL_SHIFT,
> +   MT6359_RG_VM18_VOSEL_SHIFT),
> +MT6359_LDO("ldo_vbbck", VBBCK, vbbck_voltages, vbbck_idx,
> +   MT6359_RG_LDO_VBBCK_EN_ADDR, MT6359_RG_LDO_VBBCK_EN_SHIFT,
> +   MT6359_DA_VBBCK_B_EN_ADDR, MT6359_RG_VBBCK_VOSEL_ADDR,
> +   MT6359_RG_VBBCK_VOSEL_MASK << MT6359_RG_VBBCK_VOSEL_SHIFT,
> +   MT6359_RG_VBBCK_VOSEL_SHIFT),
> +MT6359_LDO_LINEAR("ldo_vsram_proc1", VSRAM_PROC1, 500000, 1193750, 6250,
> +  0, mt_volt_range6, MT6359_RG_LDO_VSRAM_PROC1_EN_ADDR,
> +  MT6359_DA_VSRAM_PROC1_B_EN_ADDR,
> +  MT6359_DA_VSRAM_PROC1_VOSEL_ADDR,
> +  MT6359_DA_VSRAM_PROC1_VOSEL_MASK,
> +  MT6359_DA_VSRAM_PROC1_VOSEL_SHIFT,
> +  MT6359_RG_LDO_VSRAM_PROC1_VOSEL_ADDR,
> +  MT6359_RG_LDO_VSRAM_PROC1_VOSEL_MASK <<
> +  MT6359_RG_LDO_VSRAM_PROC1_VOSEL_SHIFT),
> +MT6359_LDO("ldo_vsim2", VSIM2, vsim2_voltages, vsim2_idx,
> +   MT6359_RG_LDO_VSIM2_EN_ADDR, MT6359_RG_LDO_VSIM2_EN_SHIFT,
> +   MT6359_DA_VSIM2_B_EN_ADDR, MT6359_RG_VSIM2_VOSEL_ADDR,
> +   MT6359_RG_VSIM2_VOSEL_MASK << MT6359_RG_VSIM2_VOSEL_SHIFT,
> +   MT6359_RG_VSIM2_VOSEL_SHIFT),
> +MT6359_LDO_LINEAR("ldo_vsram_others_sshub", VSRAM_OTHERS_SSHUB,
> +  500000, 1193750, 6250, 0, mt_volt_range6,
> +  MT6359_RG_LDO_VSRAM_OTHERS_SSHUB_EN_ADDR,
> +  MT6359_DA_VSRAM_OTHERS_B_EN_ADDR,
> +  MT6359_RG_LDO_VSRAM_OTHERS_SSHUB_VOSEL_ADDR,
> +  MT6359_RG_LDO_VSRAM_OTHERS_SSHUB_VOSEL_MASK,
> +  MT6359_RG_LDO_VSRAM_OTHERS_SSHUB_VOSEL_SHIFT,
> +  MT6359_RG_LDO_VSRAM_OTHERS_SSHUB_VOSEL_ADDR,
> +  MT6359_RG_LDO_VSRAM_OTHERS_SSHUB_VOSEL_MASK <<
> +  MT6359_RG_LDO_VSRAM_OTHERS_SSHUB_VOSEL_SHIFT),
> +};
> +
> +static int mt6359_regulator_probe(struct platform_device *pdev)
> +{
> +struct mt6397_chip *mt6397 = dev_get_drvdata(pdev->dev.parent);
> +struct regulator_config config = {};
> +struct regulator_dev *rdev;
> +int i;
> +
> +for (i = 0; i < MT6359_MAX_REGULATOR; i++) {
> +config.dev = &pdev->dev;
> +config.driver_data = &mt6359_regulators[i];
> +config.regmap = mt6397->regmap;
> +
> +rdev = devm_regulator_register(&pdev->dev,
> +       &mt6359_regulators[i].desc,
> +       &config);
> +if (IS_ERR(rdev)) {
> +dev_err(&pdev->dev, "failed to register %s\n",
> +mt6359_regulators[i].desc.name);
> +return PTR_ERR(rdev);
> +}
> +}
> +
> +return 0;
> +}
> +
> +static const struct platform_device_id mt6359_platform_ids[] = {
> +{"mt6359-regulator", 0},
> +{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(platform, mt6359_platform_ids);
> +
> +static struct platform_driver mt6359_regulator_driver = {
> +.driver = {
> +.name = "mt6359-regulator",
> +},
> +.probe = mt6359_regulator_probe,
> +.id_table = mt6359_platform_ids,
> +};
> +
> +module_platform_driver(mt6359_regulator_driver);
> +
> +MODULE_AUTHOR("Wen Su <wen.su@mediatek.com>");
> +MODULE_DESCRIPTION("Regulator Driver for MediaTek MT6359 PMIC");
> +MODULE_LICENSE("GPL");
> diff --git a/include/linux/regulator/mt6359-regulator.h b/include/linux/regulator/mt6359-regulator.h
> new file mode 100644
> index 0000000..6b17173
> --- /dev/null
> +++ b/include/linux/regulator/mt6359-regulator.h
> @@ -0,0 +1,58 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + */
> +
> +#ifndef __LINUX_REGULATOR_MT6359_H
> +#define __LINUX_REGULATOR_MT6359_H
> +
> +enum {
> +MT6359_ID_VS1 = 0,
> +MT6359_ID_VGPU11,
> +MT6359_ID_VMODEM,
> +MT6359_ID_VPU,
> +MT6359_ID_VCORE,
> +MT6359_ID_VS2,
> +MT6359_ID_VPA,
> +MT6359_ID_VPROC2,
> +MT6359_ID_VPROC1,
> +MT6359_ID_VCORE_SSHUB,
> +MT6359_ID_VAUD18 = 10,
> +MT6359_ID_VSIM1,
> +MT6359_ID_VIBR,
> +MT6359_ID_VRF12,
> +MT6359_ID_VUSB,
> +MT6359_ID_VSRAM_PROC2,
> +MT6359_ID_VIO18,
> +MT6359_ID_VCAMIO,
> +MT6359_ID_VCN18,
> +MT6359_ID_VFE28,
> +MT6359_ID_VCN13,
> +MT6359_ID_VCN33_1_BT,
> +MT6359_ID_VCN33_1_WIFI,
> +MT6359_ID_VAUX18,
> +MT6359_ID_VSRAM_OTHERS,
> +MT6359_ID_VEFUSE,
> +MT6359_ID_VXO22,
> +MT6359_ID_VRFCK,
> +MT6359_ID_VBIF28,
> +MT6359_ID_VIO28,
> +MT6359_ID_VEMC,
> +MT6359_ID_VCN33_2_BT,
> +MT6359_ID_VCN33_2_WIFI,
> +MT6359_ID_VA12,
> +MT6359_ID_VA09,
> +MT6359_ID_VRF18,
> +MT6359_ID_VSRAM_MD,
> +MT6359_ID_VUFS,
> +MT6359_ID_VM18,
> +MT6359_ID_VBBCK,
> +MT6359_ID_VSRAM_PROC1,
> +MT6359_ID_VSIM2,
> +MT6359_ID_VSRAM_OTHERS_SSHUB,
> +MT6359_ID_RG_MAX,
> +};
> +
> +#define MT6359_MAX_REGULATORMT6359_ID_RG_MAX
> +
> +#endif /* __LINUX_REGULATOR_MT6359_H */
> --
> 1.9.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
