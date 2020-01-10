Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E00A51364D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 02:32:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w41hkZ+cxlD3W0/L8Y5bsERjg1Q9pqDLq5rPGYTRpsg=; b=D3WvwmZn0uNV/v
	VXJ4rMd6lkrRl+7Igqp22OsnRo3CNxUlhvQos5CqLFT9YXxxgoHW1VrNdU7SuAxHuIPcIFCacdldS
	mCFTkOY9dwDatJzyJLHsotzxvlPu2sH8f/cJPf3s5asnb0iGS5cg1UCE587i398v867WqOp1KHLvT
	3bcEzD/Oi5UcXGoFLleh7A3jku+zyhGLCUFXkIwXMdyf6ZWPz9eTf4Qt7seHYDZ2ss/l6hjVP42jk
	fhOOh0MhIIxcAhk+mpP+wCsa6+3Pjlct5snFYD1GCgsn+r0r/aaymlrlejD/OfavwOy6oYuBNR2wS
	jrFf26ERrtCInezmlEJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipjAL-0004qb-DN; Fri, 10 Jan 2020 01:32:45 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipjAA-0004qA-EM; Fri, 10 Jan 2020 01:32:36 +0000
Received: by mail-pl1-x643.google.com with SMTP id bd4so186040plb.8;
 Thu, 09 Jan 2020 17:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=em9XvEHG8LAuhXah1UkCCYwssdieCIzVBtJdr1R8gcE=;
 b=FLT2CMcuR6Sr+TQDXJPdfawFW665+k3sXx8k4o+u/nfJUUX1Sbdv82fbXWmz/hT89G
 nCjfI5jWLhaaBeBAg3XjyHk66LSDU3z+vnkR3rmn75tf6d9Hz3rNTg5n+kfCL6V46N5c
 GSfJcrRDGoacuXNFD8EzMyvm6lbo5uCP9YXyPms/RfAqdhq20529T+5MnxMsJOhZX5Nn
 sglepuNb4hIAubmKRP36ri/mFwSWHKnKMb/oM3pN8TSpdhsui/wXEfs2ykqnORnPLW3A
 LzL71NMCJLkeap7axaHbPiOjIVyaMK4xoB8bQ50Gk/J8m35Qg+8ZlaOGgnUG6rTU7Xn8
 UJAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=em9XvEHG8LAuhXah1UkCCYwssdieCIzVBtJdr1R8gcE=;
 b=PgzIbOpBBBwJp9AHkVIst3D4vHPDBO2po9PfNilhvHczplcRcicXe2T8iBgh00uNIe
 cx4J0hYRaNlOgAk2fNVVDPypCR2g2BfDjwR5+Oi8sM0LjWP8E08zbf/J/rJylI+TTSHw
 y/iQv22Plt6A26QoFJ3uZPWsMwqutxsuEOHbc1Mc6QzLtFa5CTvl1Nbt1JKDc0yILeUm
 D8jPixZDnd0iOqW1RGlXYkBjoS3CofgPsq85OQF1SU6mBXkEpF9neutgVQAF0FIw5ODy
 sTXQb4nGVN+QY8xB2M+kd0inIyN1nFhbJKCldABd47EUTq2JHCAvD5T7KzzlwR8vu5Kn
 r8lw==
X-Gm-Message-State: APjAAAVZKvVRENJLB8f88nBOgb79Yphi8w1Xix1qTAfp3c6ADWk5qjpm
 qkr0hFe8pwi+153js0jwBeU=
X-Google-Smtp-Source: APXvYqwvwPDTgtXU5BHB+cP1T2BI/7y6xNIaGcCCLp6zsjFwh13hWQoHmdoDTLVxFuzoPYV6Da5ppA==
X-Received: by 2002:a17:902:6ac3:: with SMTP id
 i3mr1074035plt.111.1578619953247; 
 Thu, 09 Jan 2020 17:32:33 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id y128sm318004pfg.17.2020.01.09.17.32.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 17:32:32 -0800 (PST)
