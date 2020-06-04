Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 876681EE83C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 18:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rAaCXtJmzBL1eaSjgSAMXyLajaIDuoJDdKXqZgz2LU0=; b=Lx+8/8z/FqQK/+IxGQqR5rEQj
	FT7OZypWrKqrEkqHdaW9vT5E5HznK4vQzxtrxIBfjQVopRl4hDLHL9st+JpITW2GsVU8EWg+EJh05
	4SYvdZNi8n9wxaT/NwQcAXVsXjAUY+l62WL5ytCxN+PZ/w6BhEpNGCka61DTyx+bHsFgZX/ak0Yiu
	ZZS8wpSJGiJGImIKWmdNcQUu/CeiApUNG0amfOwnLQkMlkwId+TKpqts+KE5qJF82kJpy9xE3y+iD
	s8BWJX/eFgm3LXK6eLB4D/+Gw7mfm0jnmco3GvhJYvwGDsxxRyI/rLeR9OTSKMp+dUVqUJREdt8C3
	jHFxNSrYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgsPG-0004Gf-Ui; Thu, 04 Jun 2020 16:07:50 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgsP6-0004GA-HX; Thu, 04 Jun 2020 16:07:44 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 054G7Yb8065677;
 Thu, 4 Jun 2020 11:07:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1591286854;
 bh=Mif1/jGYbmYhRYCPyzNgOevH6SjeLodn8FBua71nMmM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=aQTa5f1tEPi4Gzkdhr/znr7+GLhzhoGiOmpSlg3A4zw710eWaErAY84u4QAjnjjFh
 UpI5ofzbK3E8FTfhPJQcwr6cN/Xez1oOzCuQ4xUD0NoWIppy47Ynnmddqpyx4vDPsc
 0Z2hV14fQD+Yb7yq+OtpJN3hT9GDfcfwfNfIaYf0=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 054G7YAA001813
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 4 Jun 2020 11:07:34 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 4 Jun
 2020 11:07:34 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 4 Jun 2020 11:07:34 -0500
Received: from [10.250.52.63] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 054G7XEN116912;
 Thu, 4 Jun 2020 11:07:33 -0500
Subject: Re: [PATCH] leds: mt6360: Add LED driver for MT6360
To: Gene Chen <gene.chen.richtek@gmail.com>, <jacek.anaszewski@gmail.com>,
 <pavel@ucw.cz>, <matthias.bgg@gmail.com>
