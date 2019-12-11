Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C33B11BA3F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 18:26:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nSkfHyhdaSAWGgCu8LDxcwB4UcShEdos6Nm6zFAfdIw=; b=fbRB+Iez4uGzvNogSblD+UgH9
	1seVFS9CuCSN3CaXIepdahBn75wIOcvFuUQB0e0mGHiYnNdSKhWnGvF1TYCTKmtdBG7bFyt340jiO
	m601xb9H/vyjWFkGqipZoiEI5tYb7T1X2esgncJZcyqNCVdq4KFcdn6adt8o2pKELbVyGdV0+ZDlx
	P9/4ViEDU5Bc5kj/qnvKELSZLeJnVbuqfu0rCmr3UnzTES0Z2ry93q6jPjwNdt/KcxtGVCpiKhIei
	O8talZUuUYtBjFLsVfV7uaQU35HVAGjrVvkCa1EqISJKDlD/oGel3VHppe3Y0715qpYsgC0EMK99h
	uCblXFmgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5l1-0003oB-RR; Wed, 11 Dec 2019 17:26:39 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5km-0003nR-Fs; Wed, 11 Dec 2019 17:26:28 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1if5kg-0007zE-BR; Wed, 11 Dec 2019 18:26:18 +0100
To: Qianggui Song <qianggui.song@amlogic.com>
Subject: Re: [PATCH 2/4] irqchip/meson-gpio: rework meson irqchip driver to
 support meson-A1 SoCs
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 11 Dec 2019 17:26:18 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <2551e382-d373-dad8-7294-80f2a15c0ad4@amlogic.com>
References: <20191206121714.14579-1-qianggui.song@amlogic.com>
 <20191206121714.14579-3-qianggui.song@amlogic.com>
 <542e3e819e584d6e433d2c4276c3b379@www.loen.fr>
 <2551e382-d373-dad8-7294-80f2a15c0ad4@amlogic.com>
Message-ID: <0cbbb895b50a838fd1dfa9e59528367d@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: qianggui.song@amlogic.com, tglx@linutronix.de,
 jason@lakedaemon.net, khilman@baylibre.com, narmstrong@baylibre.com,
 jbrunet@baylibre.com, jianxin.pan@amlogic.com, xingyu.chen@amlogic.com,
 hanjie.lin@amlogic.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_092626_520504_5608013B 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Hanjie Lin <hanjie.lin@amlogic.com>, Jason Cooper <jason@lakedaemon.net>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-10 02:08, Qianggui Song wrote:
