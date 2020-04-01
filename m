Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D04C219A733
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 10:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IyAkwSnftjwTgTOiFe6SLGkcgNQN/4g1nebFqVqv1WY=; b=bzHGFCg4dgoWQF
	dJSsV9dpoQRLmJfJN2ZmIRm0huFO+AX4dp0LLlrrdm47iE8+paPe22N26pmfZMIb5+CPrZtpAR7wq
	CFGSrG0f61L0Y1sm0fA21nTDauET0XoCs9sLFZpKoZgiPx/i2Ksz0tlq2T4CCH6IODM+KdxxVG0Fo
	TvBTctt9FBF7jn8Ogse/A1LAotaMos0mm1rN7dxogAndudqTvEG2NqF+dYBHE0HtaPaQmKFS7rXH+
	piOAdyuhhaWwFgMEB82MthUcZ3kkaKZ+mYrxqxSnvbr+R5ZFKntxdXht+aml341CNzbXLsGd2XyHg
	91k3MIiHEuSdsQiLfE8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJYgl-0006A2-Ut; Wed, 01 Apr 2020 08:25:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJYgd-00069U-Dw; Wed, 01 Apr 2020 08:25:25 +0000
X-UUID: 70965124f3c8402784c6adb18eabf0e6-20200401
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=EUSbiZ5r21/VYhtoXigszZHmGB4861uUEJICZijPPz8=; 
 b=k51DVMXg8o/achHWnhA5eJ6fk1JRrZwhZnQP3Ol31EZRw94MsKi+m7ZdX+6HewLkJn99S4ErUGm4GVv2qE1897UgjLXEB9cXl6rnKBEDTcCtxS5fr78eXNIzYFJSIILfhG4ZOdyNjYEMyWQuzkb4iDxFXqzZF/HGKl5XZz1SMCY=;
X-UUID: 70965124f3c8402784c6adb18eabf0e6-20200401
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 691201799; Wed, 01 Apr 2020 00:25:12 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 1 Apr 2020 01:15:14 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 1 Apr 2020 16:15:10 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 1 Apr 2020 16:15:10 +0800
Message-ID: <1585728912.29188.5.camel@mtksdaap41>
Subject: Re: [PATCH v10 3/5] mfd: Add support for the MediaTek MT6358 PMIC
From: Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>
Date: Wed, 1 Apr 2020 16:15:12 +0800
In-Reply-To: <20200325094326.GH442973@dell>
References: <1583918223-22506-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1583918223-22506-4-git-send-email-hsin-hsiung.wang@mediatek.com>
 <20200325094326.GH442973@dell>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 06D9F1349F844C3C636E8A872788F7EFF171DBA945BD46709F6C7CC20C761D822000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_012523_478436_4DD48AB7 