Date: Thu, 9 Jan 2020 17:32:30 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: fengping yu <fengping.yu@mediatek.com>
Subject: Re: [PATCH V2 2/2] drivers: input: keyboard
Message-ID: <20200110013230.GS8314@dtor-ws>
References: <20200108062923.14684-1-fengping.yu@mediatek.com>
 <20200108062923.14684-3-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108062923.14684-3-fengping.yu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_173234_514401_AB7C812A 
X-CRM114-Status: GOOD (  26.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 wsd_upstream@mediatek.com, Stefan Agner <stefan@agner.cn>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>, YueHaibing <yuehaibing@huawei.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 linux-input@vger.kernel.org, Thierry Reding <treding@nvidia.com>,
 Valentin Schneider <valentin.schneider@arm.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Maxime Ripard <mripard@kernel.org>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Aisheng Dong <aisheng.dong@nxp.com>,
 linux-kernel@vger.kernel.org, Dinh Nguyen <dinguyen@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 02:29:23PM +0800, fengping yu wrote:
> From: "fengping.yu" <fengping.yu@mediatek.com>
> 
> add mtk keypad driver
> 
> Change-Id: I20bb26ee4112f51f60476b7ff7d6e42b43f729dc
> Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
> ---
>  .../devicetree/bindings/input/mtk-kpd.txt     |  13 +-
>  arch/arm64/configs/defconfig                  |   1 +
>  drivers/input/keyboard/Kconfig                |   8 +
>  drivers/input/keyboard/Makefile               |   1 +
>  drivers/input/keyboard/mtk-kpd.c              | 357 ++++++++++++++++++
>  5 files changed, 377 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/input/keyboard/mtk-kpd.c
> 
> diff --git a/Documentation/devicetree/bindings/input/mtk-kpd.txt b/Documentation/devicetree/bindings/input/mtk-kpd.txt
> index 2af81e696159..e3c17513c02c 100644
> --- a/Documentation/devicetree/bindings/input/mtk-kpd.txt
> +++ b/Documentation/devicetree/bindings/input/mtk-kpd.txt
> @@ -38,8 +38,15 @@ Example:
>  	};
>  
>  	&keypad {
> -		mediatek,key-debounce-ms = <1024>;
> +		mediatek,key-debounce-ms = <32>;
>  		/*HW Keycode [0~71] -> Linux Keycode*/
> -		mediatek,khw-map-num = <72>;
> -		mediatek,hw-init-map = <114 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 >;
> +		mediatek,hw-map-num = <72>;
> +		mediatek,hw-init-map = <114 0 0 0 0 0 0 0 0
> +															0 0 0 0 0 0 0 0 0
> +															0 0 0 0 0 0 0 0 0
> +															0 0 0 0 0 0 0 0 0
> +															0 0 0 0 0 0 0 0 0
> +															0 0 0 0 0 0 0 0 0
> +															0 0 0 0 0 0 0 0 0
> +															0 0 0 0 0 0 0 0 0 >;
>  	};
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 8e05c39eab08..62bed77ec127 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -315,6 +315,7 @@ CONFIG_KEYBOARD_ADC=m
>  CONFIG_KEYBOARD_GPIO=y
>  CONFIG_KEYBOARD_SNVS_PWRKEY=m
>  CONFIG_KEYBOARD_CROS_EC=y
> +CONFIG_KEYBOARD_MTK=y
>  CONFIG_INPUT_TOUCHSCREEN=y
>  CONFIG_TOUCHSCREEN_ATMEL_MXT=m
>  CONFIG_INPUT_MISC=y
> diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
> index 8911bc2ec42a..01747a97536b 100644
> --- a/drivers/input/keyboard/Kconfig
> +++ b/drivers/input/keyboard/Kconfig
> @@ -775,4 +775,12 @@ config KEYBOARD_MTK_PMIC
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called pmic-keys.
>  
> +config KEYBOARD_MTK
> +	tristate "MediaTek Keypad Support"
> +	help
> +	  Say Y here if you want to use the keypad.
> +	  If unuse, say N.
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called mtk-kpd.
> +
>  endif
> diff --git a/drivers/input/keyboard/Makefile b/drivers/input/keyboard/Makefile
> index 9510325c0c5d..daa654bcce6e 100644
> --- a/drivers/input/keyboard/Makefile
> +++ b/drivers/input/keyboard/Makefile
> @@ -41,6 +41,7 @@ obj-$(CONFIG_KEYBOARD_MATRIX)		+= matrix_keypad.o
>  obj-$(CONFIG_KEYBOARD_MAX7359)		+= max7359_keypad.o
>  obj-$(CONFIG_KEYBOARD_MCS)		+= mcs_touchkey.o
>  obj-$(CONFIG_KEYBOARD_MPR121)		+= mpr121_touchkey.o
> +obj-$(CONFIG_KEYBOARD_MTK) 		+= mtk-kpd.o
>  obj-$(CONFIG_KEYBOARD_MTK_PMIC) 	+= mtk-pmic-keys.o
>  obj-$(CONFIG_KEYBOARD_NEWTON)		+= newtonkbd.o
>  obj-$(CONFIG_KEYBOARD_NOMADIK)		+= nomadik-ske-keypad.o
> diff --git a/drivers/input/keyboard/mtk-kpd.c b/drivers/input/keyboard/mtk-kpd.c
> new file mode 100644
> index 000000000000..740a58b44dac
> --- /dev/null
> +++ b/drivers/input/keyboard/mtk-kpd.c
> @@ -0,0 +1,357 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 MediaTek Inc.
> + * Author Terry Chang <terry.chang@mediatek.com>
> + */
> +#include <linux/atomic.h>
> +#include <linux/clk.h>
> +#include <linux/debugfs.h>
> +#include <linux/delay.h>
> +#include <linux/fs.h>
> +#include <linux/gpio.h>
> +#include <linux/init.h>
> +#include <linux/input.h>
> +#include <linux/interrupt.h>
> +#include <linux/io.h>
> +#include <linux/ioctl.h>
> +#include <linux/kernel.h>
> +#include <linux/miscdevice.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/of_irq.h>
> +#include <linux/pinctrl/consumer.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_wakeup.h>
> +#include <linux/regmap.h>
> +#include <linux/timer.h>
> +#include <linux/workqueue.h>
> +
> +#define KPD_NAME	"mtk-kpd"
> +
> +#define KP_STA			(0x0000)
> +#define KP_MEM1			(0x0004)
> +#define KP_MEM2			(0x0008)
> +#define KP_MEM3			(0x000c)
> +#define KP_MEM4			(0x0010)
> +#define KP_MEM5			(0x0014)
> +#define KP_DEBOUNCE		(0x0018)
> +#define KP_SEL			(0x0020)
> +#define KP_EN			(0x0024)
> +
> +#define KP_COL0_SEL		(1 << 10)
> +#define KP_COL1_SEL		(1 << 11)
> +#define KP_COL2_SEL		(1 << 12)
> +
> +#define KPD_DEBOUNCE_MASK	((1U << 14) - 1)
> +#define KPD_DOUBLE_KEY_MASK	(1U << 0)
> +
> +#define KPD_NUM_MEMS	5
> +#define KPD_MEM5_BITS	8
> +#define KPD_NUM_KEYS	72	/* 4 * 16 + KPD_MEM5_BITS */
> +
> +struct mtk_keypad {
> +	struct input_dev *input_dev;
> +	struct wakeup_source *suspend_lock;
> +	struct tasklet_struct tasklet;
> +	struct clk *clk;
> +	void __iomem *base;
> +	unsigned int irqnr;
> +	u32 key_debounce;
> +	u32 hw_map_num;
> +	u32 hw_init_map[KPD_NUM_KEYS];
> +	u16 keymap_state[KPD_NUM_MEMS];
> +};
> +
> +/* for keymap handling */
> +static void kpd_keymap_handler(unsigned long data);
> +
> +static int kpd_pdrv_probe(struct platform_device *pdev);
> +
> +static void kpd_get_keymap_state(void __iomem *kp_base, u16 state[])
> +{
> +	state[0] = readw(kp_base + KP_MEM1);
> +	state[1] = readw(kp_base + KP_MEM2);
> +	state[2] = readw(kp_base + KP_MEM3);
> +	state[3] = readw(kp_base + KP_MEM4);
> +	state[4] = readw(kp_base + KP_MEM5);

Please use memcpy_formio() here.

> +	pr_debug("kpd register = %x %x %x %x %x\n",
> +		 state[0], state[1], state[2], state[3], state[4]);
> +}
> +
> +static void kpd_keymap_handler(unsigned long data)
> +{
> +	int i, j;
> +	int pressed;
> +	u16 new_state[KPD_NUM_MEMS], change, mask;
> +	u16 hw_keycode, keycode;
> +	void *dest;
> +	struct mtk_keypad *keypad = (struct mtk_keypad *)data;
> +
> +	kpd_get_keymap_state(keypad->base, new_state);
> +
> +	__pm_wakeup_event(keypad->suspend_lock, 500);
> +
> +	for (i = 0; i < KPD_NUM_MEMS; i++) {
> +		change = new_state[i] ^ keypad->keymap_state[i];
> +		if (!change)
> +			continue;
> +
> +		for (j = 0; j < 16U; j++) {
> +			mask = (u16)1 << j;
> +			if (!(change & mask))
> +				continue;

If you define state as N longs instead of M u16s, you can do

	for_each_set_bit()

as the single loop, figure row/col from offset, and get the state and
fetch the code from keymap.

> +
> +			hw_keycode = (i << 4) + j;
> +
> +			if (hw_keycode >= KPD_NUM_KEYS)
> +				continue;
> +
> +			/* bit is 1: not pressed, 0: pressed */
> +			pressed = (new_state[i] & mask) == 0U;
> +			pr_debug("(%s) HW keycode = %d\n",
> +				 (pressed) ? "pressed" : "released",
> +				 hw_keycode);
> +
> +			keycode = keypad->hw_init_map[hw_keycode];
> +			if (!keycode)
> +				continue;
> +			input_report_key(keypad->input_dev, keycode, pressed);
> +			input_sync(keypad->input_dev);
> +			pr_debug("report Linux keycode = %d\n", keycode);
> +		}
> +	}
> +
> +	dest = memcpy(keypad->keymap_state, new_state, sizeof(new_state));
> +	enable_irq(keypad->irqnr);
> +}
> +
> +static irqreturn_t kpd_irq_handler(int irq, void *dev_id)
> +{
> +	/* use _nosync to avoid deadlock */
> +	struct mtk_keypad *keypad = dev_id;
> +
> +	disable_irq_nosync(keypad->irqnr);
> +	tasklet_schedule(&keypad->tasklet);
> +	return IRQ_HANDLED;
> +}
> +
> +static int kpd_get_dts_info(struct mtk_keypad *keypad,
> +			    struct device_node *node)
> +{
> +	int ret;
> +
> +	ret = of_property_read_u32(node, "mediatek,key-debounce-ms",
> +				   &keypad->key_debounce);
> +	if (ret) {
> +		pr_debug("read mediatek,key-debounce-ms error.\n");
> +		return ret;
> +	}
> +
> +	ret = of_property_read_u32(node, "mediatek,hw-map-num",
> +				   &keypad->hw_map_num);
> +	if (ret) {
> +		pr_debug("read mediatek,hw-map-num error.\n");
> +		return ret;
> +	}
> +
> +	if (keypad->hw_map_num > KPD_NUM_KEYS) {
> +		pr_debug("hw-map-num error, it cannot bigger than %d.\n",
> +			 KPD_NUM_KEYS);
> +		return -EINVAL;
> +	}
> +
> +	ret = of_property_read_u32_array(node, "mediatek,hw-init-map",
> +					 keypad->hw_init_map,
> +					 keypad->hw_map_num);

As I mentioned, please use matrix keymap API and linux,keymap property.


> +
> +	if (ret) {
> +		pr_debug("hw-init-map was not defined in dts.\n");
> +		return ret;
> +	}
> +
> +	pr_debug("deb= %d\n", keypad->key_debounce);
> +
> +	return 0;
> +}
> +
> +static int kpd_gpio_init(struct device *dev)
> +{
> +	struct pinctrl *keypad_pinctrl;
> +	struct pinctrl_state *kpd_default;
> +
> +	keypad_pinctrl = devm_pinctrl_get(dev);
> +	if (IS_ERR(keypad_pinctrl)) {
> +		pr_debug("Cannot find keypad_pinctrl!\n");
> +
> +		return (int)PTR_ERR(keypad_pinctrl);
> +	}
> +
> +	kpd_default = pinctrl_lookup_state(keypad_pinctrl, "default");
> +	if (IS_ERR(kpd_default)) {
> +		pr_debug("Cannot find ecall_state!\n");
> +
> +		return (int)PTR_ERR(kpd_default);
> +	}
> +
> +	return pinctrl_select_state(keypad_pinctrl,
> +				kpd_default);
> +}
> +
> +static int kpd_pdrv_probe(struct platform_device *pdev)
> +{
> +	struct mtk_keypad *keypad;
> +	struct resource *res;
> +	int i;
> +	int err;
> +
> +	keypad = devm_kzalloc(&pdev->dev, sizeof(*keypad), GFP_KERNEL);
> +	if (!keypad)
> +		return -ENOMEM;
> +
> +	keypad->clk = devm_clk_get(&pdev->dev, "kpd");
> +	if (IS_ERR(keypad->clk)) {
> +		pr_notice("get kpd-clk fail: %d\n", (int)PTR_ERR(keypad->clk));
> +		return (int)PTR_ERR(keypad->clk);
> +	}
> +
> +	err = clk_prepare_enable(keypad->clk);

Do not mix devm and non-devm APIs. Use devm_add_action_or_reset() for
disabling clock in proper order.

> +	if (err) {
> +		pr_notice("kpd-clk prepare enable failed.\n");
> +		return err;
> +	}
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	if (!res) {
> +		err = -ENODEV;
> +		goto err_unprepare_clk;
> +	}
> +
> +	keypad->base = devm_ioremap(&pdev->dev, res->start,
> +				    resource_size(res));
> +	if (!keypad->base) {
> +		pr_notice("KP iomap failed\n");
> +		err = -EBUSY;
> +		goto err_unprepare_clk;
> +	}
> +
> +	keypad->irqnr = irq_of_parse_and_map(pdev->dev.of_node, 0);

Why is this done in the driver? Use platform_get_irq() instead.

> +	if (!keypad->irqnr) {
> +		pr_notice("KP get irqnr failed\n");
> +		err = -ENODEV;
> +		goto err_unprepare_clk;
> +	}
> +
> +	pr_info("kp base: 0x%p, addr:0x%p,  kp irq: %d\n",
> +		keypad->base, &keypad->base, keypad->irqnr);
> +	err = kpd_gpio_init(&pdev->dev);
> +	if (err) {
> +		pr_debug("gpio init failed\n");
> +		goto err_unprepare_clk;
> +	}
> +
> +	err = kpd_get_dts_info(keypad, pdev->dev.of_node);
> +	if (err) {
> +		pr_debug("get dts info failed.\n");
> +		goto err_unprepare_clk;
> +	}
> +
> +	memset(keypad->keymap_state, 0xff, sizeof(keypad->keymap_state));
> +
> +	keypad->input_dev = devm_input_allocate_device(&pdev->dev);
> +	if (!keypad->input_dev) {
> +		pr_notice("input allocate device fail.\n");
> +		err = -ENOMEM;
> +		goto err_unprepare_clk;
> +	}
> +
> +	keypad->input_dev->name = KPD_NAME;
> +	keypad->input_dev->id.bustype = BUS_HOST;
> +	keypad->input_dev->dev.parent = &pdev->dev;

No need to set this since you are using devm_input_allocate_device().

> +
> +	__set_bit(EV_KEY, keypad->input_dev->evbit);
> +
> +	for (i = 0; i < KPD_NUM_KEYS; i++) {
> +		if (keypad->hw_init_map[i])
> +			__set_bit(keypad->hw_init_map[i],
> +				  keypad->input_dev->keybit);
> +	}
> +
> +	err = input_register_device(keypad->input_dev);
> +	if (err) {
> +		pr_notice("register input device failed (%d)\n", err);
> +		goto err_unprepare_clk;
> +	}
> +
> +	input_set_drvdata(keypad->input_dev, keypad);
> +
> +	keypad->suspend_lock = wakeup_source_register(NULL, "kpd wakelock");
> +	if (!keypad->suspend_lock) {
> +		pr_notice("wakeup source init failed.\n");
> +		err = -ENOMEM;
> +		goto err_unregister_device;
> +	}

Why are we doing it in this fashion instead of checking "wakeup-source"
property and doing device_init_wakeup() when this flag is set?

> +
> +	tasklet_init(&keypad->tasklet, kpd_keymap_handler,
> +		     (unsigned long)keypad);

No need to use tasklet, you are not doing anything heavy in the ISR.

> +
> +	writew((u16)(keypad->key_debounce & KPD_DEBOUNCE_MASK),
> +		     keypad->base + KP_DEBOUNCE);
> +
> +	/* register IRQ */
> +	err = request_irq(keypad->irqnr, kpd_irq_handler, IRQF_TRIGGER_NONE,
> +			  KPD_NAME, keypad);
> +	if (err) {
> +		pr_notice("register IRQ failed (%d)\n", err);
> +		goto err_irq;
> +	}
> +
> +	pr_info("kpd_probe OK.\n");
> +
> +	return 0;
> +
> +err_irq:
> +	tasklet_kill(&keypad->tasklet);
> +	wakeup_source_unregister(keypad->suspend_lock);
> +
> +err_unregister_device:
> +	input_unregister_device(keypad->input_dev);
> +
> +err_unprepare_clk:
> +	clk_disable_unprepare(keypad->clk);
> +
> +	return err;
> +}
> +
> +static int kpd_pdrv_remove(struct platform_device *pdev)
> +{
> +	struct mtk_keypad *keypad = platform_get_drvdata(pdev);
> +
> +	tasklet_kill(&keypad->tasklet);
> +	wakeup_source_unregister(keypad->suspend_lock);
> +	input_unregister_device(keypad->input_dev);
> +	clk_disable_unprepare(keypad->clk);

Please remove this all and rely on devm for cleanup.

> +
> +	return 0;
> +}
> +
> +static const struct of_device_id kpd_of_match[] = {
> +	{.compatible = "mediatek,mt6779-keypad"},
> +	{.compatible = "mediatek,kp"},

Do we need both compatibles? Why?

> +	{},
> +};
> +
> +static struct platform_driver kpd_pdrv = {
> +	.probe = kpd_pdrv_probe,
> +	.remove = kpd_pdrv_remove,
> +	.driver = {
> +		   .name = KPD_NAME,
> +		   .of_match_table = kpd_of_match,
> +		   },
> +};
> +
> +module_platform_driver(kpd_pdrv);
> +
> +MODULE_AUTHOR("Mediatek Corporation");
> +MODULE_DESCRIPTION("MTK Keypad (KPD) Driver");
> +MODULE_LICENSE("GPL");
> -- 
> 2.18.0

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
