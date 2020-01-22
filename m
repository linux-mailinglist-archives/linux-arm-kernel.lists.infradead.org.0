Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA666144BB9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 07:25:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1TEqv88Uc77GxTEoEAltYDrGtJQew0zk1Te1Ub0E/Es=; b=QOg7e7NoR6sC8l
	vCD9I4Qyws93zJFSApKs7hGEGgVBLijP8sEnd7SAbdlhwhIxI5wiZaQDKJfqukyCIfkivmDss88mz
	SamvJQwcSSFeEvHx+nDyY/FqBPCy9Aut7Gn01nXGLXU+w+oWCCKWuMojY0c4wEu3akSm59T5w/6NM
	lO4UyRrCgOAaYHUl451e/Bf9dXryB5EzSRptbQPwAHT4BRJMI4ky72FHJRzpLz0KdsgQ8XmSNx24u
	Fq4ZCvJXLrbfLUvkfLxq24PQeDo/5LvIvVF6PILYnJ1gxAGzrr79H6hI3zuW3AVpj2bgM9dkLPwxy
	62xyfzuFfx5JfJwwCAXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu9S0-0006Qd-PM; Wed, 22 Jan 2020 06:25:16 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu9Rk-0006Ap-0G; Wed, 22 Jan 2020 06:25:01 +0000
Received: by mail-pl1-x641.google.com with SMTP id c9so2519484plo.1;
 Tue, 21 Jan 2020 22:24:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zEQqVslVn1OMa/Lg91ZHwHuwRAUMaJJsC/qhf0szJTg=;
 b=P69E66XP7cN7UeiSLEvaCqhQBimfCrsEE8gtQ4svrB+Z0Ez99G0Rz3lFqr1NwtVeRe
 EM3TUCLrnj7pvHk/GMRqWp6/s4JVo+TD3T+AKTACkYSUfV8rShRILsGqdbEASZX6B6+U
 pattyGM0AljHgNwHIMS/Sh/njnptYBweZHmW06MQghMAJglmzNs84qwsXeilqWbJnx09
 vzKbExBYS1GGnsU7BYCRHhhLx3T62/DdbPCh5bodrKmuqnHfamRl6+e+ozdfQHxHKtPw
 EyUUfOsM0rLzx11Ni3cC7G/RQ9N1F4jeJQpYDU/q9rW0/sDuUix5C8EWWgSUPD9XJDNP
 IEiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zEQqVslVn1OMa/Lg91ZHwHuwRAUMaJJsC/qhf0szJTg=;
 b=ouo+LVLj8rmHOPbB6pUMGqVNZVleIpofvTFr+9WnsgDLPL9GpeUp9LM2otyhSBnVKi
 LFS8I+UA3TjukH/cQHyAI+LdtClvqaBtD5lCXo8uQrOoJuK6SESMTWrwj0Cg7W8IxI/w
 qs+rEu0AbfbZtCNV7qourCdFNlzTATsSdcAQPdYuzUi69FpnFYWgAfPV+YZS6uUf+inb
 AQw9o3RD+14LO/d6w86J34VPxHllHY3MeUmRg68zaK/0fKU8i4m6yyUZhUt9yjt8+nW8
 tC6Sl1sZL43v2Y4W/M0PQD00d24Yz8GM7mzneModfzFcJmDqFecqCXwnFBsfea4b+fqj
 mjVg==
X-Gm-Message-State: APjAAAUIw+l2XzpTcKhUnnF0qfT1H2FMuwzW8pINuzn/jtrLV44XD7bd
 tXWULZyMwYu0XaUhuu8lYU2ucK6x
X-Google-Smtp-Source: APXvYqxBxEOXQSKw4s1crZj4C/Zj53F/nGuUaj7bfVA+oXiYR/WYhbJn+r4pVFdXaGd8zmfoz/j2lw==
X-Received: by 2002:a17:90a:3643:: with SMTP id
 s61mr1294594pjb.44.1579674296993; 
 Tue, 21 Jan 2020 22:24:56 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id z26sm42737423pgu.80.2020.01.21.22.24.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 22:24:56 -0800 (PST)
Date: Tue, 21 Jan 2020 22:24:54 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: "fengping.yu" <fengping.yu@mediatek.com>
Subject: Re: [PATCH V3 2/2] drivers: input: keyboard: add mtk keypad driver
Message-ID: <20200122062454.GF110084@dtor-ws>
References: <20200114122738.103344-1-fengping.yu@mediatek.com>
 <20200114122738.103344-3-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114122738.103344-3-fengping.yu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_222500_071223_F7A10374 
