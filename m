Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B07144A90
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 04:48:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mbLgqP+EVAbSX5r8yrADQF8qExpUtP09OK4HD5iH3qA=; b=MRgN3IBqs/IJav
	5vcVE5S37FzdFRKxsofPHx9a9Ex0ecCRItLL4HZjMK2Simv1nTNVS5dhRwB6Wc8xEgy99xTZB6NPV
	GKXpHo84PUhRkTrQSKbb/AMLB5+8s6y/V57xnO17EXe+MtCOd91NdqGUYNq6K9RBa5f4/F05wXm0p
	dV643U9pPlWZOq7OpXwezU9cKkBeWBFSnAESgOMVk/hJCZ5i7XfQmSlwws1zZ2xHPj+JGMenTIh1j
	3njQrKVZeWDKNV2Kp3s+hmDPoP/x8dh3sV80IEIHiA/mDk9bobnOlfvEhq7TAv1QrNCGB00ull23/
	XYFKs3e8EvcUxeWY33gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu70H-0008HK-51; Wed, 22 Jan 2020 03:48:29 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu705-0008Gk-PA; Wed, 22 Jan 2020 03:48:20 +0000
X-UUID: ed5f83f540af4ec89aa3b9346dee620f-20200121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=6WaNWOfa46J2GWHShF5m9c5yZWCPf9Q+iDYuJFOqKRE=; 
 b=WwRGxHEUh7vRBA8kBsrRmqgS77pNQc1ZcXt47eEQuTBa4USmGhAq6qvjIhRDkhZksMLIGpAWRBpsjSKXqxwfbdvCFDyc9fmXfU1uvVf7Y2A6xGIPv5Da2RsGyxVSH/T9+OBnCnDfQWYjFL1UvZB/IM3z9X4jpygavssQncoIKO0=;
X-UUID: ed5f83f540af4ec89aa3b9346dee620f-20200121
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 528501376; Tue, 21 Jan 2020 19:48:09 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 Jan 2020 19:49:08 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 22 Jan 2020 11:47:26 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 22 Jan 2020 11:46:48 +0800
Message-ID: <1579664886.6399.24.camel@mtksdaap41>
Subject: Re: [PATCH v7 3/6] mfd: Add support for the MediaTek MT6358 PMIC
From: Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>
Date: Wed, 22 Jan 2020 11:48:06 +0800
In-Reply-To: <20191216151735.GD2369@dell>
References: <1576057435-3561-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1576057435-3561-4-git-send-email-hsin-hsiung.wang@mediatek.com>
 <20191216151735.GD2369@dell>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_194817_839138_BC296A10 
