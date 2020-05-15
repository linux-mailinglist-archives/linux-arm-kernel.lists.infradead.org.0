Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 219961D499C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 11:30:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gTXkNxuq7HHzeEdBTpY0XPmUdCvSh68oT5iUKhzKYyg=; b=j4nYAVAh3pLp7E
	8/w5Z2pxO9wMKY8qQqLEFyOxWq282yQmZeKHWr6o7xONR2yZFJIxrxFKZStK/B7GXFoLqk27Cspfg
	KhuvyMsaktmCsh6xxTvkjw9BTIfhaAs087RzpEAZNzR3RUNmtZPleimdWQCrk7fyUsNnNShwBFSmn
	phcBv+g3efsS/r6x+7UyPruBW1qiEbaMQ3mF4+7m9MkQTMVqEegfY3MgtSYaPSx/QuKJJcdbHQZPu
	b3RxcbUcQQNfI97eeUVW3QkrQQF6DfpAmPQ717E46NPnw57cwnAFiGYQA7QOpdWzCtH77je6LcRf1
	54uawmAY+BwCFpiJlLxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZWfw-0000Rc-Gt; Fri, 15 May 2020 09:30:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZWfj-0000Q3-7V
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 09:30:31 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jZWfa-00072c-2b; Fri, 15 May 2020 11:30:18 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1jZWfY-0002sW-Be; Fri, 15 May 2020 11:30:16 +0200
Date: Fri, 15 May 2020 11:30:16 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fengping Yu <fengping.yu@mediatek.com>
Subject: Re: [PATCH v8 2/3] drivers: input: keyboard: Add mtk keypad driver
Message-ID: <20200515093016.rw5bmvoumgzvkqrc@pengutronix.de>
References: <20200515062007.28346-1-fengping.yu@mediatek.com>
 <20200515062007.28346-3-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515062007.28346-3-fengping.yu@mediatek.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:13:08 up 181 days, 23:31, 197 users,  load average: 1.21, 0.99,
 0.55
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_023027_428953_E4FAA194 
X-CRM114-Status: GOOD (  25.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 20-05-15 14:20, Fengping Yu wrote:
> From: "fengping.yu" <fengping.yu@mediatek.com>
> 
> This adds matrix keypad support for Mediatek SoCs.
> 
> Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
> ---
>  drivers/input/keyboard/Kconfig   |   9 ++
>  drivers/input/keyboard/Makefile  |   1 +
>  drivers/input/keyboard/mtk-kpd.c | 231 +++++++++++++++++++++++++++++++
>  3 files changed, 241 insertions(+)
>  create mode 100644 drivers/input/keyboard/mtk-kpd.c
> 
> diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
> index 28de965a08d5..2b42015e6923 100644
> --- a/drivers/input/keyboard/Kconfig
> +++ b/drivers/input/keyboard/Kconfig
> @@ -782,6 +782,15 @@ config KEYBOARD_BCM
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called bcm-keypad.
>  
> +config KEYBOARD_MTK_KPD
> +	tristate "MediaTek Keypad Support"
> +	depends on OF && HAVE_CLK

Please drop those deps and instead use:
depends on ARCH_MEDIATEK && ARM64

There are still some missing deps:

select CONFIG_REGMAP_MMIO
select INPUT_MATRIXKMAP

and check which clock driver must be enabled:

COMMON_CLK_MT6779_MMSYS
COMMON_CLK_MT6779_IMGSYS
COMMON_CLK_MT6779_IPESYS
COMMON_CLK_MT6779_CAMSYS
COMMON_CLK_MT6779_VDECSYS
COMMON_CLK_MT6779_VENCSYS
COMMON_CLK_MT6779_MFGCFG
COMMON_CLK_MT6779_AUDSYS


> +	help
> +	  Say Y here if you want to use the keypad on MediaTek SoCs.
> +	  If unsure, say N.
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called mtk-kpd.
> +
>  config KEYBOARD_MTK_PMIC
>  	tristate "MediaTek PMIC keys support"
>  	depends on MFD_MT6397
> diff --git a/drivers/input/keyboard/Makefile b/drivers/input/keyboard/Makefile
> index 1d689fdd5c00..6c9d852c377e 100644
> --- a/drivers/input/keyboard/Makefile
> +++ b/drivers/input/keyboard/Makefile
> @@ -43,6 +43,7 @@ obj-$(CONFIG_KEYBOARD_MATRIX)		+= matrix_keypad.o
>  obj-$(CONFIG_KEYBOARD_MAX7359)		+= max7359_keypad.o
>  obj-$(CONFIG_KEYBOARD_MCS)		+= mcs_touchkey.o
>  obj-$(CONFIG_KEYBOARD_MPR121)		+= mpr121_touchkey.o
> +obj-$(CONFIG_KEYBOARD_MTK_KPD)		+= mtk-kpd.o
>  obj-$(CONFIG_KEYBOARD_MTK_PMIC) 	+= mtk-pmic-keys.o
>  obj-$(CONFIG_KEYBOARD_NEWTON)		+= newtonkbd.o
>  obj-$(CONFIG_KEYBOARD_NOMADIK)		+= nomadik-ske-keypad.o
> diff --git a/drivers/input/keyboard/mtk-kpd.c b/drivers/input/keyboard/mtk-kpd.c
> new file mode 100644
> index 000000000000..66c70c475ee2
> --- /dev/null
> +++ b/drivers/input/keyboard/mtk-kpd.c
> @@ -0,0 +1,231 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 MediaTek Inc.
> + * Author Terry Chang <terry.chang@mediatek.com>
> + */
> +#include <linux/bitops.h>
> +#include <linux/clk.h>
> +#include <linux/input/matrix_keypad.h>
> +#include <linux/interrupt.h>
> +#include <linux/module.h>
> +#include <linux/property.h>
> +#include <linux/pinctrl/consumer.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +
> +#define MTK_KPD_NAME			"mtk-kpd"
> +#define MTK_KPD_MEM			0x0004
> +#define MTK_KPD_DEBOUNCE		0x0018
> +#define MTK_KPD_DEBOUNCE_MASK		GENMASK(13, 0)
> +#define MTK_KPD_DEBOUNCE_MAX_US		256000 /*256ms */

Thanks for aligning the defines but the 256ms comment is still useless
as Andy already said.

> +#define MTK_KPD_NUM_MEMS		5
> +#define MTK_KPD_NUM_BITS		136	/* 4*32+8 MEM5 only use 8 BITS */
> +
> +struct mtk_keypad {
> +	struct regmap *regmap;
> +	struct input_dev *input_dev;
> +	struct clk *clk;
> +	void __iomem *base;
> +	bool wakeup;
> +	u32 n_rows;
> +	u32 n_cols;
> +	DECLARE_BITMAP(keymap_state, MTK_KPD_NUM_BITS);
> +};
> +
> +static const struct regmap_config keypad_regmap_cfg = {
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = sizeof(u32),
> +	.max_register = 36,
> +};
> +
> +static irqreturn_t kpd_irq_handler(int irq, void *dev_id)
> +{
> +	struct mtk_keypad *keypad = dev_id;
> +	unsigned short *keycode = keypad->input_dev->keycode;
> +	DECLARE_BITMAP(new_state, MTK_KPD_NUM_BITS);
> +	DECLARE_BITMAP(change, MTK_KPD_NUM_BITS);
> +	int bit_nr;
> +	int pressed;
> +	unsigned short code;
> +
> +	regmap_raw_read(keypad->regmap, MTK_KPD_MEM, new_state, MTK_KPD_NUM_MEMS);
> +
> +	bitmap_xor(change, new_state, keypad->keymap_state, MTK_KPD_NUM_BITS);
> +
> +	for_each_set_bit(bit_nr, change, MTK_KPD_NUM_BITS) {
> +		/* 1: not pressed, 0: pressed */
> +		pressed = !test_bit(bit_nr, new_state);
> +		dev_dbg(&keypad->input_dev->dev, "%s",
> +			pressed ? "pressed" : "released");
> +
> +		/* 32bit register only use low 16bit as keypad mem register */
> +		code = keycode[bit_nr - 16 * (BITS_TO_U32(bit_nr) - 1)];
> +
> +		input_report_key(keypad->input_dev, code, pressed);
> +		input_sync(keypad->input_dev);
> +
> +		dev_dbg(&keypad->input_dev->dev,
> +			"report Linux keycode = %d\n", code);
> +	}
> +
> +	bitmap_copy(keypad->keymap_state, new_state, MTK_KPD_NUM_BITS);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int kpd_probe_clock(struct platform_device *pdev, struct clk *clk)
> +{
> +	int ret;
> +
> +	clk = devm_clk_get(&pdev->dev, "kpd");
> +	if (IS_ERR(clk))
> +		return clk;
> +
> +	ret = clk_prepare_enable(clk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "cannot prepare/enable keypad clock\n");
> +		return ret;
> +	}
> +
> +	ret = devm_add_action_or_reset(&pdev->dev,
> +					(void (*)(void *))clk_disable_unprepare,
							^
						Please avoid this and
						instead use a driver
						internal function.

> +					clk);
> +
> +	return ret;
> +}

That was not my intention. You can do all the stuff within the probe()
routine.

> +
> +static int kpd_pdrv_probe(struct platform_device *pdev)
> +{
> +	struct mtk_keypad *keypad;
> +	struct pinctrl *keypad_pinctrl;
> +	struct pinctrl_state *kpd_default;
> +	unsigned int irqnr;
> +	u32 debounce;
> +	int ret;
> +
> +	keypad = devm_kzalloc(&pdev->dev, sizeof(*keypad), GFP_KERNEL);
> +	if (!keypad)
> +		return -ENOMEM;
> +
> +	keypad->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(keypad->base))
> +		return PTR_ERR(keypad->base);
> +
> +	keypad->regmap = devm_regmap_init_mmio(&pdev->dev,
> +						keypad->base,
> +						&keypad_regmap_cfg);
> +	if (IS_ERR(keypad->regmap)) {
> +		dev_err(&pdev->dev,
> +			"regmap init failed:%ld\n", PTR_ERR(keypad->regmap));
> +		return PTR_ERR(keypad->regmap);
> +	}
> +
> +	bitmap_fill(keypad->keymap_state, MTK_KPD_NUM_BITS);
> +
> +	keypad->input_dev = devm_input_allocate_device(&pdev->dev);
> +	if (!keypad->input_dev) {
> +		dev_err(&pdev->dev, "Failed to allocate input dev\n");
> +		return -ENOMEM;
> +	}
> +
> +	keypad->input_dev->name = MTK_KPD_NAME;
> +	keypad->input_dev->id.bustype = BUS_HOST;
> +
> +	ret = matrix_keypad_parse_properties(&pdev->dev, &keypad->n_rows,
> +					     &keypad->n_cols);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to parse keypad params\n");
> +		return ret;
> +	}
> +
> +	if (device_property_read_u32(&pdev->dev, "mediatek,debounce-us",
> +					&debounce))