X-CRM114-Status: GOOD (  20.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Marco Felsch <m.felsch@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-input@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fendping,

On Tue, Jan 14, 2020 at 08:27:41PM +0800, fengping.yu wrote:
> Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
> 
> Add matrix keypad driver for MTK SoC.
> 
> ---
>  arch/arm64/configs/defconfig     |   1 +
>  drivers/input/keyboard/Kconfig   |   8 +
>  drivers/input/keyboard/Makefile  |   1 +
>  drivers/input/keyboard/mtk-kpd.c | 280 +++++++++++++++++++++++++++++++
>  4 files changed, 290 insertions(+)
>  create mode 100644 drivers/input/keyboard/mtk-kpd.c
> 
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
> index 000000000000..e36461c9dd89
> --- /dev/null
> +++ b/drivers/input/keyboard/mtk-kpd.c
> @@ -0,0 +1,280 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 MediaTek Inc.
> + * Author Terry Chang <terry.chang@mediatek.com>
> + */
> +#include <linux/clk.h>
> +#include <linux/fs.h>
> +#include <linux/gpio.h>
> +#include <linux/init.h>
> +#include <linux/input/matrix_keypad.h>
> +#include <linux/interrupt.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of_address.h>
> +#include <linux/of_irq.h>
> +#include <linux/pinctrl/consumer.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +
> +#define KPD_NAME	"mtk-kpd"
> +
> +#define KP_STA				0x0000
> +#define KP_MEM1				0x0004
> +#define KP_MEM2				0x0008
> +#define KP_MEM3				0x000c
> +#define KP_MEM4				0x0010
> +#define KP_MEM5				0x0014
> +#define KP_DEBOUNCE			0x0018
> +#define KP_SEL				0x0020
> +#define KP_EN				0x0024
> +
> +#define KP_COL0_SEL		BIT(10)
> +#define KP_COL1_SEL		BIT(11)
> +#define KP_COL2_SEL		BIT(12)
> +
> +#define KPD_DEBOUNCE_MASK	GENMASK_ULL(13, 0)
> +
> +#define KPD_NUM_MEMS	5
> +#define KPD_MEM5_BITS	8
> +#define KPD_NUM_KEYS	72	/* 4 * 16 + KPD_MEM5_BITS */
> +
> +struct mtk_keypad {
> +	struct input_dev *input_dev;
> +	struct clk *clk;
> +	void __iomem *base;
> +	unsigned int irqnr;
> +	bool wakeup;
> +	u32 key_debounce;
> +	u32 n_rows;
> +	u32 n_cols;
> +	u32 keymap_state[KPD_NUM_MEMS];

	DECLARE_BITMAP(keymap_state, KPD_NUM_KEYS);

> +};
> +
> +static void kpd_get_keymap_state(void __iomem *kp_base, u32 state[])
> +{
> +	memset_io(state, 0xff, KPD_NUM_MEMS);
> +	memcpy_fromio(state, kp_base, KPD_NUM_MEMS);
> +}
> +
> +static irqreturn_t kpd_irq_handler(int irq, void *dev_id)
> +{
> +	/* use _nosync to avoid deadlock */
> +	struct mtk_keypad *keypad = dev_id;
> +	unsigned short *keycode = keypad->input_dev->keycode;
> +	u32 new_state[KPD_NUM_MEMS], mask;
	DECLARE_BITMAP(new_state, KPD_NUM_KEYS);
	DECLARE_BITMAP(changed_state, KPD_NUM_KEYS);
> +	unsigned long change = 0;
> +	int bit_nr;
> +	int pressed;
> +	u32 row_shift = get_count_order(keypad->n_cols);
> +	unsigned short code;
> +	int i;
> +
> +	disable_irq_nosync(keypad->irqnr);

Not needed.


> +
> +	kpd_get_keymap_state(keypad->base, new_state);

	bitmap_xor(changed_state, keypad->keymap_state, new_state,
		   KPD_NUM_KEYS);

	for_each_set_bit(bit_nr, changed_state, KPD_NUM_KEYS) {
		pressed = test_bit(new_state, bit_nr);

		...
	}

> +
> +	for (i = 0; i < KPD_NUM_MEMS; i++) {
> +		change = new_state[i] ^ keypad->keymap_state[i];
> +		if (!change)
> +			continue;
> +
> +		for_each_set_bit(bit_nr, &change, 32) {
> +			mask = 1 << bit_nr;
> +			pressed = (new_state[i] & mask) == 0U;
> +			dev_dbg(&keypad->input_dev->dev,
> +				"%s", pressed ? "pressed" : "released");
> +
> +			code = keycode[MATRIX_SCAN_CODE(i, bit_nr, row_shift)];
> +
> +			input_report_key(keypad->input_dev, code, pressed);
> +			input_sync(keypad->input_dev);
> +
> +			dev_dbg(&keypad->input_dev->dev,
> +				"report Linux keycode = %d\n", code);
> +		}
> +	}
> +
> +	memcpy(keypad->keymap_state, new_state, sizeof(new_state));

	bitmap_copy(keypad->keymap_state, new_state, KPD_NUM_KEYS);

> +
> +	enable_irq(keypad->irqnr);

Not needed.

> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int kpd_get_dts_info(struct mtk_keypad *keypad)
> +{
> +	int ret;
> +	struct device *dev = keypad->input_dev->dev.parent;
> +	struct device_node *node = dev->of_node;
> +
> +	ret = matrix_keypad_parse_properties(dev, &keypad->n_rows,
> +					     &keypad->n_cols);
> +
> +	if (ret) {
> +		dev_err(dev, "failed to parse keypad params.\n");
> +		return ret;
> +	}
> +
> +	ret = of_property_read_u32(node, "mediatek,debounce-us",
> +				   &keypad->key_debounce);

Please use device_property_read_*() APIs instead of of_ ones.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