X-CRM114-Status: GOOD (  26.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Alessandro
 Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 srv_heupstream@mediatek.com, Frank Wunderlich <frank-w@public-files.de>,
 Ran Bi <ran.bi@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Tianping Fang <tianping.fang@mediatek.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Alexandre Belloni <alexandre.belloni@free-electrons.com>,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, 2019-12-16 at 15:17 +0000, Lee Jones wrote:
> On Wed, 11 Dec 2019, Hsin-Hsiung Wang wrote:
> 
> > This adds support for the MediaTek MT6358 PMIC. This is a
> > multifunction device with the following sub modules:
> > 
> > - Regulator
> > - RTC
> > - Codec
> > - Interrupt
> > 
> > It is interfaced to the host controller using SPI interface
> > by a proprietary hardware called PMIC wrapper or pwrap.
> > MT6358 MFD is a child device of the pwrap.
> > 
> > Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> > ---
> >  drivers/mfd/Makefile                 |   2 +-
> >  drivers/mfd/mt6358-irq.c             | 224 ++++++++++++++++++++++++++++
> >  drivers/mfd/mt6397-core.c            |  45 +++++-
> >  include/linux/mfd/mt6358/core.h      | 158 ++++++++++++++++++++
> >  include/linux/mfd/mt6358/registers.h | 282 +++++++++++++++++++++++++++++++++++
> >  include/linux/mfd/mt6397/core.h      |   3 +
> >  6 files changed, 712 insertions(+), 2 deletions(-)
> >  create mode 100644 drivers/mfd/mt6358-irq.c
> >  create mode 100644 include/linux/mfd/mt6358/core.h
> >  create mode 100644 include/linux/mfd/mt6358/registers.h
> > 
> > diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> > index aed99f0..791a8f4 100644
> > --- a/drivers/mfd/Makefile
> > +++ b/drivers/mfd/Makefile
> > @@ -237,7 +237,7 @@ obj-$(CONFIG_INTEL_SOC_PMIC)	+= intel-soc-pmic.o
> >  obj-$(CONFIG_INTEL_SOC_PMIC_BXTWC)	+= intel_soc_pmic_bxtwc.o
> >  obj-$(CONFIG_INTEL_SOC_PMIC_CHTWC)	+= intel_soc_pmic_chtwc.o
> >  obj-$(CONFIG_INTEL_SOC_PMIC_CHTDC_TI)	+= intel_soc_pmic_chtdc_ti.o
> > -mt6397-objs	:= mt6397-core.o mt6397-irq.o
> > +mt6397-objs			:= mt6397-core.o mt6397-irq.o mt6358-irq.o
> >  obj-$(CONFIG_MFD_MT6397)	+= mt6397.o
> >  obj-$(CONFIG_INTEL_SOC_PMIC_MRFLD)	+= intel_soc_pmic_mrfld.o
> >  
> > diff --git a/drivers/mfd/mt6358-irq.c b/drivers/mfd/mt6358-irq.c
> > new file mode 100644
> > index 0000000..091b261
> > --- /dev/null
> > +++ b/drivers/mfd/mt6358-irq.c
> > @@ -0,0 +1,224 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +//
> > +// Copyright (c) 2019 MediaTek Inc.
> > +
> > +#include <linux/interrupt.h>
> > +#include <linux/mfd/mt6358/core.h>
> > +#include <linux/mfd/mt6358/registers.h>
> > +#include <linux/mfd/mt6397/core.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/of_device.h>
> > +#include <linux/of_irq.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/regmap.h>
> > +
> > +static struct irq_top_t mt6358_ints[] = {
> > +	MT6358_TOP_GEN(BUCK),
> > +	MT6358_TOP_GEN(LDO),
> > +	MT6358_TOP_GEN(PSC),
> > +	MT6358_TOP_GEN(SCK),
> > +	MT6358_TOP_GEN(BM),
> > +	MT6358_TOP_GEN(HK),
> > +	MT6358_TOP_GEN(AUD),
> > +	MT6358_TOP_GEN(MISC),
> > +};
> > +
> > +static void pmic_irq_enable(struct irq_data *data)
> > +{
> > +	unsigned int hwirq = irqd_to_hwirq(data);
> > +	struct mt6397_chip *chip = irq_data_get_irq_chip_data(data);
> > +	struct pmic_irq_data *irqd = chip->irq_data;
> > +
> > +	irqd->enable_hwirq[hwirq] = true;
> > +}
> > +
> > +static void pmic_irq_disable(struct irq_data *data)
> > +{
> > +	unsigned int hwirq = irqd_to_hwirq(data);
> > +	struct mt6397_chip *chip = irq_data_get_irq_chip_data(data);
> > +	struct pmic_irq_data *irqd = chip->irq_data;
> > +
> > +	irqd->enable_hwirq[hwirq] = false;
> > +}
> > +
> > +static void pmic_irq_lock(struct irq_data *data)
> > +{
> > +	struct mt6397_chip *chip = irq_data_get_irq_chip_data(data);
> > +
> > +	mutex_lock(&chip->irqlock);
> > +}
> > +
> > +static void pmic_irq_sync_unlock(struct irq_data *data)
> > +{
> > +	unsigned int i, top_gp, en_reg, int_regs, shift;
> > +	struct mt6397_chip *chip = irq_data_get_irq_chip_data(data);
> > +	struct pmic_irq_data *irqd = chip->irq_data;
> > +
> > +	for (i = 0; i < irqd->num_pmic_irqs; i++) {
> > +		if (irqd->enable_hwirq[i] == irqd->cache_hwirq[i])
> > +			continue;
> > +
> > +		/* Find out the irq group */
> 
> "IRQ"
> 

Thanks for your comments.
I will update them in next patch.

> > +		top_gp = 0;
> 
> What is 'top'?
> 

TOP means the first level of interrupt groups.
MT6358 has 8 interrupt groups, so we use top_gp to indicate which
interrupt group the interrupt locates.

static struct irq_top_t mt6358_ints[] = {
	MT6358_TOP_GEN(BUCK),
	MT6358_TOP_GEN(LDO),
	MT6358_TOP_GEN(PSC),
	MT6358_TOP_GEN(SCK),
	MT6358_TOP_GEN(BM),
	MT6358_TOP_GEN(HK),
	MT6358_TOP_GEN(AUD),
	MT6358_TOP_GEN(MISC),
};

> > +		while ((top_gp + 1) < irqd->num_top &&
> > +		       i >= mt6358_ints[top_gp + 1].hwirq_base)
> > +			top_gp++;
> > +
> > +		/* Find the irq registers */
> > +		int_regs = (i - mt6358_ints[top_gp].hwirq_base) /
> > +			    MT6358_REG_WIDTH;
> > +		en_reg = mt6358_ints[top_gp].en_reg +
> > +			mt6358_ints[top_gp].en_reg_shift * int_regs;
> 
> More brackets required.
> 
> > +		shift = (i - mt6358_ints[top_gp].hwirq_base) % MT6358_REG_WIDTH;
> 
> '\n'
> 
> > +		regmap_update_bits(chip->regmap, en_reg, BIT(shift),
> > +				   irqd->enable_hwirq[i] << shift);
> 
> '\n'
> 
> > +		irqd->cache_hwirq[i] = irqd->enable_hwirq[i];
> > +	}
> > +	mutex_unlock(&chip->irqlock);
> > +}
> > +
> > +static struct irq_chip mt6358_irq_chip = {
> > +	.name = "mt6358-irq",
> > +	.flags = IRQCHIP_SKIP_SET_WAKE,
> > +	.irq_enable = pmic_irq_enable,
> > +	.irq_disable = pmic_irq_disable,
> > +	.irq_bus_lock = pmic_irq_lock,
> > +	.irq_bus_sync_unlock = pmic_irq_sync_unlock,
> > +};
> > +
> > +static void mt6358_irq_sp_handler(struct mt6397_chip *chip,
> > +				  unsigned int top_gp)
> > +{
> > +	unsigned int sta_reg, irq_status;
> > +	unsigned int hwirq, virq;
> > +	int ret, i, j;
> > +
> > +	for (i = 0; i < mt6358_ints[top_gp].num_int_regs; i++) {
> > +		sta_reg = mt6358_ints[top_gp].sta_reg +
> > +			mt6358_ints[top_gp].sta_reg_shift * i;
> 
> '\n'
> 
> > +		ret = regmap_read(chip->regmap, sta_reg, &irq_status);
> > +		if (ret) {
> > +			dev_err(chip->dev,
> > +				"Failed to read irq status: %d\n", ret);
> 
> "IRQ"
> 
> > +			return;
> > +		}
> > +
> > +		if (!irq_status)
> > +			continue;
> > +
> > +		for (j = 0; j < MT6358_REG_WIDTH ; j++) {
> 
> Misplaced ' '
> 
> > +			if ((irq_status & BIT(j)) == 0)
> 
> Too much bracketing.
> 
> > +				continue;
> 
> '\n'
> 
> > +			hwirq = mt6358_ints[top_gp].hwirq_base +
> > +				MT6358_REG_WIDTH * i + j;
> 
> '\n'
> 
> > +			virq = irq_find_mapping(chip->irq_domain, hwirq);
> > +			if (virq)
> > +				handle_nested_irq(virq);
> > +		}
> > +
> > +		regmap_write(chip->regmap, sta_reg, irq_status);
> > +	}
> > +}

...

> > +int mt6358_irq_init(struct mt6397_chip *chip)
> > +{
> > +	int i, j, ret;
> > +	struct pmic_irq_data *irqd;
> > +
> > +	irqd = devm_kzalloc(chip->dev, sizeof(struct pmic_irq_data *),
> > +			    GFP_KERNEL);
> > +	if (!irqd)
> > +		return -ENOMEM;
> > +
> > +	chip->irq_data = irqd;
> > +
> > +	mutex_init(&chip->irqlock);
> > +	irqd->top_int_status_reg = MT6358_TOP_INT_STATUS0;
> > +	irqd->num_pmic_irqs = MT6358_IRQ_NR;
> > +	irqd->num_top = ARRAY_SIZE(mt6358_ints);
> > +
> > +	irqd->enable_hwirq = devm_kcalloc(chip->dev,
> > +					  irqd->num_pmic_irqs,
> > +					  sizeof(bool),
> 
> This is fragile.  What if the type changes elsewhere?
> 

Thanks for your comment.
Do you mean using 'sizeof(*irqd->enable_hwirq)' instead of
'sizeof(bool)'?

> > +					  GFP_KERNEL);
> > +	if (!irqd->enable_hwirq)
> > +		return -ENOMEM;
> > +
> > +	irqd->cache_hwirq = devm_kcalloc(chip->dev,
> > +					 irqd->num_pmic_irqs,
> > +					 sizeof(bool),
> 
> As above.
> 
> > +					 GFP_KERNEL);
> > +	if (!irqd->cache_hwirq)
> > +		return -ENOMEM;
> > +
> > +	/* Disable all interrupts for initializing */
> > +	for (i = 0; i < irqd->num_top; i++) {
> > +		for (j = 0; j < mt6358_ints[i].num_int_regs; j++)
> > +			regmap_write(chip->regmap,
> > +				     mt6358_ints[i].en_reg +
> > +				     mt6358_ints[i].en_reg_shift * j, 0);
> 
> No magic numbers please.
> 

Sorry, I don't know which number is magic numbers.
Could you please point out it?

> > +	}
> > +
> > +	chip->irq_domain = irq_domain_add_linear(chip->dev->of_node,
> > +						 irqd->num_pmic_irqs,
> > +						 &mt6358_irq_domain_ops, chip);
> > +	if (!chip->irq_domain) {
> > +		dev_err(chip->dev, "could not create IRQ domain\n");
> 
> "Could"
> 
> > +		return -ENODEV;
> > +	}
> > +
> > +	ret = devm_request_threaded_irq(chip->dev, chip->irq, NULL,
> > +					mt6358_irq_handler, IRQF_ONESHOT,
> > +					mt6358_irq_chip.name, chip);
> > +	if (ret) {
> > +		dev_err(chip->dev, "failed to register irq=%d; err: %d\n",
> 
> "Failed"
> "IRQ"
> 
> This "err: %d" format is different to the one above too.
> 
> > +			chip->irq, ret);
> > +		return ret;
> > +	}
> > +
> > +	enable_irq_wake(chip->irq);
> > +	return ret;
> > +}
> > diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
> > index d2e70d8..6ca364e 100644
> > --- a/drivers/mfd/mt6397-core.c
> > +++ b/drivers/mfd/mt6397-core.c
> > @@ -12,13 +12,18 @@

...

> > @@ -154,7 +184,11 @@ static int mt6397_probe(struct platform_device *pdev)
> >  	if (pmic->irq <= 0)
> >  		return pmic->irq;
> >  
> > -	ret = mt6397_irq_init(pmic);
> > +	if (pmic->chip_id == MT6358_CHIP_ID)
> > +		ret = mt6358_irq_init(pmic);
> > +	else
> > +		ret = mt6397_irq_init(pmic);
> 
> Have you checked to ensure you have a valid/supported chip ID?
> 

Thanks for the comment.
I will move it into the switch case.

> >  	if (ret)
> >  		return ret;
> >  
> > @@ -165,6 +199,12 @@ static int mt6397_probe(struct platform_device *pdev)
> >  					   NULL, 0, pmic->irq_domain);
> >  		break;
> >  
> > +	case MT6358_CHIP_ID:
> > +		ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
> > +					   mt6358_devs, ARRAY_SIZE(mt6358_devs),
> > +					   NULL, 0, pmic->irq_domain);
> > +		break;
> > +
> >  	case MT6391_CHIP_ID:
> >  	case MT6397_CHIP_ID:
> >  		ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
> > @@ -190,6 +230,9 @@ static const struct of_device_id mt6397_of_match[] = {
> >  		.compatible = "mediatek,mt6323",
> >  		.data = &mt6323_core,
> >  	}, {
> > +		.compatible = "mediatek,mt6358",
> > +		.data = &mt6358_core,
> > +	}, {
> >  		.compatible = "mediatek,mt6397",
> >  		.data = &mt6397_core,
> >  	}, {
> > diff --git a/include/linux/mfd/mt6358/core.h b/include/linux/mfd/mt6358/core.h
> > new file mode 100644
> > index 0000000..a304aae
> > --- /dev/null
> > +++ b/include/linux/mfd/mt6358/core.h
> > @@ -0,0 +1,158 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (c) 2019 MediaTek Inc.
> > + */
> > +
> > +#ifndef __MFD_MT6358_CORE_H__
> > +#define __MFD_MT6358_CORE_H__
> > +
> > +#define MT6358_REG_WIDTH 16
> > +
> > +struct irq_top_t {
> > +	int hwirq_base;
> > +	unsigned int num_int_regs;
> > +	unsigned int num_int_bits;
> > +	unsigned int en_reg;
> > +	unsigned int en_reg_shift;
> > +	unsigned int sta_reg;
> > +	unsigned int sta_reg_shift;
> > +	unsigned int top_offset;
> > +};
> > +
> > +struct pmic_irq_data {
> > +	unsigned int num_top;
> > +	unsigned int num_pmic_irqs;
> > +	unsigned short top_int_status_reg;
> > +	bool *enable_hwirq;
> > +	bool *cache_hwirq;
> > +};
> > +
> > +enum mt6358_irq_top_status_shift {
> > +	MT6358_BUCK_TOP = 0,
> > +	MT6358_LDO_TOP,
> > +	MT6358_PSC_TOP,
> > +	MT6358_SCK_TOP,
> > +	MT6358_BM_TOP,
> > +	MT6358_HK_TOP,
> > +	MT6358_AUD_TOP,
> > +	MT6358_MISC_TOP,
> > +};
> > +
> > +enum mt6358_irq_numbers {
> > +	MT6358_IRQ_VPROC11_OC = 0,
> > +	MT6358_IRQ_VPROC12_OC,
> > +	MT6358_IRQ_VCORE_OC,
> > +	MT6358_IRQ_VGPU_OC,
> > +	MT6358_IRQ_VMODEM_OC,
> > +	MT6358_IRQ_VDRAM1_OC,
> > +	MT6358_IRQ_VS1_OC,
> > +	MT6358_IRQ_VS2_OC,
> > +	MT6358_IRQ_VPA_OC,
> > +	MT6358_IRQ_VCORE_PREOC,
> > +	MT6358_IRQ_VFE28_OC = 16,
> > +	MT6358_IRQ_VXO22_OC,
> > +	MT6358_IRQ_VRF18_OC,
> > +	MT6358_IRQ_VRF12_OC,
> > +	MT6358_IRQ_VEFUSE_OC,
> > +	MT6358_IRQ_VCN33_OC,
> > +	MT6358_IRQ_VCN28_OC,
> > +	MT6358_IRQ_VCN18_OC,
> > +	MT6358_IRQ_VCAMA1_OC,
> > +	MT6358_IRQ_VCAMA2_OC,
> > +	MT6358_IRQ_VCAMD_OC,
> > +	MT6358_IRQ_VCAMIO_OC,
> > +	MT6358_IRQ_VLDO28_OC,
> > +	MT6358_IRQ_VA12_OC,
> > +	MT6358_IRQ_VAUX18_OC,
> > +	MT6358_IRQ_VAUD28_OC,
> > +	MT6358_IRQ_VIO28_OC,
> > +	MT6358_IRQ_VIO18_OC,
> > +	MT6358_IRQ_VSRAM_PROC11_OC,
> > +	MT6358_IRQ_VSRAM_PROC12_OC,
> > +	MT6358_IRQ_VSRAM_OTHERS_OC,
> > +	MT6358_IRQ_VSRAM_GPU_OC,
> > +	MT6358_IRQ_VDRAM2_OC,
> > +	MT6358_IRQ_VMC_OC,
> > +	MT6358_IRQ_VMCH_OC,
> > +	MT6358_IRQ_VEMC_OC,
> > +	MT6358_IRQ_VSIM1_OC,
> > +	MT6358_IRQ_VSIM2_OC,
> > +	MT6358_IRQ_VIBR_OC,
> > +	MT6358_IRQ_VUSB_OC,
> > +	MT6358_IRQ_VBIF28_OC,
> > +	MT6358_IRQ_PWRKEY = 48,
> > +	MT6358_IRQ_HOMEKEY,
> > +	MT6358_IRQ_PWRKEY_R,
> > +	MT6358_IRQ_HOMEKEY_R,
> > +	MT6358_IRQ_NI_LBAT_INT,
> > +	MT6358_IRQ_CHRDET,
> > +	MT6358_IRQ_CHRDET_EDGE,
> > +	MT6358_IRQ_VCDT_HV_DET,
> > +	MT6358_IRQ_RTC = 64,
> > +	MT6358_IRQ_FG_BAT0_H = 80,
> > +	MT6358_IRQ_FG_BAT0_L,
> > +	MT6358_IRQ_FG_CUR_H,
> > +	MT6358_IRQ_FG_CUR_L,
> > +	MT6358_IRQ_FG_ZCV,
> > +	MT6358_IRQ_FG_BAT1_H,
> > +	MT6358_IRQ_FG_BAT1_L,
> > +	MT6358_IRQ_FG_N_CHARGE_L,
> > +	MT6358_IRQ_FG_IAVG_H,
> > +	MT6358_IRQ_FG_IAVG_L,
> > +	MT6358_IRQ_FG_TIME_H,
> > +	MT6358_IRQ_FG_DISCHARGE,
> > +	MT6358_IRQ_FG_CHARGE,
> > +	MT6358_IRQ_BATON_LV = 96,
> > +	MT6358_IRQ_BATON_HT,
> > +	MT6358_IRQ_BATON_BAT_IN,
> > +	MT6358_IRQ_BATON_BAT_OUT,
> > +	MT6358_IRQ_BIF,
> > +	MT6358_IRQ_BAT_H = 112,
> > +	MT6358_IRQ_BAT_L,
> > +	MT6358_IRQ_BAT2_H,
> > +	MT6358_IRQ_BAT2_L,
> > +	MT6358_IRQ_BAT_TEMP_H,
> > +	MT6358_IRQ_BAT_TEMP_L,
> > +	MT6358_IRQ_AUXADC_IMP,
> > +	MT6358_IRQ_NAG_C_DLTV,
> > +	MT6358_IRQ_AUDIO = 128,
> > +	MT6358_IRQ_ACCDET = 133,
> > +	MT6358_IRQ_ACCDET_EINT0,
> > +	MT6358_IRQ_ACCDET_EINT1,
> > +	MT6358_IRQ_SPI_CMD_ALERT = 144,
> > +	MT6358_IRQ_NR,
> > +};
> > +
> > +#define MT6358_IRQ_BUCK_BASE MT6358_IRQ_VPROC11_OC
> > +#define MT6358_IRQ_LDO_BASE MT6358_IRQ_VFE28_OC
> > +#define MT6358_IRQ_PSC_BASE MT6358_IRQ_PWRKEY
> > +#define MT6358_IRQ_SCK_BASE MT6358_IRQ_RTC
> > +#define MT6358_IRQ_BM_BASE MT6358_IRQ_FG_BAT0_H
> > +#define MT6358_IRQ_HK_BASE MT6358_IRQ_BAT_H
> > +#define MT6358_IRQ_AUD_BASE MT6358_IRQ_AUDIO
> > +#define MT6358_IRQ_MISC_BASE MT6358_IRQ_SPI_CMD_ALERT
> > +
> > +#define MT6358_IRQ_BUCK_BITS (MT6358_IRQ_VCORE_PREOC - MT6358_IRQ_BUCK_BASE + 1)
> > +#define MT6358_IRQ_LDO_BITS (MT6358_IRQ_VBIF28_OC - MT6358_IRQ_LDO_BASE + 1)
> > +#define MT6358_IRQ_PSC_BITS (MT6358_IRQ_VCDT_HV_DET - MT6358_IRQ_PSC_BASE + 1)
> > +#define MT6358_IRQ_SCK_BITS (MT6358_IRQ_RTC - MT6358_IRQ_SCK_BASE + 1)
> > +#define MT6358_IRQ_BM_BITS (MT6358_IRQ_BIF - MT6358_IRQ_BM_BASE + 1)
> > +#define MT6358_IRQ_HK_BITS (MT6358_IRQ_NAG_C_DLTV - MT6358_IRQ_HK_BASE + 1)
> > +#define MT6358_IRQ_AUD_BITS (MT6358_IRQ_ACCDET_EINT1 - MT6358_IRQ_AUD_BASE + 1)
> > +#define MT6358_IRQ_MISC_BITS	\
> > +	(MT6358_IRQ_SPI_CMD_ALERT - MT6358_IRQ_MISC_BASE + 1)
> > +
> > +#define MT6358_TOP_GEN(sp)	\
> > +{	\
> > +	.hwirq_base = MT6358_IRQ_##sp##_BASE,	\
> > +	.num_int_regs =	\
> > +		((MT6358_IRQ_##sp##_BITS - 1) / MT6358_REG_WIDTH) + 1,	\
> > +	.num_int_bits = MT6358_IRQ_##sp##_BITS, \
> > +	.en_reg = MT6358_##sp##_TOP_INT_CON0,	\
> > +	.en_reg_shift = 0x6,	\
> > +	.sta_reg = MT6358_##sp##_TOP_INT_STATUS0,	\
> > +	.sta_reg_shift = 0x2,	\
> > +	.top_offset = MT6358_##sp##_TOP,	\
> > +}
> > +
> > +#endif /* __MFD_MT6358_CORE_H__ */
> > diff --git a/include/linux/mfd/mt6358/registers.h b/include/linux/mfd/mt6358/registers.h
> > new file mode 100644
> > index 0000000..ff5645b
> > --- /dev/null
> > +++ b/include/linux/mfd/mt6358/registers.h
> > @@ -0,0 +1,282 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (c) 2019 MediaTek Inc.
> > + */
> > +
> > +#ifndef __MFD_MT6358_REGISTERS_H__
> > +#define __MFD_MT6358_REGISTERS_H__
> > +
> > +/* PMIC Registers */
> > +#define MT6358_SWCID                          0xa
> > +#define MT6358_MISC_TOP_INT_CON0              0x188
> > +#define MT6358_MISC_TOP_INT_STATUS0           0x194
> > +#define MT6358_TOP_INT_STATUS0                0x19e
> > +#define MT6358_SCK_TOP_INT_CON0               0x52e
> > +#define MT6358_SCK_TOP_INT_STATUS0            0x53a
> > +#define MT6358_EOSC_CALI_CON0                 0x540
> > +#define MT6358_EOSC_CALI_CON1                 0x542
> > +#define MT6358_RTC_MIX_CON0                   0x544
> > +#define MT6358_RTC_MIX_CON1                   0x546
> > +#define MT6358_RTC_MIX_CON2                   0x548
> > +#define MT6358_RTC_DSN_ID                     0x580
> > +#define MT6358_RTC_DSN_REV0                   0x582
> > +#define MT6358_RTC_DBI                        0x584
> > +#define MT6358_RTC_DXI                        0x586
> > +#define MT6358_RTC_BBPU                       0x588
> > +#define MT6358_RTC_IRQ_STA                    0x58a
> > +#define MT6358_RTC_IRQ_EN                     0x58c
> > +#define MT6358_RTC_CII_EN                     0x58e
> > +#define MT6358_RTC_AL_MASK                    0x590
> > +#define MT6358_RTC_TC_SEC                     0x592
> > +#define MT6358_RTC_TC_MIN                     0x594
> > +#define MT6358_RTC_TC_HOU                     0x596
> > +#define MT6358_RTC_TC_DOM                     0x598
> > +#define MT6358_RTC_TC_DOW                     0x59a
> > +#define MT6358_RTC_TC_MTH                     0x59c
> > +#define MT6358_RTC_TC_YEA                     0x59e
> > +#define MT6358_RTC_AL_SEC                     0x5a0
> > +#define MT6358_RTC_AL_MIN                     0x5a2
> > +#define MT6358_RTC_AL_HOU                     0x5a4
> > +#define MT6358_RTC_AL_DOM                     0x5a6
> > +#define MT6358_RTC_AL_DOW                     0x5a8
> > +#define MT6358_RTC_AL_MTH                     0x5aa
> > +#define MT6358_RTC_AL_YEA                     0x5ac
> > +#define MT6358_RTC_OSC32CON                   0x5ae
> > +#define MT6358_RTC_POWERKEY1                  0x5b0
> > +#define MT6358_RTC_POWERKEY2                  0x5b2
> > +#define MT6358_RTC_PDN1                       0x5b4
> > +#define MT6358_RTC_PDN2                       0x5b6
> > +#define MT6358_RTC_SPAR0                      0x5b8
> > +#define MT6358_RTC_SPAR1                      0x5ba
> > +#define MT6358_RTC_PROT                       0x5bc
> > +#define MT6358_RTC_DIFF                       0x5be
> > +#define MT6358_RTC_CALI                       0x5c0
> > +#define MT6358_RTC_WRTGR                      0x5c2
> > +#define MT6358_RTC_CON                        0x5c4
> > +#define MT6358_RTC_SEC_CTRL                   0x5c6
> > +#define MT6358_RTC_INT_CNT                    0x5c8
> > +#define MT6358_RTC_SEC_DAT0                   0x5ca
> > +#define MT6358_RTC_SEC_DAT1                   0x5cc
> > +#define MT6358_RTC_SEC_DAT2                   0x5ce
> > +#define MT6358_RTC_SEC_DSN_ID                 0x600
> > +#define MT6358_RTC_SEC_DSN_REV0               0x602
> > +#define MT6358_RTC_SEC_DBI                    0x604
> > +#define MT6358_RTC_SEC_DXI                    0x606
> > +#define MT6358_RTC_TC_SEC_SEC                 0x608
> > +#define MT6358_RTC_TC_MIN_SEC                 0x60a
> > +#define MT6358_RTC_TC_HOU_SEC                 0x60c
> > +#define MT6358_RTC_TC_DOM_SEC                 0x60e
> > +#define MT6358_RTC_TC_DOW_SEC                 0x610
> > +#define MT6358_RTC_TC_MTH_SEC                 0x612
> > +#define MT6358_RTC_TC_YEA_SEC                 0x614
> > +#define MT6358_RTC_SEC_CK_PDN                 0x616
> > +#define MT6358_RTC_SEC_WRTGR                  0x618
> > +#define MT6358_PSC_TOP_INT_CON0               0x910
> > +#define MT6358_PSC_TOP_INT_STATUS0            0x91c
> > +#define MT6358_BM_TOP_INT_CON0                0xc32
> > +#define MT6358_BM_TOP_INT_CON1                0xc38
> > +#define MT6358_BM_TOP_INT_STATUS0             0xc4a
> > +#define MT6358_BM_TOP_INT_STATUS1             0xc4c
> > +#define MT6358_HK_TOP_INT_CON0                0xf92
> > +#define MT6358_HK_TOP_INT_STATUS0             0xf9e
> > +#define MT6358_BUCK_TOP_INT_CON0              0x1318
> > +#define MT6358_BUCK_TOP_INT_STATUS0           0x1324
> > +#define MT6358_BUCK_VPROC11_CON0              0x1388
> > +#define MT6358_BUCK_VPROC11_DBG0              0x139e
> > +#define MT6358_BUCK_VPROC11_DBG1              0x13a0
> > +#define MT6358_BUCK_VPROC11_ELR0              0x13a6
> > +#define MT6358_BUCK_VPROC12_CON0              0x1408
> > +#define MT6358_BUCK_VPROC12_DBG0              0x141e
> > +#define MT6358_BUCK_VPROC12_DBG1              0x1420
> > +#define MT6358_BUCK_VPROC12_ELR0              0x1426
> > +#define MT6358_BUCK_VCORE_CON0                0x1488
> > +#define MT6358_BUCK_VCORE_DBG0                0x149e
> > +#define MT6358_BUCK_VCORE_DBG1                0x14a0
> > +#define MT6358_BUCK_VCORE_ELR0                0x14aa
> > +#define MT6358_BUCK_VGPU_CON0                 0x1508
> > +#define MT6358_BUCK_VGPU_DBG0                 0x151e
> > +#define MT6358_BUCK_VGPU_DBG1                 0x1520
> > +#define MT6358_BUCK_VGPU_ELR0                 0x1526
> > +#define MT6358_BUCK_VMODEM_CON0               0x1588
> > +#define MT6358_BUCK_VMODEM_DBG0               0x159e
> > +#define MT6358_BUCK_VMODEM_DBG1               0x15a0
> > +#define MT6358_BUCK_VMODEM_ELR0               0x15a6
> > +#define MT6358_BUCK_VDRAM1_CON0               0x1608
> > +#define MT6358_BUCK_VDRAM1_DBG0               0x161e
> > +#define MT6358_BUCK_VDRAM1_DBG1               0x1620
> > +#define MT6358_BUCK_VDRAM1_ELR0               0x1626
> > +#define MT6358_BUCK_VS1_CON0                  0x1688
> > +#define MT6358_BUCK_VS1_DBG0                  0x169e
> > +#define MT6358_BUCK_VS1_DBG1                  0x16a0
> > +#define MT6358_BUCK_VS1_ELR0                  0x16ae
> > +#define MT6358_BUCK_VS2_CON0                  0x1708
> > +#define MT6358_BUCK_VS2_DBG0                  0x171e
> > +#define MT6358_BUCK_VS2_DBG1                  0x1720
> > +#define MT6358_BUCK_VS2_ELR0                  0x172e
> > +#define MT6358_BUCK_VPA_CON0                  0x1788
> > +#define MT6358_BUCK_VPA_CON1                  0x178a
> > +#define MT6358_BUCK_VPA_ELR0                  MT6358_BUCK_VPA_CON1
> > +#define MT6358_BUCK_VPA_DBG0                  0x1792
> > +#define MT6358_BUCK_VPA_DBG1                  0x1794
> > +#define MT6358_VPROC_ANA_CON0                 0x180c
> > +#define MT6358_VCORE_VGPU_ANA_CON0            0x1828
> > +#define MT6358_VMODEM_ANA_CON0                0x1888
> > +#define MT6358_VDRAM1_ANA_CON0                0x1896
> > +#define MT6358_VS1_ANA_CON0                   0x18a2
> > +#define MT6358_VS2_ANA_CON0                   0x18ae
> > +#define MT6358_VPA_ANA_CON0                   0x18ba
> > +#define MT6358_LDO_TOP_INT_CON0               0x1a50
> > +#define MT6358_LDO_TOP_INT_CON1               0x1a56
> > +#define MT6358_LDO_TOP_INT_STATUS0            0x1a68
> > +#define MT6358_LDO_TOP_INT_STATUS1            0x1a6a
> > +#define MT6358_LDO_VXO22_CON0                 0x1a88
> > +#define MT6358_LDO_VXO22_CON1                 0x1a96
> > +#define MT6358_LDO_VA12_CON0                  0x1a9c
> > +#define MT6358_LDO_VA12_CON1                  0x1aaa
> > +#define MT6358_LDO_VAUX18_CON0                0x1ab0
> > +#define MT6358_LDO_VAUX18_CON1                0x1abe
> > +#define MT6358_LDO_VAUD28_CON0                0x1ac4
> > +#define MT6358_LDO_VAUD28_CON1                0x1ad2
> > +#define MT6358_LDO_VIO28_CON0                 0x1ad8
> > +#define MT6358_LDO_VIO28_CON1                 0x1ae6
> > +#define MT6358_LDO_VIO18_CON0                 0x1aec
> > +#define MT6358_LDO_VIO18_CON1                 0x1afa
> > +#define MT6358_LDO_VDRAM2_CON0                0x1b08
> > +#define MT6358_LDO_VDRAM2_CON1                0x1b16
> > +#define MT6358_LDO_VEMC_CON0                  0x1b1c
> > +#define MT6358_LDO_VEMC_CON1                  0x1b2a
> > +#define MT6358_LDO_VUSB_CON0_0                0x1b30
> > +#define MT6358_LDO_VUSB_CON1                  0x1b40
> > +#define MT6358_LDO_VSRAM_PROC11_CON0          0x1b46
> > +#define MT6358_LDO_VSRAM_PROC11_DBG0          0x1b60
> > +#define MT6358_LDO_VSRAM_PROC11_DBG1          0x1b62
> > +#define MT6358_LDO_VSRAM_PROC11_TRACKING_CON0 0x1b64
> > +#define MT6358_LDO_VSRAM_PROC11_TRACKING_CON1 0x1b66
> > +#define MT6358_LDO_VSRAM_PROC11_TRACKING_CON2 0x1b68
> > +#define MT6358_LDO_VSRAM_PROC11_TRACKING_CON3 0x1b6a
> > +#define MT6358_LDO_VSRAM_PROC12_TRACKING_CON0 0x1b6c
> > +#define MT6358_LDO_VSRAM_PROC12_TRACKING_CON1 0x1b6e
> > +#define MT6358_LDO_VSRAM_PROC12_TRACKING_CON2 0x1b70
> > +#define MT6358_LDO_VSRAM_PROC12_TRACKING_CON3 0x1b72
> > +#define MT6358_LDO_VSRAM_WAKEUP_CON0          0x1b74
> > +#define MT6358_LDO_GON1_ELR_NUM               0x1b76
> > +#define MT6358_LDO_VDRAM2_ELR0                0x1b78
> > +#define MT6358_LDO_VSRAM_PROC12_CON0          0x1b88
> > +#define MT6358_LDO_VSRAM_PROC12_DBG0          0x1ba2
> > +#define MT6358_LDO_VSRAM_PROC12_DBG1          0x1ba4
> > +#define MT6358_LDO_VSRAM_OTHERS_CON0          0x1ba6
> > +#define MT6358_LDO_VSRAM_OTHERS_DBG0          0x1bc0
> > +#define MT6358_LDO_VSRAM_OTHERS_DBG1          0x1bc2
> > +#define MT6358_LDO_VSRAM_GPU_CON0             0x1bc8
> > +#define MT6358_LDO_VSRAM_GPU_DBG0             0x1be2
> > +#define MT6358_LDO_VSRAM_GPU_DBG1             0x1be4
> > +#define MT6358_LDO_VSRAM_CON0                 0x1bee
> > +#define MT6358_LDO_VSRAM_CON1                 0x1bf0
> > +#define MT6358_LDO_VSRAM_CON2                 0x1bf2
> > +#define MT6358_LDO_VSRAM_CON3                 0x1bf4
> > +#define MT6358_LDO_VFE28_CON0                 0x1c08
> > +#define MT6358_LDO_VFE28_CON1                 0x1c16
> > +#define MT6358_LDO_VFE28_CON2                 0x1c18
> > +#define MT6358_LDO_VFE28_CON3                 0x1c1a
> > +#define MT6358_LDO_VRF18_CON0                 0x1c1c
> > +#define MT6358_LDO_VRF18_CON1                 0x1c2a
> > +#define MT6358_LDO_VRF18_CON2                 0x1c2c
> > +#define MT6358_LDO_VRF18_CON3                 0x1c2e
> > +#define MT6358_LDO_VRF12_CON0                 0x1c30
> > +#define MT6358_LDO_VRF12_CON1                 0x1c3e
> > +#define MT6358_LDO_VRF12_CON2                 0x1c40
> > +#define MT6358_LDO_VRF12_CON3                 0x1c42
> > +#define MT6358_LDO_VEFUSE_CON0                0x1c44
> > +#define MT6358_LDO_VEFUSE_CON1                0x1c52
> > +#define MT6358_LDO_VEFUSE_CON2                0x1c54
> > +#define MT6358_LDO_VEFUSE_CON3                0x1c56
> > +#define MT6358_LDO_VCN18_CON0                 0x1c58
> > +#define MT6358_LDO_VCN18_CON1                 0x1c66
> > +#define MT6358_LDO_VCN18_CON2                 0x1c68
> > +#define MT6358_LDO_VCN18_CON3                 0x1c6a
> > +#define MT6358_LDO_VCAMA1_CON0                0x1c6c
> > +#define MT6358_LDO_VCAMA1_CON1                0x1c7a
> > +#define MT6358_LDO_VCAMA1_CON2                0x1c7c
> > +#define MT6358_LDO_VCAMA1_CON3                0x1c7e
> > +#define MT6358_LDO_VCAMA2_CON0                0x1c88
> > +#define MT6358_LDO_VCAMA2_CON1                0x1c96
> > +#define MT6358_LDO_VCAMA2_CON2                0x1c98
> > +#define MT6358_LDO_VCAMA2_CON3                0x1c9a
> > +#define MT6358_LDO_VCAMD_CON0                 0x1c9c
> > +#define MT6358_LDO_VCAMD_CON1                 0x1caa
> > +#define MT6358_LDO_VCAMD_CON2                 0x1cac
> > +#define MT6358_LDO_VCAMD_CON3                 0x1cae
> > +#define MT6358_LDO_VCAMIO_CON0                0x1cb0
> > +#define MT6358_LDO_VCAMIO_CON1                0x1cbe
> > +#define MT6358_LDO_VCAMIO_CON2                0x1cc0
> > +#define MT6358_LDO_VCAMIO_CON3                0x1cc2
> > +#define MT6358_LDO_VMC_CON0                   0x1cc4
> > +#define MT6358_LDO_VMC_CON1                   0x1cd2
> > +#define MT6358_LDO_VMC_CON2                   0x1cd4
> > +#define MT6358_LDO_VMC_CON3                   0x1cd6
> > +#define MT6358_LDO_VMCH_CON0                  0x1cd8
> > +#define MT6358_LDO_VMCH_CON1                  0x1ce6
> > +#define MT6358_LDO_VMCH_CON2                  0x1ce8
> > +#define MT6358_LDO_VMCH_CON3                  0x1cea
> > +#define MT6358_LDO_VIBR_CON0                  0x1d08
> > +#define MT6358_LDO_VIBR_CON1                  0x1d16
> > +#define MT6358_LDO_VIBR_CON2                  0x1d18
> > +#define MT6358_LDO_VIBR_CON3                  0x1d1a
> > +#define MT6358_LDO_VCN33_CON0_0               0x1d1c
> > +#define MT6358_LDO_VCN33_CON0_1               0x1d2a
> > +#define MT6358_LDO_VCN33_CON1                 0x1d2c
> > +#define MT6358_LDO_VCN33_BT_CON1              MT6358_LDO_VCN33_CON1
> > +#define MT6358_LDO_VCN33_WIFI_CON1            MT6358_LDO_VCN33_CON1
> > +#define MT6358_LDO_VCN33_CON2                 0x1d2e
> > +#define MT6358_LDO_VCN33_CON3                 0x1d30
> > +#define MT6358_LDO_VLDO28_CON0_0              0x1d32
> > +#define MT6358_LDO_VLDO28_CON0_1              0x1d40
> > +#define MT6358_LDO_VLDO28_CON1                0x1d42
> > +#define MT6358_LDO_VLDO28_CON2                0x1d44
> > +#define MT6358_LDO_VLDO28_CON3                0x1d46
> > +#define MT6358_LDO_VSIM1_CON0                 0x1d48
> > +#define MT6358_LDO_VSIM1_CON1                 0x1d56
> > +#define MT6358_LDO_VSIM1_CON2                 0x1d58
> > +#define MT6358_LDO_VSIM1_CON3                 0x1d5a
> > +#define MT6358_LDO_VSIM2_CON0                 0x1d5c
> > +#define MT6358_LDO_VSIM2_CON1                 0x1d6a
> > +#define MT6358_LDO_VSIM2_CON2                 0x1d6c
> > +#define MT6358_LDO_VSIM2_CON3                 0x1d6e
> > +#define MT6358_LDO_VCN28_CON0                 0x1d88
> > +#define MT6358_LDO_VCN28_CON1                 0x1d96
> > +#define MT6358_LDO_VCN28_CON2                 0x1d98
> > +#define MT6358_LDO_VCN28_CON3                 0x1d9a
> > +#define MT6358_VRTC28_CON0                    0x1d9c
> > +#define MT6358_LDO_VBIF28_CON0                0x1d9e
> > +#define MT6358_LDO_VBIF28_CON1                0x1dac
> > +#define MT6358_LDO_VBIF28_CON2                0x1dae
> > +#define MT6358_LDO_VBIF28_CON3                0x1db0
> > +#define MT6358_VCAMA1_ANA_CON0                0x1e08
> > +#define MT6358_VCAMA2_ANA_CON0                0x1e0c
> > +#define MT6358_VCN33_ANA_CON0                 0x1e28
> > +#define MT6358_VSIM1_ANA_CON0                 0x1e2c
> > +#define MT6358_VSIM2_ANA_CON0                 0x1e30
> > +#define MT6358_VUSB_ANA_CON0                  0x1e34
> > +#define MT6358_VEMC_ANA_CON0                  0x1e38
> > +#define MT6358_VLDO28_ANA_CON0                0x1e3c
> > +#define MT6358_VIO28_ANA_CON0                 0x1e40
> > +#define MT6358_VIBR_ANA_CON0                  0x1e44
> > +#define MT6358_VMCH_ANA_CON0                  0x1e48
> > +#define MT6358_VMC_ANA_CON0                   0x1e4c
> > +#define MT6358_VRF18_ANA_CON0                 0x1e88
> > +#define MT6358_VCN18_ANA_CON0                 0x1e8c
> > +#define MT6358_VCAMIO_ANA_CON0                0x1e90
> > +#define MT6358_VIO18_ANA_CON0                 0x1e94
> > +#define MT6358_VEFUSE_ANA_CON0                0x1e98
> > +#define MT6358_VRF12_ANA_CON0                 0x1e9c
> > +#define MT6358_VSRAM_PROC11_ANA_CON0          0x1ea0
> > +#define MT6358_VSRAM_PROC12_ANA_CON0          0x1ea4
> > +#define MT6358_VSRAM_OTHERS_ANA_CON0          0x1ea6
> > +#define MT6358_VSRAM_GPU_ANA_CON0             0x1ea8
> > +#define MT6358_VDRAM2_ANA_CON0                0x1eaa
> > +#define MT6358_VCAMD_ANA_CON0                 0x1eae
> > +#define MT6358_VA12_ANA_CON0                  0x1eb2
> > +#define MT6358_AUD_TOP_INT_CON0               0x2228
> > +#define MT6358_AUD_TOP_INT_STATUS0            0x2234
> > +
> > +#endif /* __MFD_MT6358_REGISTERS_H__ */
> > diff --git a/include/linux/mfd/mt6397/core.h b/include/linux/mfd/mt6397/core.h
> > index b81d333..9492685 100644
> > --- a/include/linux/mfd/mt6397/core.h
> > +++ b/include/linux/mfd/mt6397/core.h
> > @@ -12,6 +12,7 @@
> >  
> >  enum chip_id {
> >  	MT6323_CHIP_ID = 0x23,
> > +	MT6358_CHIP_ID = 0x58,
> >  	MT6391_CHIP_ID = 0x91,
> >  	MT6397_CHIP_ID = 0x97,
> >  };
> > @@ -65,8 +66,10 @@ struct mt6397_chip {
> >  	u16 int_con[2];
> >  	u16 int_status[2];
> >  	u16 chip_id;
> > +	void *irq_data;
> >  };
> >  
> > +int mt6358_irq_init(struct mt6397_chip *chip);
> >  int mt6397_irq_init(struct mt6397_chip *chip);
> >  
> >  #endif /* __MFD_MT6397_CORE_H__ */
> > -- 
> > 2.6.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