Did you executed checkpatch.pl here? There are a few more style issues
within the patch.

> +		debounce = 16000;
> +
> +	if (debounce > MTK_KPD_DEBOUNCE_MAX_US) {
> +		dev_err(&pdev->dev, "Debounce time exceeds the maximum allowed time 256ms\n");
> +		return -EINVAL;
> +	}
> +
> +	keypad->wakeup = device_property_read_bool(&pdev->dev, "wakeup-source");
> +
> +	dev_dbg(&pdev->dev, "n_row=%d n_col=%d debounce=%d\n",
> +		keypad->n_rows, keypad->n_cols, debounce);
> +
> +	ret = matrix_keypad_build_keymap(NULL, NULL,
> +					keypad->n_rows,
> +					keypad->n_cols,
> +					NULL,
> +					keypad->input_dev);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to build keymap\n");
> +		return ret;
> +	}
> +
> +	input_set_drvdata(keypad->input_dev, keypad);

This is useless.

> +
> +	regmap_write(keypad->regmap, KP_DEBOUNCE,
> +		     debounce * 32 / 1000 & MTK_KPD_DEBOUNCE_MASK);
> +
> +	if (kpd_probe_clock(pdev, keypad->clk)) {
> +		dev_err(&pdev->dev, "Failed to enable clock\n");
> +		return ret;
> +	}
> +
> +	keypad_pinctrl = devm_pinctrl_get(&pdev->dev);
> +	if (IS_ERR(keypad_pinctrl))
> +		return PTR_ERR(keypad_pinctrl);
> +
> +	kpd_default = pinctrl_lookup_state(keypad_pinctrl, "default");
> +	if (IS_ERR(kpd_default)) {
> +		dev_err(&pdev->dev, "No default pinctrl state\n");
> +		return PTR_ERR(kpd_default);
> +	}
> +
> +	pinctrl_select_state(keypad_pinctrl, kpd_default);
> +
> +	irqnr = platform_get_irq(pdev, 0);
> +	if (irqnr < 0) {
> +		dev_err(&pdev->dev, "Failed to get irq\n");

Andy already said that platform_get_irq() prints a error so you can just
'return -irqnr'.

> +		return -irqnr;
> +	}
> +
> +	ret = devm_request_threaded_irq(&pdev->dev, irqnr,
> +				NULL, kpd_irq_handler, 0,
> +				MTK_KPD_NAME, keypad);