References: <1591252004-12681-1-git-send-email-gene.chen.richtek@gmail.com>
From: Dan Murphy <dmurphy@ti.com>
Message-ID: <1e36da10-c2d6-00f8-2a54-f1c05e15704d@ti.com>
Date: Thu, 4 Jun 2020 11:07:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1591252004-12681-1-git-send-email-gene.chen.richtek@gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_090740_758036_733D6FAD 
X-CRM114-Status: GOOD (  24.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 benjamin.chao@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-leds@vger.kernel.org, Wilma.Wu@mediatek.com,
 linux-arm-kernel@lists.infradead.org, shufan_lee@richtek.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Gene

On 6/4/20 1:26 AM, Gene Chen wrote:
> From: Gene Chen <gene_chen@richtek.com>
>
> Add MT6360 LED driver include 2-channel Flash LED with torch/strobe mode,
> and 3-channel RGB LED support Register/Flash/Breath Mode
>
> Signed-off-by: Gene Chen <gene_chen@richtek.com>
> base-commit: 098c4adf249c198519a4abebe482b1e6b8c50e47
> ---
>   drivers/leds/Kconfig       |   11 +
>   drivers/leds/Makefile      |    1 +
>   drivers/leds/leds-mt6360.c | 1061 ++++++++++++++++++++++++++++++++++++++++++++
>   include/linux/mfd/mt6360.h |    6 +-
>   4 files changed, 1078 insertions(+), 1 deletion(-)
>   create mode 100644 drivers/leds/leds-mt6360.c
>
> diff --git a/drivers/leds/Kconfig b/drivers/leds/Kconfig
> index c664d84..c47be91 100644
> --- a/drivers/leds/Kconfig
> +++ b/drivers/leds/Kconfig
> @@ -229,6 +229,17 @@ config LEDS_MT6323
>   	  This option enables support for on-chip LED drivers found on
>   	  Mediatek MT6323 PMIC.
>   
> +config LEDS_MT6360
> +	tristate "LED Support for Mediatek MT6360 PMIC"
> +	depends on LEDS_CLASS_FLASH && OF
> +	depends on V4L2_FLASH_LED_CLASS || !V4L2_FLASH_LED_CLASS
> +	depends on MFD_MT6360
> +	help
> +	  This option enables support for dual Flash LED drivers found on
> +	  Mediatek MT6360 PMIC.
> +	  Support Torch and Strobe mode independently current source.
> +	  Include Low-VF and short protection.
> +
>   config LEDS_S3C24XX
>   	tristate "LED Support for Samsung S3C24XX GPIO LEDs"
>   	depends on LEDS_CLASS
> diff --git a/drivers/leds/Makefile b/drivers/leds/Makefile
> index 45235d5..2883b4d 100644
> --- a/drivers/leds/Makefile
> +++ b/drivers/leds/Makefile
> @@ -63,6 +63,7 @@ obj-$(CONFIG_LEDS_MIKROTIK_RB532)	+= leds-rb532.o
>   obj-$(CONFIG_LEDS_MLXCPLD)		+= leds-mlxcpld.o
>   obj-$(CONFIG_LEDS_MLXREG)		+= leds-mlxreg.o
>   obj-$(CONFIG_LEDS_MT6323)		+= leds-mt6323.o
> +obj-$(CONFIG_LEDS_MT6360)		+= leds-mt6360.o
>   obj-$(CONFIG_LEDS_NET48XX)		+= leds-net48xx.o
>   obj-$(CONFIG_LEDS_NETXBIG)		+= leds-netxbig.o
>   obj-$(CONFIG_LEDS_NIC78BX)		+= leds-nic78bx.o
> diff --git a/drivers/leds/leds-mt6360.c b/drivers/leds/leds-mt6360.c
> new file mode 100644
> index 0000000..3e62547
> --- /dev/null
> +++ b/drivers/leds/leds-mt6360.c
> @@ -0,0 +1,1061 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2020 MediaTek Inc.
> + *
> + * Author: Gene Chen <gene_chen@richtek.com>
> + */
> +
> +#include <linux/init.h>
> +#include <linux/module.h>
> +#include <linux/kernel.h>
> +#include <linux/regmap.h>
> +#include <linux/platform_device.h>
> +#include <linux/interrupt.h>
> +#include <linux/of.h>
> +#include <linux/led-class-flash.h>
> +#include <media/v4l2-flash-led-class.h>
> +
> +#include <linux/mfd/mt6360.h>
> +
> +enum {
> +	MT6360_LED_ISINK1 = 0,
> +	MT6360_LED_ISINK2,
> +	MT6360_LED_ISINK3,
> +	MT6360_LED_ISINK4,
> +	MT6360_LED_MAX,
> +};
> +
> +enum {
> +	MT6360_LEDMODE_PWM = 0,
> +	MT6360_LEDMODE_BREATH,
> +	MT6360_LEDMODE_CC,
> +	MT6360_LEDMODE_MAX,
> +};
> +
> +enum {
> +	MT6360_FLED_CH1 = 0,
> +	MT6360_FLED_CH2,
> +	MT6360_FLED_MAX,
> +};
> +
> +/* ILED setting/reg */
> +#define MT6360_SINKCUR_MAX1	(0x0d)
> +#define MT6360_SINKCUR_MAX2	(0x0d)
> +#define MT6360_SINKCUR_MAX3	(0x0d)
> +#define MT6360_SINKCUR_MAX4	(0x1f)
> +#define MT6360_CURRSEL_REG1	(MT6360_PMU_RGB1_ISNK)
> +#define MT6360_CURRSEL_REG2	(MT6360_PMU_RGB2_ISNK)
> +#define MT6360_CURRSEL_REG3	(MT6360_PMU_RGB3_ISNK)
> +#define MT6360_CURRSEL_REG4	(MT6360_PMU_RGB_ML_ISNK)
> +#define MT6360_CURRSEL_MASK1	(0x0f)
> +#define MT6360_CURRSEL_MASK2	(0x0f)
> +#define MT6360_CURRSEL_MASK3	(0x0f)
> +#define MT6360_CURRSEL_MASK4	(0x1f)
> +#define MT6360_LEDMODE_REG1	(MT6360_PMU_RGB1_ISNK)
> +#define MT6360_LEDMODE_REG2	(MT6360_PMU_RGB2_ISNK)
> +#define MT6360_LEDMODE_REG3	(MT6360_PMU_RGB3_ISNK)
> +#define MT6360_LEDMODE_REG4	(0)
> +#define MT6360_LEDMODE_MASK1	(0xc0)
> +#define MT6360_LEDMODE_MASK2	(0xc0)
> +#define MT6360_LEDMODE_MASK3	(0xc0)
> +#define MT6360_LEDMODE_MASK4	(0)
> +#define MT6360_PWMDUTY_REG1	(MT6360_PMU_RGB1_DIM)
> +#define MT6360_PWMDUTY_REG2	(MT6360_PMU_RGB2_DIM)
> +#define MT6360_PWMDUTY_REG3	(MT6360_PMU_RGB3_DIM)
> +#define MT6360_PWMDUTY_REG4	(0)
> +#define MT6360_PWMDUTY_MASK1	(0xff)
> +#define MT6360_PWMDUTY_MASK2	(0xff)
> +#define MT6360_PWMDUTY_MASK3	(0xff)
> +#define MT6360_PWMDUTY_MASK4	(0)
> +#define MT6360_PWMFREQ_REG1	(MT6360_PMU_RGB12_Freq)
> +#define MT6360_PWMFREQ_REG2	(MT6360_PMU_RGB12_Freq)
> +#define MT6360_PWMFREQ_REG3	(MT6360_PMU_RGB34_Freq)
> +#define MT6360_PWMFREQ_REG4	(0)
> +#define MT6360_PWMFREQ_MASK1	(0xe0)
> +#define MT6360_PWMFREQ_MASK2	(0x1c)
> +#define MT6360_PWMFREQ_MASK3	(0xe0)
> +#define MT6360_PWMFREQ_MASK4	(0)
> +#define MT6360_BREATH_REGBASE1	(MT6360_PMU_RGB1_Tr)
> +#define MT6360_BREATH_REGBASE2	(MT6360_PMU_RGB2_Tr)
> +#define MT6360_BREATH_REGBASE3	(MT6360_PMU_RGB3_Tr)
> +#define MT6360_BREATH_REGBASE4	(0)
> +#define MT6360_LEDEN_MASK1	(0x80)
> +#define MT6360_LEDEN_MASK2	(0x40)
> +#define MT6360_LEDEN_MASK3	(0x20)
> +#define MT6360_LEDEN_MASK4	(0x10)
> +#define MT6360_LEDEN_REG	(MT6360_PMU_RGB_EN)
> +#define MT6360_LEDALLEN_MASK	(0xf0)
> +
> +#define MT6360_CHRIND_MASK	(0x08)
> +
> +/* pattern order -> toff, tr1, tr2, ton, tf1, tf2 */
> +#define MT6360_BRPATTERN_NUM	(6)
> +#define MT6360_BREATHREG_NUM	(3)
> +
> +/* FLED setting */
> +#define MT6360_CSENABLE_REG1	(MT6360_PMU_FLED_EN)
> +#define MT6360_CSENABLE_MASK1	(0x02)
> +#define MT6360_CSENABLE_REG2	(MT6360_PMU_FLED_EN)
> +#define MT6360_CSENABLE_MASK2	(0x01)
> +#define MT6360_TORBRIGHT_MAX1	(0x1f)
> +#define MT6360_TORBRIGHT_MAX2	(0x1f)
> +#define MT6360_TORBRIGHT_REG1	(MT6360_PMU_FLED1_TOR_CTRL)
> +#define MT6360_TORBRIGHT_MASK1	(0x1f)
> +#define MT6360_STRBRIGHT_REG1	(MT6360_PMU_FLED1_STRB_CTRL2)
> +#define MT6360_STRBRIGHT_MASK1	(0x7f)
> +#define MT6360_TORBRIGHT_REG2	(MT6360_PMU_FLED2_TOR_CTRL)
> +#define MT6360_TORBRIGHT_MASK2	(0x1f)
> +#define MT6360_STRBRIGHT_REG2	(MT6360_PMU_FLED2_STRB_CTRL2)
> +#define MT6360_STRBRIGHT_MASK2	(0x7f)
> +#define MT6360_TORENABLE_REG1	(MT6360_PMU_FLED_EN)
> +#define MT6360_TORENABLE_MASK1	(0x08)
> +#define MT6360_TORENABLE_REG2	(MT6360_PMU_FLED_EN)
> +#define MT6360_TORENABLE_MASK2	(0x08)
> +#define MT6360_STRBENABLE_REG1	(MT6360_PMU_FLED_EN)
> +#define MT6360_STRBENABLE_MASK1 (0x06)
> +#define MT6360_STRBENABLE_REG2	(MT6360_PMU_FLED_EN)
> +#define MT6360_STRBENABLE_MASK2 (0x04)
> +#define MT6360_STRBTIMEOUT_REG	(MT6360_PMU_FLED_STRB_CTRL)
> +#define MT6360_STRBTIMEOUT_MASK	(0x7f)
> +#define MT6360_TORCHCUR_MIN	(25000)
> +#define MT6360_TORCHCUR_STEP	(12500)
> +#define MT6360_TORCHCUR_MAX	(400000)
> +#define MT6360_STROBECUR_MIN	(50000)
> +#define MT6360_STROBECUR_STEP	(12500)
> +#define MT6360_STROBECUR_MAX	(1500000)
> +#define MT6360_STRBTIMEOUT_MIN	(64000)
> +#define MT6360_STRBTIMEOUT_STEP	(32000)
> +#define MT6360_STRBTIMEOUT_MAX	(2432000)
> +
> +#define MT6360_MASK_ULTRA_STROBE	(0x80)
> +#define MT6360_SHIFT_ULTRA_STROBE	(7)
> +
> +#define MT6360_FLEDSUPPORT_FAULTS	(LED_FAULT_UNDER_VOLTAGE |\
> +					 LED_FAULT_SHORT_CIRCUIT |\
> +					 LED_FAULT_INPUT_VOLTAGE |\
> +					 LED_FAULT_TIMEOUT)
> +
> +struct mt6360_led_platform_data {
> +	u32 rgbon_sync;
> +	u32 fled1_ultraistrb;
> +	u32 fled2_ultraistrb;
> +};
> +
> +struct breath_element_cfg {
> +	/* base, step in ms */
> +	unsigned int base;
> +	unsigned int step;
> +	unsigned int maxval;
> +	unsigned int reg_offset;
> +	unsigned int reg_mask;
> +};
> +
> +struct mt6360_led_classdev {
> +	struct led_classdev cdev;
> +	int index;
> +	struct device_node *np;
> +	unsigned int currsel_reg;
> +	unsigned int currsel_mask;
> +	unsigned int enable_mask;
> +	unsigned int mode_reg;
> +	unsigned int mode_mask;
> +	unsigned int pwmduty_reg;
> +	unsigned int pwmduty_mask;
> +	unsigned int pwmfreq_reg;
> +	unsigned int pwmfreq_mask;
> +	unsigned int breath_regbase;
> +};
> +
> +struct mt6360_fled_classdev {
> +	struct led_classdev_flash fl_cdev;
> +	int index;
> +	struct v4l2_flash *v4l2_flash;
> +	struct device_node *np;
> +	unsigned int cs_enable_reg;
> +	unsigned int cs_enable_mask;
> +	unsigned int torch_bright_reg;
> +	unsigned int torch_bright_mask;
> +	unsigned int torch_enable_reg;
> +	unsigned int torch_enable_mask;
> +	unsigned int strobe_bright_reg;
> +	unsigned int strobe_bright_mask;
> +	unsigned int strobe_enable_reg;
> +	unsigned int strobe_enable_mask;
> +	unsigned int strobe_external_reg;
> +	unsigned int strobe_external_mask;
> +	u32 faults;
> +};
> +
> +struct mt6360_led_data {
> +	struct device *dev;
> +	struct mt6360_led_platform_data *pdata;
> +	struct regmap *regmap;
> +	struct mt6360_led_classdev mtled_cdev[MT6360_LED_MAX];
> +	struct mt6360_fled_classdev mtfled_cdev[MT6360_FLED_MAX];
> +	unsigned long fl_torch_flags;
> +	unsigned long fl_strobe_flags;
> +};
> +
> +static const struct mt6360_led_platform_data def_platform_data = {
> +	.rgbon_sync = 0,
> +	.fled1_ultraistrb = 1,
> +	.fled2_ultraistrb = 1,
> +};
> +
> +static int mt6360_led_brightness_set(struct led_classdev *cdev,
> +				      enum led_brightness brightness)
> +{
> +	struct mt6360_led_classdev *mtled_cdev =
> +					     (struct mt6360_led_classdev *)cdev;
> +	struct mt6360_led_data *mld = dev_get_drvdata(cdev->dev->parent);
> +	int shift, sync_regval = 0, ret;
> +
> +	/* if isink1 user control, set chrind function to sw mode */
> +	if (mtled_cdev->index == MT6360_LED_ISINK1) {
> +		ret = regmap_update_bits(mld->regmap,
> +				   MT6360_PMU_RGB_EN, MT6360_CHRIND_MASK, 0xff);
> +		if (ret < 0)
> +			dev_err(cdev->dev, "disable chrind func fail\n");
> +	}
> +	if (brightness == LED_OFF) {
> +		ret = regmap_update_bits(mld->regmap,
> +				  MT6360_LEDEN_REG, mtled_cdev->enable_mask, 0);
> +		if (ret < 0)
> +			return ret;
> +		if (mtled_cdev->mode_reg == 0)
> +			goto out_bright_set;
> +		/* if off, force config to cc_mode */
> +		shift = ffs(mtled_cdev->mode_mask) - 1;
> +		ret = regmap_update_bits(mld->regmap, mtled_cdev->mode_reg,
> +			     mtled_cdev->mode_mask, MT6360_LEDMODE_CC << shift);
> +		if (ret < 0)
> +			dev_err(cdev->dev, "config cc mode fail\n");
> +		goto out_bright_set;
> +	}
> +	shift = ffs(mtled_cdev->currsel_mask) - 1;
> +	brightness -= 1;
> +	ret = regmap_update_bits(mld->regmap, mtled_cdev->currsel_reg,
> +				 mtled_cdev->currsel_mask, brightness << shift);
> +	if (ret < 0)
> +		return ret;
> +	if (mld->pdata->rgbon_sync) {
> +		ret = regmap_read(mld->regmap, MT6360_LEDEN_REG,  &sync_regval);
> +		if (ret < 0)
> +			goto out_bright_set;
> +		ret = regmap_update_bits(mld->regmap,
> +				     MT6360_LEDEN_REG, MT6360_LEDALLEN_MASK, 0);
> +		if (ret < 0)
> +			goto out_bright_set;
> +		sync_regval |= mtled_cdev->enable_mask;
> +		ret = regmap_update_bits(mld->regmap, MT6360_LEDEN_REG,
> +					 MT6360_LEDALLEN_MASK, sync_regval);
> +	} else {
> +		ret = regmap_update_bits(mld->regmap, MT6360_LEDEN_REG,
> +					 mtled_cdev->enable_mask, 0xff);
> +	}
> +out_bright_set:
> +	return ret;
> +}
> +
> +static enum led_brightness mt6360_led_brightness_get(struct led_classdev *cdev)
> +{
> +	struct mt6360_led_classdev *mtled_cdev =
> +					     (struct mt6360_led_classdev *)cdev;
> +	struct mt6360_led_data *mld = dev_get_drvdata(cdev->dev->parent);
> +	unsigned int regval = 0;
> +	int shift = ffs(mtled_cdev->currsel_mask) - 1, ret;
> +
> +	ret = regmap_read(mld->regmap, MT6360_LEDEN_REG, &regval);
> +	if (ret < 0) {
> +		dev_err(cdev->dev, "%s: get enable fail\n", __func__);
> +		return LED_OFF;
> +	}
> +	if (!(regval & mtled_cdev->enable_mask))
> +		return LED_OFF;
> +	ret = regmap_read(mld->regmap, mtled_cdev->currsel_reg, &regval);
> +	if (ret < 0) {
> +		dev_err(cdev->dev, "%s: get isink fail\n", __func__);
> +		return LED_OFF;
> +	}
> +	regval &= mtled_cdev->currsel_mask;
> +	regval >>= shift;
> +	return (regval + 1);
> +}
> +
> +static const unsigned int dim_freqs[] = {
> +	4, 8, 250, 500, 1000, 2000, 4000, 8000,
> +};
> +
> +static int mt6360_led_blink_set(struct led_classdev *cdev,
> +			     unsigned long *delay_on,  unsigned long *delay_off)
> +{
> +	struct mt6360_led_classdev *mtled_cdev =
> +					     (struct mt6360_led_classdev *)cdev;
> +	struct mt6360_led_data *mld = dev_get_drvdata(cdev->dev->parent);
> +	int freq, duty, shift, sum, ret;
> +
> +	if (mtled_cdev->mode_reg == 0)
> +		return -ENOTSUPP;
> +	if (*delay_on == 0 && *delay_off == 0)
> +		*delay_on = *delay_off = 500;
> +	sum = *delay_on + *delay_off;
> +	for (freq = 0; freq < ARRAY_SIZE(dim_freqs); freq++) {
> +		if (sum <= dim_freqs[freq])
> +			break;
> +	}
> +	if (freq == ARRAY_SIZE(dim_freqs)) {
> +		dev_err(cdev->dev, "exceed pwm frequency max\n");
> +		return -EINVAL;
> +	}
> +	/* invert */
> +	freq = ARRAY_SIZE(dim_freqs) - 1 - freq;
> +	shift = ffs(mtled_cdev->pwmfreq_mask) - 1;
> +	ret = regmap_update_bits(mld->regmap, mtled_cdev->pwmfreq_reg,
> +				 mtled_cdev->pwmfreq_mask, freq << shift);
> +	if (ret < 0) {
> +		dev_err(cdev->dev, "Failed to set pwmfreq\n");
> +		return ret;
> +	}
> +	duty = 255 * (*delay_on) / sum;
> +	shift = ffs(mtled_cdev->pwmduty_mask) - 1;
> +	ret = regmap_update_bits(mld->regmap, mtled_cdev->pwmduty_reg,
> +				 mtled_cdev->pwmduty_mask, duty << shift);
> +	if (ret < 0) {
> +		dev_err(cdev->dev, "Failed to set pwmduty\n");
> +		return ret;
> +	}
> +	shift = ffs(mtled_cdev->mode_mask) - 1;
> +	ret = regmap_update_bits(mld->regmap, mtled_cdev->mode_reg,
> +			    mtled_cdev->mode_mask, MT6360_LEDMODE_PWM << shift);
> +	return ret;
> +}
> +
> +#define MT6360_LED_DESC(_id)  {						\
> +	.cdev = {							\
> +		.name = "mt6360_isink" #_id,				\
> +		.max_brightness = MT6360_SINKCUR_MAX##_id,		\
> +		.brightness_set_blocking = mt6360_led_brightness_set,	\
> +		.brightness_get = mt6360_led_brightness_get,		\
> +		.blink_set = mt6360_led_blink_set,			\
> +	},								\
> +	.index = MT6360_LED_ISINK##_id,					\
> +	.currsel_reg = MT6360_CURRSEL_REG##_id,				\
> +	.currsel_mask = MT6360_CURRSEL_MASK##_id,			\
> +	.enable_mask = MT6360_LEDEN_MASK##_id,				\
> +	.mode_reg = MT6360_LEDMODE_REG##_id,				\
> +	.mode_mask = MT6360_LEDMODE_MASK##_id,				\
> +	.pwmduty_reg = MT6360_PWMDUTY_REG##_id,				\
> +	.pwmduty_mask = MT6360_PWMDUTY_MASK##_id,			\
> +	.pwmfreq_reg = MT6360_PWMFREQ_REG##_id,				\
> +	.pwmfreq_mask = MT6360_PWMFREQ_MASK##_id,			\
> +	.breath_regbase = MT6360_BREATH_REGBASE##_id,			\
> +}
> +
> +/* ISINK 1/2/3 for RGBLED, ISINK4 for MoonLight */
> +static const struct mt6360_led_classdev def_led_classdev[MT6360_LED_MAX] = {
> +	MT6360_LED_DESC(1),
> +	MT6360_LED_DESC(2),
> +	MT6360_LED_DESC(3),
> +	MT6360_LED_DESC(4),
> +};
> +
> +static inline bool mt6360_fled_check_flags_if_any(unsigned long *flags)
> +{
> +	return (*flags) ? true : false;
> +}
> +
> +static int mt6360_fled_strobe_brightness_set(
> +			   struct led_classdev_flash *fled_cdev, u32 brightness)
> +{
> +	struct led_classdev *led_cdev = &fled_cdev->led_cdev;
> +	struct mt6360_led_data *mld = dev_get_drvdata(led_cdev->dev->parent);
> +	struct led_flash_setting *fs = &fled_cdev->brightness;
> +	struct mt6360_fled_classdev *mtfled_cdev = (void *)fled_cdev;
> +	int shift;
> +	u32 val;
> +
> +	val = brightness;
> +	val = (val - fs->min) / fs->step;
> +	shift = ffs(mtfled_cdev->strobe_bright_mask) - 1;
> +	return regmap_update_bits(mld->regmap, mtfled_cdev->strobe_bright_reg,
> +				 mtfled_cdev->strobe_bright_mask, val << shift);
> +}
> +
> +static int mt6360_fled_strobe_brightness_get(
> +			  struct led_classdev_flash *fled_cdev, u32 *brightness)
> +{
> +	struct led_classdev *led_cdev = &fled_cdev->led_cdev;
> +	struct mt6360_led_data *mld = dev_get_drvdata(led_cdev->dev->parent);
> +	struct led_flash_setting *fs = &fled_cdev->brightness;
> +	struct mt6360_fled_classdev *mtfled_cdev = (void *)fled_cdev;
> +	int shift, ret;
> +	u32 regval = 0;
> +
> +	ret = regmap_read(mld->regmap, mtfled_cdev->strobe_bright_reg, &regval);
> +	if (ret < 0)
> +		return ret;
> +	regval &= mtfled_cdev->strobe_bright_mask;
> +	shift = ffs(mtfled_cdev->strobe_bright_mask) - 1;
> +	regval >>= shift;
> +	/* convert to microamp value */
> +	*brightness = regval * fs->step + fs->min;
> +	return 0;
> +}
> +
> +static int mt6360_fled_strobe_set(
> +			       struct led_classdev_flash *fled_cdev, bool state)
> +{
> +	struct led_classdev *led_cdev = &fled_cdev->led_cdev;
> +	struct mt6360_led_data *mld = dev_get_drvdata(led_cdev->dev->parent);
> +	struct mt6360_fled_classdev *mtfled_cdev = (void *)fled_cdev;
> +	int id = mtfled_cdev->index, ret;
> +
> +	if (!(state ^ test_bit(id, &mld->fl_strobe_flags)))
> +		return 0;
> +	if (mt6360_fled_check_flags_if_any(&mld->fl_torch_flags)) {
> +		dev_err(led_cdev->dev,
> +			"Disable all leds torch [%lu]\n", mld->fl_torch_flags);
> +		return -EINVAL;
> +	}
> +	ret = regmap_update_bits(mld->regmap, mtfled_cdev->cs_enable_reg,
> +				 mtfled_cdev->cs_enable_mask, state ? 0xff : 0);
> +	if (ret < 0) {
> +		dev_err(led_cdev->dev, "Fail to set cs enable [%d]\n", state);
> +		goto out_strobe_set;
> +	}
> +	ret = regmap_update_bits(mld->regmap, mtfled_cdev->strobe_enable_reg,
> +			     mtfled_cdev->strobe_enable_mask, state ? 0xff : 0);
> +	if (ret < 0) {
> +		dev_err(led_cdev->dev, "Fail to set strb enable [%d]\n", state);
> +		goto out_strobe_set;
> +	}
> +	if (state) {
> +		if (!mt6360_fled_check_flags_if_any(&mld->fl_strobe_flags))
> +			usleep_range(5000, 6000);
> +		set_bit(id, &mld->fl_strobe_flags);
> +		mtfled_cdev->faults = 0;
> +	} else {
> +		clear_bit(id, &mld->fl_strobe_flags);
> +		if (!mt6360_fled_check_flags_if_any(&mld->fl_strobe_flags))
> +			usleep_range(400, 500);
> +	}
> +out_strobe_set:
> +	return ret;
> +}
> +
> +static int mt6360_fled_strobe_get(
> +			      struct led_classdev_flash *fled_cdev, bool *state)
> +{
> +	struct led_classdev *led_cdev = &fled_cdev->led_cdev;
> +	struct mt6360_led_data *mld = dev_get_drvdata(led_cdev->dev->parent);
> +	struct mt6360_fled_classdev *mtfled_cdev = (void *)fled_cdev;
> +	int id = mtfled_cdev->index;
> +
> +	*state = test_bit(id, &mld->fl_strobe_flags) ? true : false;
> +	return 0;
> +}
> +
> +static int mt6360_fled_strobe_timeout_set(
> +			      struct led_classdev_flash *fled_cdev, u32 timeout)
> +{
> +	struct led_classdev *led_cdev = &fled_cdev->led_cdev;
> +	struct mt6360_led_data *mld = dev_get_drvdata(led_cdev->dev->parent);
> +	struct led_flash_setting *ts = &fled_cdev->timeout;
> +	int shift, ret;
> +	u32 regval;
> +
> +	regval = (timeout - ts->min) / ts->step;
> +	shift = ffs(MT6360_STRBTIMEOUT_MASK) - 1;
> +	ret = regmap_update_bits(mld->regmap, MT6360_STRBTIMEOUT_REG,
> +				 MT6360_STRBTIMEOUT_MASK, regval << shift);
> +	return ret;
> +}
> +
> +static int mt6360_fled_strobe_fault_get(
> +			       struct led_classdev_flash *fled_cdev, u32 *fault)
> +{
> +	struct mt6360_fled_classdev *mtfled_cdev = (void *)fled_cdev;
> +
> +	*fault = mtfled_cdev->faults;
> +	return 0;
> +}
> +
> +static const struct led_flash_ops mt6360_fled_ops = {
> +	.flash_brightness_set = mt6360_fled_strobe_brightness_set,
> +	.flash_brightness_get = mt6360_fled_strobe_brightness_get,
> +	.strobe_set = mt6360_fled_strobe_set,
> +	.strobe_get = mt6360_fled_strobe_get,
> +	.timeout_set = mt6360_fled_strobe_timeout_set,
> +	.fault_get = mt6360_fled_strobe_fault_get,
> +};
> +
> +static int mt6360_fled_brightness_set(struct led_classdev *led_cdev,
> +				      enum led_brightness brightness)
> +{
> +	struct led_classdev_flash *lcf = lcdev_to_flcdev(led_cdev);
> +	struct mt6360_led_data *mld = dev_get_drvdata(led_cdev->dev->parent);
> +	struct mt6360_fled_classdev *mtfled_cdev = (void *)lcf;
> +	int id = mtfled_cdev->index, shift, keep, ret;
> +
> +	if (mt6360_fled_check_flags_if_any(&mld->fl_strobe_flags)) {
> +		dev_err(led_cdev->dev,
> +		       "Disable all leds strobe [%lu]\n", mld->fl_strobe_flags);
> +		return -EINVAL;
> +	}
> +	if (brightness == LED_OFF) {
> +		clear_bit(id, &mld->fl_torch_flags);
> +		keep = mt6360_fled_check_flags_if_any(&mld->fl_torch_flags);
> +		ret = regmap_update_bits(mld->regmap,
> +					 mtfled_cdev->torch_enable_reg,
> +					 mtfled_cdev->torch_enable_mask,
> +					 keep ? 0xff : 0);
> +		if (ret < 0) {
> +			dev_err(led_cdev->dev, "Fail to set torch disable\n");
> +			goto out_bright_set;
> +		}
> +		ret = regmap_update_bits(mld->regmap,
> +					 mtfled_cdev->cs_enable_reg,
> +					 mtfled_cdev->cs_enable_mask, 0);
> +		if (ret < 0)
> +			dev_err(led_cdev->dev, "Fail to set torch disable\n");
> +		goto out_bright_set;
> +	}
> +	shift = ffs(mtfled_cdev->torch_bright_mask) - 1;
> +	brightness -= 1;
> +	ret = regmap_update_bits(mld->regmap, mtfled_cdev->torch_bright_reg,
> +			   mtfled_cdev->torch_bright_mask, brightness << shift);
> +	if (ret < 0) {
> +		dev_err(led_cdev->dev,
> +			"Fail to set torch bright [%d]\n", brightness);
> +		goto out_bright_set;
> +	}
> +	ret = regmap_update_bits(mld->regmap, mtfled_cdev->cs_enable_reg,
> +				 mtfled_cdev->cs_enable_mask, 0xff);
> +	if (ret < 0) {
> +		dev_err(led_cdev->dev, "Fail to set cs enable\n");
> +		goto out_bright_set;
> +	}
> +	ret = regmap_update_bits(mld->regmap, mtfled_cdev->torch_enable_reg,
> +				 mtfled_cdev->torch_enable_mask, 0xff);
> +	set_bit(id, &mld->fl_torch_flags);
> +out_bright_set:
> +	return ret;
> +}
> +
> +static enum led_brightness mt6360_fled_brightness_get(
> +						  struct led_classdev *led_cdev)
> +{
> +	struct led_classdev_flash *lcf = lcdev_to_flcdev(led_cdev);
> +	struct mt6360_led_data *mld = dev_get_drvdata(led_cdev->dev->parent);
> +	struct mt6360_fled_classdev *mtfled_cdev = (void *)lcf;
> +	int id = mtfled_cdev->index, shift, ret;
> +	u32 regval = 0;
> +
> +	if (!test_bit(id, &mld->fl_torch_flags))
> +		return LED_OFF;
> +	ret = regmap_read(mld->regmap, mtfled_cdev->torch_bright_reg, &regval);
> +	if (ret < 0) {
> +		dev_err(led_cdev->dev, "%s: Fail to get torb reg\n", __func__);
> +		return LED_OFF;
> +	}
> +	shift = ffs(mtfled_cdev->torch_bright_mask) - 1;
> +	regval &= mtfled_cdev->torch_bright_mask;
> +	regval >>= shift;
> +	return (regval + 1);
> +}
> +
> +#define MT6360_FLED_DESC(_id)  {					\
> +	.fl_cdev = {							\
> +	 .led_cdev = {							\
> +		.name = "mt6360_fled_ch" #_id,				\
> +		.max_brightness = MT6360_TORBRIGHT_MAX##_id,		\
> +		.brightness_set_blocking =  mt6360_fled_brightness_set,	\
> +		.brightness_get = mt6360_fled_brightness_get,		\
> +		.flags = LED_DEV_CAP_FLASH,				\
> +	 },								\
> +	 .brightness = {						\
> +		.min = MT6360_STROBECUR_MIN,				\
> +		.step = MT6360_STROBECUR_STEP,				\
> +		.max = MT6360_STROBECUR_MAX,				\
> +		.val = MT6360_STROBECUR_MIN,				\
> +	 },								\
> +	 .timeout = {							\
> +		.min = MT6360_STRBTIMEOUT_MIN,				\
> +		.step = MT6360_STRBTIMEOUT_STEP,			\
> +		.max = MT6360_STRBTIMEOUT_MAX,				\
> +		.val = MT6360_STRBTIMEOUT_MIN,				\
> +	 },								\
> +	 .ops = &mt6360_fled_ops,					\
> +	},								\
> +	.index = MT6360_FLED_CH##_id,					\
> +	.cs_enable_reg = MT6360_CSENABLE_REG##_id,			\
> +	.cs_enable_mask = MT6360_CSENABLE_MASK##_id,			\
> +	.torch_bright_reg = MT6360_TORBRIGHT_REG##_id,			\
> +	.torch_bright_mask = MT6360_TORBRIGHT_MASK##_id,		\
> +	.torch_enable_reg = MT6360_TORENABLE_REG##_id,			\
> +	.torch_enable_mask = MT6360_TORENABLE_MASK##_id,		\
> +	.strobe_bright_reg = MT6360_STRBRIGHT_REG##_id,			\
> +	.strobe_bright_mask = MT6360_STRBRIGHT_MASK##_id,		\
> +	.strobe_enable_reg = MT6360_STRBENABLE_REG##_id,		\
> +	.strobe_enable_mask = MT6360_STRBENABLE_MASK##_id,		\
> +}
> +
> +static const struct mt6360_fled_classdev def_fled_classdev[MT6360_FLED_MAX] = {
> +	MT6360_FLED_DESC(1),
> +	MT6360_FLED_DESC(2),
> +};
> +
> +#if IS_ENABLED(CONFIG_V4L2_FLASH_LED_CLASS)
> +static int mt6360_fled_external_strobe_set(
> +				     struct v4l2_flash *v4l2_flash, bool enable)
> +{
> +	struct led_classdev_flash *lcf = v4l2_flash->fled_cdev;
> +	struct led_classdev *led_cdev = &lcf->led_cdev;
> +	struct mt6360_led_data *mld = dev_get_drvdata(led_cdev->dev->parent);
> +	struct mt6360_fled_classdev *mtfled_cdev = (void *)lcf;
> +	int id = mtfled_cdev->index, ret;
> +
> +	if (!(enable ^ test_bit(id, &mld->fl_strobe_flags)))
> +		return 0;
> +	if (mt6360_fled_check_flags_if_any(&mld->fl_torch_flags)) {
> +		dev_err(led_cdev->dev,
> +			"Disable all leds torch [%lu]\n", mld->fl_torch_flags);
> +		return -EINVAL;
> +	}
> +	ret = regmap_update_bits(mld->regmap, mtfled_cdev->cs_enable_reg,
> +			  mtfled_cdev->cs_enable_mask, enable ? 0xff : 0);
> +	if (enable) {
> +		set_bit(id, &mld->fl_strobe_flags);
> +		mtfled_cdev->faults = 0;
> +	} else
> +		clear_bit(id, &mld->fl_strobe_flags);
> +	return ret;
> +}
> +
> +static const struct v4l2_flash_ops v4l2_flash_ops = {
> +	.external_strobe_set = mt6360_fled_external_strobe_set,
> +};
> +
> +static void mt6360_init_v4l2_flash_config(
> +				       struct mt6360_fled_classdev *mtfled_cdev,
> +				       struct v4l2_flash_config *config)
> +{
> +	struct led_flash_setting *torch_intensity = &config->intensity;
> +	struct led_classdev *led_cdev = &(mtfled_cdev->fl_cdev.led_cdev);
> +	s32 val;
> +
> +	snprintf(config->dev_name, sizeof(config->dev_name),
> +		 "%s", mtfled_cdev->fl_cdev.led_cdev.name);
> +	torch_intensity->min = MT6360_TORCHCUR_MIN;
> +	torch_intensity->step = MT6360_TORCHCUR_STEP;
> +	val = MT6360_TORCHCUR_MIN;
> +	val += ((led_cdev->max_brightness - 1) * MT6360_TORCHCUR_STEP);
> +	torch_intensity->val = torch_intensity->max = val;
> +	config->flash_faults |= MT6360_FLEDSUPPORT_FAULTS;
> +	config->has_external_strobe = 1;
> +}
> +#else
> +static const struct v4l2_flash_ops v4l2_flash_ops;
> +
> +static void mt6360_init_v4l2_flash_config(
> +				       struct mt6360_fled_classdev *mtfled_cdev,
> +				       struct v4l2_flash_config *config)
> +{
> +}
> +#endif /* IS_ENABLED(CONFIG_V4L2_FLASH_LED_CLASS) */
> +
> +static irqreturn_t mt6360_pmu_fled_lvf_evt_handler(int irq, void *data)
> +{
> +	struct mt6360_led_data *mld = data;
> +
> +	dev_err(mld->dev, "%s\n", __func__);
> +	mld->mtfled_cdev[MT6360_FLED_CH1].faults |= LED_FAULT_UNDER_VOLTAGE;
> +	mld->mtfled_cdev[MT6360_FLED_CH2].faults |= LED_FAULT_UNDER_VOLTAGE;
> +	return IRQ_HANDLED;
> +}
> +
> +static irqreturn_t mt6360_pmu_fled2_short_evt_handler(int irq, void *data)
> +{
> +	struct mt6360_led_data *mld = data;
> +
> +	dev_err(mld->dev, "%s\n", __func__);
> +	mld->mtfled_cdev[MT6360_FLED_CH2].faults |= LED_FAULT_SHORT_CIRCUIT;
> +	return IRQ_HANDLED;
> +}
> +
> +static irqreturn_t mt6360_pmu_fled1_short_evt_handler(int irq, void *data)
> +{
> +	struct mt6360_led_data *mld = data;
> +
> +	dev_err(mld->dev, "%s\n", __func__);
> +	mld->mtfled_cdev[MT6360_FLED_CH1].faults |= LED_FAULT_SHORT_CIRCUIT;
> +	return IRQ_HANDLED;
> +}
> +
> +static irqreturn_t mt6360_pmu_fled2_strb_to_evt_handler(int irq, void *data)
> +{
> +	struct mt6360_led_data *mld = data;
> +
> +	mld->mtfled_cdev[MT6360_FLED_CH2].faults |= LED_FAULT_TIMEOUT;
> +	return IRQ_HANDLED;
> +}
> +
> +static irqreturn_t mt6360_pmu_fled1_strb_to_evt_handler(int irq, void *data)
> +{
> +	struct mt6360_led_data *mld = data;
> +
> +	mld->mtfled_cdev[MT6360_FLED_CH1].faults |= LED_FAULT_TIMEOUT;
> +	return IRQ_HANDLED;
> +}
> +
> +static irqreturn_t mt6360_pmu_fled_chg_vinovp_evt_handler(int irq, void *data)
> +{
> +	struct mt6360_led_data *mld = data;
> +
> +	dev_warn(mld->dev, "%s\n", __func__);
> +	mld->mtfled_cdev[MT6360_FLED_CH1].faults |= LED_FAULT_INPUT_VOLTAGE;
> +	mld->mtfled_cdev[MT6360_FLED_CH2].faults |= LED_FAULT_INPUT_VOLTAGE;
> +	return IRQ_HANDLED;
> +}
> +
> +static struct mt6360_pmu_irq_desc mt6360_pmu_fled_irq_desc[] = {
> +	{ "fled_chg_vinovp_evt",  mt6360_pmu_fled_chg_vinovp_evt_handler },
> +	{ "fled_lvf_evt", mt6360_pmu_fled_lvf_evt_handler },
> +	{ "fled2_short_evt", mt6360_pmu_fled2_short_evt_handler },
> +	{ "fled1_short_evt", mt6360_pmu_fled1_short_evt_handler },
> +	{ "fled2_strb_to_evt", mt6360_pmu_fled2_strb_to_evt_handler },
> +	{ "fled1_strb_to_evt", mt6360_pmu_fled1_strb_to_evt_handler },
> +};
> +
> +static int mt6360_fled_irq_register(struct platform_device *pdev)
> +{
> +	struct mt6360_pmu_irq_desc *irq_desc;
> +	int i, irq, ret;
> +
> +	for (i = 0; i < ARRAY_SIZE(mt6360_pmu_fled_irq_desc); i++) {
> +		irq_desc = mt6360_pmu_fled_irq_desc + i;
> +		if (unlikely(!irq_desc->name))
> +			continue;
> +		irq = platform_get_irq_byname(pdev, irq_desc->name);
> +		if (irq < 0)
> +			continue;
> +		ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
> +						irq_desc->irq_handler,
> +						IRQF_TRIGGER_FALLING,
> +						irq_desc->name,
> +						platform_get_drvdata(pdev));
> +		if (ret < 0) {
> +			dev_err(&pdev->dev,
> +				"request %s irq fail\n", irq_desc->name);
> +			return ret;
> +		}
> +	}
> +	return 0;
> +}
> +
> +static int mt6360_iled_parse_dt(struct device *dev,
> +				struct mt6360_led_data *mld)
> +{
> +	struct device_node *iled_np, *child;
> +	struct mt6360_led_classdev *mtled_cdev;
> +	u32 val;
> +	int ret;
> +
> +	if (!dev->of_node)
> +		return 0;
> +	iled_np = of_find_node_by_name(dev->of_node, "iled");
This should really follow the LED node naming convention
> +	if (!iled_np)
> +		return 0;
> +	for_each_available_child_of_node(iled_np, child) {

Please use fwnode APIs


> +		ret = of_property_read_u32(child, "reg", &val);
> +		if (ret) {
> +			dev_err(dev, "Fail to read reg property\n");
> +			continue;
> +		}
> +		if (val >= MT6360_LED_MAX) {
> +			dev_err(dev, "Invalid iled reg [%u]\n", val);
> +			ret = -EINVAL;
> +			goto out_iled_dt;
> +		}
> +		mtled_cdev = mld->mtled_cdev + val;
> +
> +		of_property_read_string(child,
> +					"label", &(mtled_cdev->cdev.name));
> +		of_property_read_string(child, "linux,default-trigger",
> +					&(mtled_cdev->cdev.default_trigger));
Same here
> +		mtled_cdev->np = child;
> +	}
> +	return 0;
> +out_iled_dt:
> +	of_node_put(child);
> +	return ret;
> +}
> +
> +static int mt6360_fled_parse_dt(struct device *dev,
> +				struct mt6360_led_data *mld)
> +{
> +	struct device_node *fled_np, *child;
> +	struct mt6360_fled_classdev *mtfled_cdev;
> +	struct led_classdev *led_cdev;
> +	struct led_flash_setting *fs;
> +	u32 val;
> +	int ret;
> +
> +	if (!dev->of_node)
> +		return 0;

Is this really necessary can this be done once by the caller before 
calling each parse_dt function?


> +	fled_np = of_find_node_by_name(dev->of_node, "fled");
> +	if (!fled_np)
> +		return 0;
> +	for_each_available_child_of_node(fled_np, child) {
> +		ret = of_property_read_u32(child, "reg", &val);
> +		if (ret) {
> +			dev_err(dev, "Fail to read reg property\n");
> +			continue;
> +		}
> +		if (val >= MT6360_FLED_MAX) {
> +			dev_err(dev, "Invalid fled reg [%u]\n", val);
> +			ret = -EINVAL;
> +			goto out_fled_dt;
> +		}
> +		mtfled_cdev = mld->mtfled_cdev + val;
> +
> +		of_property_read_string(child, "label",
> +					&(mtfled_cdev->fl_cdev.led_cdev.name));
> +		ret = of_property_read_u32(child, "led-max-microamp", &val);
> +		if (ret) {
> +			dev_warn(dev, "led-max-microamp property missing\n");
> +			val = MT6360_TORCHCUR_MIN;
> +		}
> +		if (val < MT6360_TORCHCUR_MIN)
> +			val = MT6360_TORCHCUR_MIN;
> +		val = (val - MT6360_TORCHCUR_MIN) / MT6360_TORCHCUR_STEP + 1;
> +		led_cdev = &(mtfled_cdev->fl_cdev.led_cdev);
> +		led_cdev->max_brightness = min(led_cdev->max_brightness, val);
> +		ret = of_property_read_u32(child, "flash-max-microamp", &val);
> +		if (ret) {
> +			dev_warn(dev, "flash-max-microamp property missing\n");
> +			val = MT6360_STROBECUR_MIN;
> +		}
> +		if (val < MT6360_STROBECUR_MIN)
> +			val = MT6360_STROBECUR_MIN;
> +		fs = &(mtfled_cdev->fl_cdev.brightness);
> +		fs->val = fs->max = min(fs->max, val);
> +		ret = of_property_read_u32(child, "flash-max-timeout", &val);
> +		if (ret) {
> +			dev_warn(dev, "flash-max-timeout property missing\n");
> +			val = MT6360_STRBTIMEOUT_MIN;
> +		}
> +		if (val < MT6360_STRBTIMEOUT_MIN)
> +			val = MT6360_STRBTIMEOUT_MIN;
> +		fs = &(mtfled_cdev->fl_cdev.timeout);
> +		fs->val = fs->max = min(fs->max, val);
> +		mtfled_cdev->np = child;
> +	}
> +	return 0;
> +out_fled_dt:
> +	of_node_put(child);
> +	return ret;
> +}
> +
> +static void mt6360_led_parse_dt_data(struct device *dev,
> +				     struct mt6360_led_platform_data *pdata)
> +{
> +	struct device_node *np = dev->of_node;
> +	int i, ret;
> +	const struct {
> +		const char *name;
> +		u32 *val_ptr;
> +	} u32_opts[] = {
> +		{ "rgbon_sync", &pdata->rgbon_sync },
> +		{ "fled1_ultraistrb", &pdata->fled1_ultraistrb },
> +		{ "fled2_ultraistrb", &pdata->fled2_ultraistrb },
> +	};
> +
> +	memcpy(pdata, &def_platform_data, sizeof(*pdata));
> +	for (i = 0; i < ARRAY_SIZE(u32_opts); i++) {
> +		ret = of_property_read_u32(np, u32_opts[i].name,
> +					   u32_opts[i].val_ptr);
> +		if (ret)
> +			dev_err(dev, "error reading '%s'\n", u32_opts[i].name);
> +	}
> +}
> +
> +static int mt6360_led_apply_pdata(struct mt6360_led_data *mld,
> +				   struct mt6360_led_platform_data *pdata)
> +{
> +	int i, ret;
> +	const struct {
> +		u32 *val_ptr;
> +		u8 reg;
> +		u8 mask;
> +		u8 shift;
> +	} sel_props[] = {
> +		{
> +			&pdata->fled1_ultraistrb, MT6360_PMU_FLED1_STRB_CTRL2,
> +			MT6360_MASK_ULTRA_STROBE, MT6360_SHIFT_ULTRA_STROBE,
> +		},
> +		{
> +			&pdata->fled2_ultraistrb, MT6360_PMU_FLED2_STRB_CTRL2,
> +			MT6360_MASK_ULTRA_STROBE, MT6360_SHIFT_ULTRA_STROBE,
> +		},
> +	};
> +
> +	for (i = 0; i < ARRAY_SIZE(sel_props); i++) {
> +		ret = regmap_update_bits(mld->regmap,
> +					 sel_props[i].reg,
> +					 sel_props[i].mask,
> +					 *sel_props[i].val_ptr <<
> +						sel_props[i].shift);
> +		if (ret < 0)
> +			return ret;
> +	}
> +	return 0;
> +}
> +
> +static int mt6360_led_probe(struct platform_device *pdev)
> +{
> +	struct mt6360_led_platform_data *pdata = dev_get_platdata(&pdev->dev);
> +	struct mt6360_led_data *mld;
> +	struct mt6360_led_classdev *mtled_cdev;
> +	struct mt6360_fled_classdev *mtfled_cdev;
> +	struct v4l2_flash_config v4l2_config;
> +	int i, ret;
> +
> +	mld = devm_kzalloc(&pdev->dev, sizeof(*mld), GFP_KERNEL);
> +	if (!mld)
> +		return -ENOMEM;
> +
> +	if (pdev->dev.of_node) {
> +		pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
> +		if (!pdata)
> +			return -ENOMEM;
> +		mt6360_led_parse_dt_data(&pdev->dev, pdata);
> +	}
> +
> +	if (!pdata) {
> +		dev_err(&pdev->dev, "no platform data specified\n");
> +		return -EINVAL;
> +	}
> +
> +	mld->dev = &pdev->dev;
> +	mld->pdata = pdata;
> +	platform_set_drvdata(pdev, mld);
> +
> +	mld->regmap = dev_get_regmap(pdev->dev.parent, NULL);
> +	if (!mld->regmap) {
> +		dev_err(&pdev->dev, "Failed to get parent regmap\n");
> +		return -ENODEV;
> +	}
> +
> +	ret = mt6360_led_apply_pdata(mld, pdata);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "apply pdata fail\n");
> +		return ret;
> +	}
> +
> +	memcpy(mld->mtled_cdev, def_led_classdev, sizeof(def_led_classdev));
> +	ret = mt6360_iled_parse_dt(&pdev->dev, mld);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "Failed to parse iled dt\n");
> +		return ret;
> +	}
> +
> +	for (i = 0; i < MT6360_LED_MAX; i++) {
> +		mtled_cdev = mld->mtled_cdev + i;
> +		ret = devm_led_classdev_register(&pdev->dev,
> +						 &(mtled_cdev->cdev));
> +		if (ret < 0) {
> +			dev_err(&pdev->dev, "Failed to register led[%d]\n", i);
> +			return ret;
> +		}
> +		mtled_cdev->cdev.dev->of_node = mtled_cdev->np;
> +	}
> +
> +	memcpy(mld->mtfled_cdev, def_fled_classdev, sizeof(def_fled_classdev));
> +	ret = mt6360_fled_parse_dt(&pdev->dev, mld);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "Fail to parse fled dt\n");
> +		return ret;
> +	}
> +
> +	for (i = 0; i < MT6360_FLED_MAX; i++) {
> +		mtfled_cdev = mld->mtfled_cdev + i;
> +		ret = led_classdev_flash_register(&pdev->dev,
> +						  &mtfled_cdev->fl_cdev);

use devm_* function

Dan

> +		if (ret < 0) {
> +			dev_err(&pdev->dev, "Failed to register fled[%d]\n", i);
> +			goto out_fled_cdev;
> +		}
> +	}
> +
> +	for (i = 0; i < MT6360_FLED_MAX; i++) {
> +		mtfled_cdev = mld->mtfled_cdev + i;
> +		memset(&v4l2_config, 0, sizeof(v4l2_config));
> +		mt6360_init_v4l2_flash_config(mtfled_cdev, &v4l2_config);
> +		mtfled_cdev->v4l2_flash = v4l2_flash_init(&pdev->dev,
> +					      of_fwnode_handle(mtfled_cdev->np),
> +					      &mtfled_cdev->fl_cdev,
> +					      &v4l2_flash_ops, &v4l2_config);
> +		if (IS_ERR(mtfled_cdev->v4l2_flash)) {
> +			dev_err(&pdev->dev, "Failed to register v4l2_sd\n");
> +			ret = PTR_ERR(mtfled_cdev->v4l2_flash);
> +			goto out_v4l2_sd;
> +		}
> +	}
> +
> +	ret = mt6360_fled_irq_register(pdev);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "Failed to register irqs\n");
> +		goto out_v4l2_sd;
> +	}
> +
> +	return 0;
> +out_v4l2_sd:
> +	while (--i >= 0) {
> +		mtfled_cdev = mld->mtfled_cdev + i;
> +		v4l2_flash_release(mtfled_cdev->v4l2_flash);
> +	}
> +	i = MT6360_FLED_MAX;
> +out_fled_cdev:
> +	while (--i >= 0) {
> +		mtfled_cdev = mld->mtfled_cdev + i;
> +		led_classdev_flash_unregister(&mtfled_cdev->fl_cdev);
> +	}
> +	return ret;
> +}
> +
> +static int mt6360_led_remove(struct platform_device *pdev)
> +{
> +	struct mt6360_led_data *mld = platform_get_drvdata(pdev);
> +	struct mt6360_fled_classdev *mtfled_cdev;
> +	int i;
> +
> +	for (i = 0; i < MT6360_FLED_MAX; i++) {
> +		mtfled_cdev = mld->mtfled_cdev + i;
> +		v4l2_flash_release(mtfled_cdev->v4l2_flash);
> +		led_classdev_flash_unregister(&mtfled_cdev->fl_cdev);
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id __maybe_unused mt6360_led_of_id[] = {
> +	{ .compatible = "mediatek,mt6360_led", },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, mt6360_led_of_id);
> +
> +static struct platform_driver mt6360_led_driver = {
> +	.driver = {
> +		.name = "mt6360_led",
> +		.owner = THIS_MODULE,
> +		.of_match_table = of_match_ptr(mt6360_led_of_id),
> +	},
> +	.probe = mt6360_led_probe,
> +	.remove = mt6360_led_remove,
> +};
> +module_platform_driver(mt6360_led_driver);
> +
> +MODULE_AUTHOR("Gene Chen <gene_chen@richtek.com>");
> +MODULE_DESCRIPTION("MT6360 Led Driver");
> +MODULE_LICENSE("GPL v2");
> diff --git a/include/linux/mfd/mt6360.h b/include/linux/mfd/mt6360.h
> index ea13040..2b81ab5 100644
> --- a/include/linux/mfd/mt6360.h
> +++ b/include/linux/mfd/mt6360.h
> @@ -29,6 +29,11 @@ struct mt6360_pmu_data {
>   	unsigned int chip_rev;
>   };
>   
> +struct mt6360_pmu_irq_desc {
> +	const char *name;
> +	irq_handler_t irq_handler;
> +};
> +
>   /* PMU register defininition */
>   #define MT6360_PMU_DEV_INFO			(0x00)
>   #define MT6360_PMU_CORE_CTRL1			(0x01)
> @@ -236,5 +241,4 @@ struct mt6360_pmu_data {
>   #define CHIP_VEN_MASK				(0xF0)
>   #define CHIP_VEN_MT6360				(0x50)
>   #define CHIP_REV_MASK				(0x0F)
> -
>   #endif /* __MT6360_H__ */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
