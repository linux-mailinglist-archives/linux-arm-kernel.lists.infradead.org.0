Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3164C198EB1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 10:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXOPzqCeijoLwyj1VU5jMP46v25DZiLmwJRmPNrklMk=; b=Hw0IOYPkb5W+du
	2pa8I5eEi1D8Ew9OuLkZYjgbL9YlqknmCWx8hyfzErSGqAzYklTh7Omwkf5iQeWw/r0phJ42Ri1bW
	RcF2dTLk49GQnZbLA1AygFZ3/kWuWI9HCWeEyA0UmQriGrf+F77o5PNynRhdjR+CXBxH9uVqH2DwC
	VF+2eY39TbDqasUwLKYb7P2CVidkZ59elcV2BCy1Y5FSh02YHLFV1J7s0M0HaQyUGsDt6TAC0MPT5
	wfKm7N4bjQfzAWqyP8o2+3mcTclxdA3liIJzZpap8pQTyNjK3N0NIS+eozGgYxY+eZH4gJT5PiqmR
	iSQSzyplTZ8pzjzmeSMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJCQJ-0004b0-H9; Tue, 31 Mar 2020 08:39:03 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJCQA-0004aN-0w; Tue, 31 Mar 2020 08:38:55 +0000
X-UUID: 4d79a4d49900408097338868bdf78403-20200331
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=lct8ONGAtomUDA235lfpqdPWwE+ccWyMYtlhfefuNEw=; 
 b=JaRiIpDi9s8Qv/D8OtHQr/Y4VYttUuzZSOYfwrALm5A8nj7KFOzrSYUQ/K8DMP73XwTvjMRMWo6+Vpq00R8HY+ZKYWVtZhO7GYW0FyseJXW2LXH/6VvQe+gwP8pE0dzTAoac9WGO3eBmsWbyWK/2HhHa3MsoyKALLoMNyndzhDA=;
X-UUID: 4d79a4d49900408097338868bdf78403-20200331
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2034879984; Tue, 31 Mar 2020 00:38:32 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 31 Mar 2020 01:28:45 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 31 Mar 2020 16:28:41 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 31 Mar 2020 16:28:40 +0800
Message-ID: <1585643322.27082.3.camel@mtksdaap41>
Subject: Re: [PATCH v11 3/5] mfd: Add support for the MediaTek MT6358 PMIC
From: Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Lee Jones <lee.jones@linaro.org>
Date: Tue, 31 Mar 2020 16:28:42 +0800
In-Reply-To: <CANMq1KBqeUHj0gKcknPDvgzRzGMt26pq-_rt_ZM89phCHO9jqQ@mail.gmail.com>
References: <1585627657-3265-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1585627657-3265-4-git-send-email-hsin-hsiung.wang@mediatek.com>
 <CANMq1KBqeUHj0gKcknPDvgzRzGMt26pq-_rt_ZM89phCHO9jqQ@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 66156411AC7C6987A565DE837C979D90C593ABB3BD713E9063DE777D8BE22B722000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_013854_086410_EE26A3ED 