Still missaligned, pls use checkpatch.pl

> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to request IRQ#%d:%d\n",
> +						irqnr, ret);
> +		return ret;
> +	}
> +
> +	ret = input_register_device(keypad->input_dev);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to register device\n");
> +		return ret;
> +	}
> +
> +	device_init_wakeup(&pdev->dev, keypad->wakeup);
> +
> +	return 0;

Here we can 'return device_init_wakeup(&pdev->dev, keypad->wakeup);'

> +}
> +
> +static const struct of_device_id kpd_of_match[] = {
> +	{.compatible = "mediatek, mt6779-keypad"},
> +	{.compatible = "mediatek,kp"},
				 ^
                         Missing whitespace

> +	{/*sentinel*/}
         ^	     ^
	 Missing whitespaces

Regards,
  Marco

> +};
> +
> +static struct platform_driver kpd_pdrv = {
> +	.probe = kpd_pdrv_probe,
> +	.driver = {
> +		   .name = MTK_KPD_NAME,
> +		   .of_match_table = kpd_of_match,
> +	},
> +};
> +module_platform_driver(kpd_pdrv);
> +
> +MODULE_AUTHOR("Mediatek Corporation");
> +MODULE_DESCRIPTION("MTK Keypad (KPD) Driver");
> +MODULE_LICENSE("GPL");
> -- 
> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