X-CRM114-Status: GOOD (  27.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Frank Wunderlich <frank-w@public-files.de>,
 Josef Friedl <josef.friedl@speed.at>, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 linux-kernel@vger.kernel.org, Richard
 Fontana <rfontana@redhat.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-pm@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Wed, 2020-03-25 at 09:43 +0000, Lee Jones wrote:
> On Wed, 11 Mar 2020, Hsin-Hsiung Wang wrote:
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
> >  drivers/mfd/mt6358-irq.c             | 236 +++++++++++++++++++++++++++++
> >  drivers/mfd/mt6397-core.c            |  55 ++++++-
> >  include/linux/mfd/mt6358/core.h      | 158 ++++++++++++++++++++
> >  include/linux/mfd/mt6358/registers.h | 282 +++++++++++++++++++++++++++++++++++
> >  include/linux/mfd/mt6397/core.h      |   3 +
> >  6 files changed, 731 insertions(+), 5 deletions(-)

[...]

> > diff --git a/drivers/mfd/mt6358-irq.c b/drivers/mfd/mt6358-irq.c
> > new file mode 100644
> > index 0000000..022e5f5
> > --- /dev/null
> > +++ b/drivers/mfd/mt6358-irq.c
> > @@ -0,0 +1,236 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +//
> > +// Copyright (c) 2019 MediaTek Inc.
> 
> This is out of date.
> 

Thanks. I will update it in the next patch.

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
> 
> 6397?
> 
> This does make me wonder how different this file is to the existing
> support for the MT6397.  What is the justification for not extending
> that instead of creating a brand new file?
> 

MT6358 is similar to MT6397 for mfd driver except the hardware design of
interrupt which provides more interrupts than MT6397.
I think MT6358 can reuse the other parts of MT6397 mfd driver, so I only
add the interrupt part of MT6358.

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
> > +	unsigned int i, top_gp, gp_offset, en_reg, int_regs, shift;
> > +	struct mt6397_chip *chip = irq_data_get_irq_chip_data(data);
> > +	struct pmic_irq_data *irqd = chip->irq_data;
> > +
> > +	for (i = 0; i < irqd->num_pmic_irqs; i++) {
> > +		if (irqd->enable_hwirq[i] == irqd->cache_hwirq[i])
> > +			continue;
> > +
> > +		/* Find out the IRQ group */
> > +		top_gp = 0;
> > +		while ((top_gp + 1) < irqd->num_top &&
> > +		       i >= mt6358_ints[top_gp + 1].hwirq_base)
> > +			top_gp++;
> > +
> > +		/* Find the irq registers */
> 
> Nit: "IRQ"
> 

Thanks. I will update it in the next patch.

> > +		gp_offset = i - mt6358_ints[top_gp].hwirq_base;
> > +		int_regs = gp_offset / MT6358_REG_WIDTH;
> > +		shift = gp_offset % MT6358_REG_WIDTH;
> > +		en_reg = mt6358_ints[top_gp].en_reg +
> > +			 (mt6358_ints[top_gp].en_reg_shift * int_regs);
> > +
> > +		regmap_update_bits(chip->regmap, en_reg, BIT(shift),
> > +				   irqd->enable_hwirq[i] << shift);
> > +
> > +		irqd->cache_hwirq[i] = irqd->enable_hwirq[i];
> > +	}
> > +	mutex_unlock(&chip->irqlock);
> > +}
> 
> [...]
> 
> > +int mt6358_irq_init(struct mt6397_chip *chip)
> > +{
> > +	int i, j, ret;
> > +	struct pmic_irq_data *irqd;
> > +
> > +	irqd = devm_kzalloc(chip->dev, sizeof(struct pmic_irq_data *),
> 
> sizeof(*irqd)
> 

Thanks. I will update it in the next patch.

> [...]
> 
> >  static const struct chip_data mt6397_core = {
> >  	.cid_addr = MT6397_CID,
> >  	.cid_shift = 0,
> > @@ -154,19 +184,33 @@ static int mt6397_probe(struct platform_device *pdev)
> >  	if (pmic->irq <= 0)
> >  		return pmic->irq;
> >  
> > -	ret = mt6397_irq_init(pmic);
> > -	if (ret)
> > -		return ret;
> > -
> >  	switch (pmic->chip_id) {
> >  	case MT6323_CHIP_ID:
> > +		ret = mt6397_irq_init(pmic);
> > +		if (ret)
> > +			return ret;
> > +
> >  		ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
> >  					   mt6323_devs, ARRAY_SIZE(mt6323_devs),
> >  					   NULL, 0, pmic->irq_domain);
> >  		break;
> >  
> > +	case MT6358_CHIP_ID:
> > +		ret = mt6358_irq_init(pmic);
> > +		if (ret)
> > +			return ret;
> > +
> > +		ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
> > +					   mt6358_devs, ARRAY_SIZE(mt6358_devs),
> > +					   NULL, 0, pmic->irq_domain);
> 
> In a subsequent patch you can choose the correct mtXXXX_devs structure
> to pass and call devm_mfd_add_devices() only once below the switch().
> 

Thanks for your comment. I will update it in the next patch.

> > +		break;
> > +
> >  	case MT6391_CHIP_ID:
> >  	case MT6397_CHIP_ID:
> > +		ret = mt6397_irq_init(pmic);
> > +		if (ret)
> > +			return ret;
> > +
> >  		ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
> >  					   mt6397_devs, ARRAY_SIZE(mt6397_devs),
> >  					   NULL, 0, pmic->irq_domain);
> 
> [...]
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
