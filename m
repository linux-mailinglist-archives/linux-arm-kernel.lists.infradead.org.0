Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B13F613AF8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 17:36:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nArrnOUriM46ZxylPgC3M/KxzYzhw3QUCQSBvijTPek=; b=lVNQYHlOjaFh1e
	1fIKz5JTZG2Qr5AHvVFJoV24oI8utj8ZxsQzb+KqdbOSajevohQYhsVc5CsRKP6H+hLZmMYOfCVxq
	Yg7+OkVWBN5wK0Soe7Vp+0WNDURomR5eWqYP3wGFf/aIb5HpfKZAzK++wiQhUffNIE4QFvmkY8Mpz
	63glYejym7NpP3SXuFrkdoASCow7laOzyfIjR9k6kMkBhLi9ywp4yQ/54pNhR0f+UnzunSVnzuj16
	RAloDQ2VeGF/gFeVS18U1vnbORFEXsNoyZwlK3J98aVUdEqAk5suIu6PPI8Ad8IkNkkpaYUrQUJ+r
	CN5D0M48ugibvsxIsSxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPBL-0002qM-1M; Tue, 14 Jan 2020 16:36:43 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPB9-0001v8-Kq; Tue, 14 Jan 2020 16:36:36 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 08:36:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="242532965"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga002.jf.intel.com with ESMTP; 14 Jan 2020 08:36:07 -0800
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1irPAm-0000us-6K; Tue, 14 Jan 2020 18:36:08 +0200
Date: Tue, 14 Jan 2020 18:36:08 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: "fengping.yu" <fengping.yu@mediatek.com>
Subject: Re: [PATCH V3 2/2] drivers: input: keyboard: add mtk keypad driver
Message-ID: <20200114163608.GY32742@smile.fi.intel.com>
References: <20200114122738.103344-1-fengping.yu@mediatek.com>
 <20200114122738.103344-3-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114122738.103344-3-fengping.yu@mediatek.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_083632_182791_220B1EDC 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Marco Felsch <m.felsch@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-input@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 08:27:41PM +0800, fengping.yu wrote:
> Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
> 
> Add matrix keypad driver for MTK SoC.

Something wrong with ordering.

...

> +obj-$(CONFIG_KEYBOARD_MTK) 		+= mtk-kpd.o

TABs / space mix. I think you ignored my comment.

...

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

...

> +#define KPD_DEBOUNCE_MASK	GENMASK_ULL(13, 0)

ULL? Why?

...

> +static void kpd_get_keymap_state(void __iomem *kp_base, u32 state[])

u32 *state

> +{

> +	memset_io(state, 0xff, KPD_NUM_MEMS);

This is strange. What is this for and why is it needed?

> +	memcpy_fromio(state, kp_base, KPD_NUM_MEMS);
> +}

...