> Hi, Marc
>      Thank you for your review
>
> On 2019/12/6 21:13, Marc Zyngier wrote:
>> On 2019-12-06 12:17, Qianggui Song wrote:
>>> Since Meson-A1 Socs register layout of gpio interrupt controller 
>>> have
>>> difference with previous chips, registers to decide irq line and
>>> offset
>>> of trigger method are all changed, the current driver should be
>>> modified.
>>>
>>> Signed-off-by: Qianggui Song <qianggui.song@amlogic.com>
>>> ---
>>>  drivers/irqchip/irq-meson-gpio.c | 79
>>> ++++++++++++++++++++++++--------
>>>  1 file changed, 60 insertions(+), 19 deletions(-)
>>>
>>> diff --git a/drivers/irqchip/irq-meson-gpio.c
>>> b/drivers/irqchip/irq-meson-gpio.c
>>> index 829084b568fa..1824ffc30de2 100644
>>> --- a/drivers/irqchip/irq-meson-gpio.c
>>> +++ b/drivers/irqchip/irq-meson-gpio.c
>>> @@ -30,44 +30,74 @@
>>>   * stuck at 0. Bits 8 to 15 are responsive and have the expected
>>>   * effect.
>>>   */
>>> -#define REG_EDGE_POL_EDGE(x)	BIT(x)
>>> -#define REG_EDGE_POL_LOW(x)	BIT(16 + (x))
>>> -#define REG_BOTH_EDGE(x)	BIT(8 + (x))
>>> -#define REG_EDGE_POL_MASK(x)    (	\
>>> -		REG_EDGE_POL_EDGE(x) |	\
>>> -		REG_EDGE_POL_LOW(x)  |	\
>>> -		REG_BOTH_EDGE(x))
>>> +#define REG_EDGE_POL_EDGE(params,
>>> x)	BIT((params)->edge_single_offset + (x))
>>> +#define REG_EDGE_POL_LOW(params, x)	BIT((params)->pol_low_offset +
>>> (x))
>>> +#define REG_BOTH_EDGE(params, x)	BIT((params)->edge_both_offset +
>>> (x))
>>> +#define REG_EDGE_POL_MASK(params, x)    (	\
>>> +		REG_EDGE_POL_EDGE(params, x) |	\
>>> +		REG_EDGE_POL_LOW(params, x)  |	\
>>> +		REG_BOTH_EDGE(params, x))
>>>  #define REG_PIN_SEL_SHIFT(x)	(((x) % 4) * 8)
>>>  #define REG_FILTER_SEL_SHIFT(x)	((x) * 4)
>>>
>>> +#define INIT_MESON8_COMMON_DATA					\
>>> +	.edge_single_offset = 0,				\
>>> +	.pol_low_offset = 16,					\
>>> +	.pin_sel_mask = 0xff,					\
>>> +	.ops = {						\
>>> +		.gpio_irq_sel_pin = meson8_gpio_irq_sel_pin,	\
>>> +	},
>>
>> Please place the #defines that operate on the various data 
>> structures
>> *after* the definition of the structures. It would greatly help
>> reading the changes.
>>
> OK, will place it below the definition of struct 
> meson_gpio_irq_params
> in the next patch.
>>> +
>>> +struct meson_gpio_irq_controller;
>>> +static void meson8_gpio_irq_sel_pin(struct 
>>> meson_gpio_irq_controller
>>> *ctl,
>>> +				    unsigned int channel, unsigned long hwirq);
>>> +struct irq_ctl_ops {
>>> +	void (*gpio_irq_sel_pin)(struct meson_gpio_irq_controller *ctl,
>>> +					 unsigned int channel,
>>> +					 unsigned long hwirq);
>>> +	void (*gpio_irq_init)(struct meson_gpio_irq_controller *ctl);
>>> +};
>>> +
>>>  struct meson_gpio_irq_params {
>>>  	unsigned int nr_hwirq;
>>>  	bool support_edge_both;
>>> +	unsigned int edge_both_offset;
>>> +	unsigned int edge_single_offset;
>>> +	unsigned int pol_low_offset;
>>> +	unsigned int pin_sel_mask;
>>> +	struct irq_ctl_ops ops;
>>>  };
>>>
>>>  static const struct meson_gpio_irq_params meson8_params = {
>>>  	.nr_hwirq = 134,
>>> +	INIT_MESON8_COMMON_DATA
>>>  };
>>>
>>>  static const struct meson_gpio_irq_params meson8b_params = {
>>>  	.nr_hwirq = 119,
>>> +	INIT_MESON8_COMMON_DATA
>>>  };
>>>
>>>  static const struct meson_gpio_irq_params gxbb_params = {
>>>  	.nr_hwirq = 133,
>>> +	INIT_MESON8_COMMON_DATA
>>>  };
>>>
>>>  static const struct meson_gpio_irq_params gxl_params = {
>>>  	.nr_hwirq = 110,
>>> +	INIT_MESON8_COMMON_DATA
>>>  };
>>>
>>>  static const struct meson_gpio_irq_params axg_params = {
>>>  	.nr_hwirq = 100,
>>> +	INIT_MESON8_COMMON_DATA
>>>  };
>>>
>>>  static const struct meson_gpio_irq_params sm1_params = {
>>>  	.nr_hwirq = 100,
>>>  	.support_edge_both = true,
>>> +	.edge_both_offset = 8,
>>> +	INIT_MESON8_COMMON_DATA
>>>  };
>>
>> OK, this isn't great. The least you could do is to make
>> your initializer parametric, so that it takes the nr_hwirq as
>> a parameter.
>>
>> Then, any additional member that overrides common behaviour
>> should come after the main initializer.
>>
>> Also, do you need 'support_edge_both'? Isn't a non-zero
>> 'edge_both_offset' enough to detect the feature?
>>
>
> Sorry, but I am not very clear that "make your initializer 
> parametric,
> so that it takes the nr_hwirq as a parameter". Is that
> initializer(initial function in .ops ? ) as a parameter of struct
> meson_gpio_irq_params ? If nr_hwirq as a parameter of init function 
> of
> .ops then will make lot of init function for each platform.
>
> How about move .ops from  macro like below:
> #define INIT_MESON8_COMMON_DATA					\
> 	.edge_single_offset = 0,				\
> 	.pol_low_offset = 16,					\
> 	.pin_sel_mask = 0xff,
>
> static const struct meson_gpio_irq_params sm1_params = {
>  	.nr_hwirq = 100,//main initializer
> 	.ops = {
>               .gpio_irq_sel_pin = meson8_gpio_irq_sel_pin,
>                /*in below to assign support_edge_both
>                 * edge_both_offset
>                 * call after main initializer to additional
>                 * member
>                 */
>               .gpio_irq_init = meson_sm1_irq_init,
> 	},
>   	INIT_MESON8_COMMON_DATA// m8 to sm1 are the same.
> };