X-CRM114-Status: GOOD (  25.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, Frank
 Wunderlich <frank-w@public-files.de>, Josef Friedl <josef.friedl@speed.at>,
 Ran Bi <ran.bi@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Sebastian Reichel <sre@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 Richard Fontana <rfontana@redhat.com>,
 Devicetree List <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Sirs

On Tue, 2020-03-31 at 15:36 +0800, Nicolas Boichat wrote:
> On Tue, Mar 31, 2020 at 12:07 PM Hsin-Hsiung Wang
> <hsin-hsiung.wang@mediatek.com> wrote:
> >
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
> > Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>
> 
> This is missing a few comments from Lee Jones on v10, actually, repeated below:
> https://patchwork.kernel.org/patch/11431239/#23244041
> 

So sorry for missing this comment.I will reply it later.
Thanks a lot.

> > ---
> >  drivers/mfd/Makefile                 |   2 +-
> >  drivers/mfd/mt6358-irq.c             | 236 +++++++++++++++++++++++++++++
> >  drivers/mfd/mt6397-core.c            |  55 ++++++-
> >  include/linux/mfd/mt6358/core.h      | 158 ++++++++++++++++++++
> >  include/linux/mfd/mt6358/registers.h | 282 +++++++++++++++++++++++++++++++++++
> >  include/linux/mfd/mt6397/core.h      |   3 +
> >  6 files changed, 731 insertions(+), 5 deletions(-)
> >  create mode 100644 drivers/mfd/mt6358-irq.c
> >  create mode 100644 include/linux/mfd/mt6358/core.h
> >  create mode 100644 include/linux/mfd/mt6358/registers.h
> >
> > diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> > index b83f172..9af1414 100644
> > --- a/drivers/mfd/Makefile
> > +++ b/drivers/mfd/Makefile
> > @@ -238,7 +238,7 @@ obj-$(CONFIG_INTEL_SOC_PMIC)        += intel-soc-pmic.o
> >  obj-$(CONFIG_INTEL_SOC_PMIC_BXTWC)     += intel_soc_pmic_bxtwc.o
> >  obj-$(CONFIG_INTEL_SOC_PMIC_CHTWC)     += intel_soc_pmic_chtwc.o
> >  obj-$(CONFIG_INTEL_SOC_PMIC_CHTDC_TI)  += intel_soc_pmic_chtdc_ti.o
> > -mt6397-objs    := mt6397-core.o mt6397-irq.o
> > +mt6397-objs                    := mt6397-core.o mt6397-irq.o mt6358-irq.o
> >  obj-$(CONFIG_MFD_MT6397)       += mt6397.o
> >  obj-$(CONFIG_INTEL_SOC_PMIC_MRFLD)     += intel_soc_pmic_mrfld.o
> >
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
> 2020
> 
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
> > +       MT6358_TOP_GEN(BUCK),
> > +       MT6358_TOP_GEN(LDO),
> > +       MT6358_TOP_GEN(PSC),
> > +       MT6358_TOP_GEN(SCK),
> > +       MT6358_TOP_GEN(BM),
> > +       MT6358_TOP_GEN(HK),
> > +       MT6358_TOP_GEN(AUD),
> > +       MT6358_TOP_GEN(MISC),
> > +};
> > +
> > +static void pmic_irq_enable(struct irq_data *data)
> > +{
> > +       unsigned int hwirq = irqd_to_hwirq(data);
> > +       struct mt6397_chip *chip = irq_data_get_irq_chip_data(data);
> > +       struct pmic_irq_data *irqd = chip->irq_data;
> > +
> > +       irqd->enable_hwirq[hwirq] = true;
> > +}
> > +
> > +static void pmic_irq_disable(struct irq_data *data)
> > +{
> > +       unsigned int hwirq = irqd_to_hwirq(data);
> > +       struct mt6397_chip *chip = irq_data_get_irq_chip_data(data);
> > +       struct pmic_irq_data *irqd = chip->irq_data;
> > +
> > +       irqd->enable_hwirq[hwirq] = false;
> > +}
> > +
> > +static void pmic_irq_lock(struct irq_data *data)
> > +{
> > +       struct mt6397_chip *chip = irq_data_get_irq_chip_data(data);
> > +
> > +       mutex_lock(&chip->irqlock);
> > +}
> > +
> > +static void pmic_irq_sync_unlock(struct irq_data *data)
> > +{
> > +       unsigned int i, top_gp, gp_offset, en_reg, int_regs, shift;
> > +       struct mt6397_chip *chip = irq_data_get_irq_chip_data(data);
> > +       struct pmic_irq_data *irqd = chip->irq_data;
> > +
> > +       for (i = 0; i < irqd->num_pmic_irqs; i++) {
> > +               if (irqd->enable_hwirq[i] == irqd->cache_hwirq[i])
> > +                       continue;
> > +
> > +               /* Find out the IRQ group */
> > +               top_gp = 0;
> > +               while ((top_gp + 1) < irqd->num_top &&
> > +                      i >= mt6358_ints[top_gp + 1].hwirq_base)
> > +                       top_gp++;
> > +
> > +               /* Find the irq registers */
> 
> From Lee Jones: 'Nit: "IRQ"'
> 
> > +               gp_offset = i - mt6358_ints[top_gp].hwirq_base;
> > +               int_regs = gp_offset / MT6358_REG_WIDTH;
> > +               shift = gp_offset % MT6358_REG_WIDTH;
> > +               en_reg = mt6358_ints[top_gp].en_reg +
> > +                        (mt6358_ints[top_gp].en_reg_shift * int_regs);
> > +
> [...]
> > +static const struct irq_domain_ops mt6358_irq_domain_ops = {
> > +       .map = pmic_irq_domain_map,
> > +       .xlate = irq_domain_xlate_twocell,
> > +};
> > +
> > +int mt6358_irq_init(struct mt6397_chip *chip)
> > +{
> > +       int i, j, ret;
> > +       struct pmic_irq_data *irqd;
> > +
> > +       irqd = devm_kzalloc(chip->dev, sizeof(struct pmic_irq_data *),
> 
> From Lee Jones: 'sizeof(*irqd)'
> 
> > +                           GFP_KERNEL);
> > +       if (!irqd)
> > +               return -ENOMEM;
> > +
> > +       chip->irq_data = irqd;
> > +
> [...]
> > @@ -154,19 +184,33 @@ static int mt6397_probe(struct platform_device *pdev)
> >         if (pmic->irq <= 0)
> >                 return pmic->irq;
> >
> > -       ret = mt6397_irq_init(pmic);
> > -       if (ret)
> > -               return ret;
> > -
> >         switch (pmic->chip_id) {
> >         case MT6323_CHIP_ID:
> > +               ret = mt6397_irq_init(pmic);
> > +               if (ret)
> > +                       return ret;
> > +
> >                 ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
> >                                            mt6323_devs, ARRAY_SIZE(mt6323_devs),
> >                                            NULL, 0, pmic->irq_domain);
> >                 break;
> >
> > +       case MT6358_CHIP_ID:
> > +               ret = mt6358_irq_init(pmic);
> > +               if (ret)
> > +                       return ret;
> > +
> > +               ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
> > +                                          mt6358_devs, ARRAY_SIZE(mt6358_devs),
> > +                                          NULL, 0, pmic->irq_domain);
> > +               break;
> 
> From Lee Jones: "In a subsequent patch you can choose the correct
> mtXXXX_devs structure to pass and call devm_mfd_add_devices() only
> once below the switch()."
> 
> Can you look into that as a follow-up patch?
> 
> 
> > +
> >         case MT6391_CHIP_ID:
> >         case MT6397_CHIP_ID:
> > +               ret = mt6397_irq_init(pmic);
> > +               if (ret)
> > +                       return ret;
> > +
> >                 ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
> >                                            mt6397_devs, ARRAY_SIZE(mt6397_devs),
> >                                            NULL, 0, pmic->irq_domain);
> 
> [snip]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