> +static irqreturn_t kpd_irq_handler(int irq, void *dev_id)
> +{
> +	/* use _nosync to avoid deadlock */
> +	struct mtk_keypad *keypad = dev_id;
> +	unsigned short *keycode = keypad->input_dev->keycode;
> +	u32 new_state[KPD_NUM_MEMS], mask;
> +	unsigned long change = 0;
> +	int bit_nr;
> +	int pressed;
> +	u32 row_shift = get_count_order(keypad->n_cols);
> +	unsigned short code;
> +	int i;
> +
> +	disable_irq_nosync(keypad->irqnr);
> +
> +	kpd_get_keymap_state(keypad->base, new_state);
> +
> +	for (i = 0; i < KPD_NUM_MEMS; i++) {
> +		change = new_state[i] ^ keypad->keymap_state[i];
> +		if (!change)
> +			continue;
> +
> +		for_each_set_bit(bit_nr, &change, 32) {

> +			mask = 1 << bit_nr;
> +			pressed = (new_state[i] & mask) == 0U;

test_bit() ?

Can't new_state be unsigned long? In this case you may get rid of outer loop I
suppose.

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
> +
> +	enable_irq(keypad->irqnr);
> +
> +	return IRQ_HANDLED;
> +}

...

> +static int kpd_get_dts_info(struct mtk_keypad *keypad)
> +{
> +	int ret;
> +	struct device *dev = keypad->input_dev->dev.parent;
> +	struct device_node *node = dev->of_node;
> +
> +	ret = matrix_keypad_parse_properties(dev, &keypad->n_rows,
> +					     &keypad->n_cols);

> +

Redundant line.

> +	if (ret) {
> +		dev_err(dev, "failed to parse keypad params.\n");
> +		return ret;
> +	}
> +
> +	ret = of_property_read_u32(node, "mediatek,debounce-us",
> +				   &keypad->key_debounce);
> +	if (ret) {

> +		pr_debug("read mediatek,debounce-us error.\n");

dev_dbg() ?

> +		return ret;
> +	}
> +
> +	keypad->wakeup = of_property_read_bool(node, "wakeup-source");
> +
> +	dev_dbg(dev, "n_row=%d n_col=%d debounce=%d.\n",
> +		keypad->n_rows, keypad->n_cols,
> +		keypad->key_debounce);
> +
> +	return 0;
> +}

...

> +static int kpd_gpio_init(struct device *dev)
> +{
> +	struct pinctrl *keypad_pinctrl;
> +	struct pinctrl_state *kpd_default;
> +
> +	keypad_pinctrl = devm_pinctrl_get(dev);
> +	if (IS_ERR(keypad_pinctrl)) {
> +		dev_err(dev, "Cannot find keypad_pinctrl!\n");

> +

Redundant line

> +		return PTR_ERR(keypad_pinctrl);
> +	}
> +
> +	kpd_default = pinctrl_lookup_state(keypad_pinctrl, "default");
> +	if (IS_ERR(kpd_default)) {
> +		dev_err(dev, "Cannot find ecall_state!\n");

> +

Ditto.

> +		return PTR_ERR(kpd_default);
> +	}
> +
> +	return pinctrl_select_state(keypad_pinctrl, kpd_default);
> +}

...

> +	int err;

err or ret? Be consistent with the name of variable that keeps returned code.

> +	if (!pdev->dev.of_node) {
> +		dev_err(&pdev->dev, "No device tree data present.\n");
> +		return -EINVAL;
> +	}

I think this is redundant. below calls will fail when property is not found.

> +	keypad = devm_kzalloc(&pdev->dev, sizeof(*keypad), GFP_KERNEL);
> +	if (!keypad)
> +		return -ENOMEM;
> +

> +	memset(keypad->keymap_state, 0xff, sizeof(keypad->keymap_state));

bitmap_fill() ?

> +	err = matrix_keypad_build_keymap(NULL, NULL,
> +					keypad->n_rows,
> +					keypad->n_cols,
> +					NULL,
> +					keypad->input_dev);


> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	if (!res) {
> +		dev_err(&pdev->dev, "get IO memory resource failed.\n");
> +		return -ENODEV;
> +	}
> +
> +	keypad->base = devm_ioremap_resource(&pdev->dev, res);

devm_platform_ioremap_resource()

> +	if (IS_ERR(keypad->base)) {
> +		dev_err(&pdev->dev, "KP iomap failed\n");
> +		return PTR_ERR(keypad->base);
> +	}
> +
> +	writew((keypad->key_debounce * 32 / 1000 & KPD_DEBOUNCE_MASK),

Useless parentheses. It's not lisp!

> +		keypad->base + KP_DEBOUNCE);

> +	err = clk_prepare_enable(keypad->clk);
> +	if (err) {
> +		dev_err(&pdev->dev, "kpd-clk prepare enable failed.\n");
> +		return err;
> +	}
> +
> +	err = kpd_gpio_init(&pdev->dev);
> +	if (err) {
> +		dev_err(&pdev->dev, "gpio init failed\n");

> +		return err;

Starting from here down the clocks left in a wrong state.

> +	}
> +
> +	keypad->irqnr = platform_get_irq(pdev, 0);

> +	if (!keypad->irqnr) {

This is wrong...

> +		dev_err(&pdev->dev, "KP get irqnr failed\n");

> +		return -EINVAL;

...and so does this.

> +	}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