No, what I'm suggesting is something like this:

diff --git a/drivers/irqchip/irq-meson-gpio.c 
b/drivers/irqchip/irq-meson-gpio.c
index 8478100706a6..27a3207a944d 100644
--- a/drivers/irqchip/irq-meson-gpio.c
+++ b/drivers/irqchip/irq-meson-gpio.c
@@ -43,24 +43,27 @@
  /* Below is used for Meson-A1 series like chips*/
  #define REG_PIN_A1_SEL	0x04

-#define INIT_MESON8_COMMON_DATA					\
-	.edge_single_offset = 0,				\
-	.pol_low_offset = 16,					\
-	.pin_sel_mask = 0xff,					\
-	.ops = {						\
-		.gpio_irq_sel_pin = meson8_gpio_irq_sel_pin,	\
-	},
-
-#define INIT_MESON_A1_COMMON_DATA				\
-	.support_edge_both = true,				\
-	.edge_both_offset = 16,					\
-	.edge_single_offset = 8,				\
-	.pol_low_offset = 0,					\
-	.pin_sel_mask = 0x7f,					\
-	.ops = {						\
-		.gpio_irq_sel_pin = meson_a1_gpio_irq_sel_pin,	\
-		.gpio_irq_init = meson_a1_gpio_irq_init,	\
-	},
+#define INIT_MESON_COMMON(irqs, init, sel)		\
+	.nr_hwirq = irqs,				\
+	.ops = {					\
+		.gpio_irq_sel_pin = sel,		\
+		.gpio_irq_init = init,			\
+	}
+
+#define INIT_MESON8_COMMON_DATA(irqs)			\
+	INIT_MESON_COMMON(irqs, NULL,			\
+			  meson8_gpio_irq_sel_pin),	\
+	.pol_low_offset = 16,				\
+	.pin_sel_mask = 0xff,
+
+#define INIT_MESON_A1_COMMON_DATA(irqs)			\
+	INIT_MESON_COMMON(irqs, meson_a1_gpio_irq_init,	\
+			  meson_a1_gpio_irq_sel_pin),	\
+	.support_edge_both = true,			\
+	.edge_both_offset = 16,				\
+	.edge_single_offset = 8,			\
+	.pol_low_offset = 0,				\
+	.pin_sel_mask = 0x7f,

  struct meson_gpio_irq_controller;
  static void meson8_gpio_irq_sel_pin(struct meson_gpio_irq_controller 
*ctl,
@@ -89,40 +92,33 @@ struct meson_gpio_irq_params {
  };

  static const struct meson_gpio_irq_params meson8_params = {
-	.nr_hwirq = 134,
-	INIT_MESON8_COMMON_DATA
+	INIT_MESON8_COMMON_DATA(134),
  };

  static const struct meson_gpio_irq_params meson8b_params = {
-	.nr_hwirq = 119,
-	INIT_MESON8_COMMON_DATA
+	INIT_MESON8_COMMON_DATA(119),
  };

  static const struct meson_gpio_irq_params gxbb_params = {
-	.nr_hwirq = 133,
-	INIT_MESON8_COMMON_DATA
+	INIT_MESON8_COMMON_DATA(133),
  };

  static const struct meson_gpio_irq_params gxl_params = {
-	.nr_hwirq = 110,
-	INIT_MESON8_COMMON_DATA
+	INIT_MESON8_COMMON_DATA(110),
  };

  static const struct meson_gpio_irq_params axg_params = {
-	.nr_hwirq = 100,
-	INIT_MESON8_COMMON_DATA
+	INIT_MESON8_COMMON_DATA(100),
  };

  static const struct meson_gpio_irq_params sm1_params = {
-	.nr_hwirq = 100,
+	INIT_MESON8_COMMON_DATA(100),
  	.support_edge_both = true,
  	.edge_both_offset = 8,
-	INIT_MESON8_COMMON_DATA
  };

  static const struct meson_gpio_irq_params a1_params = {
-	.nr_hwirq = 62,
-	INIT_MESON_A1_COMMON_DATA
+	INIT_MESON_A1_COMMON_DATA(62),
  };

  static const struct of_device_id meson_irq_gpio_matches[] = {


Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
