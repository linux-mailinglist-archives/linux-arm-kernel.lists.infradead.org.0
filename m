Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A8F114DD6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 09:58:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5RsGXeRLZbKa163/+XSFEDAwlHxX+AztDYUe5mtXdA=; b=toPfbIp0u3ybxD
	c86YzgyPoVOtXjAosCTI6yP05/2pp/B6cfYsnFoUbCbYxi5E9jgQRYEATZtxtJZld86mA7LbQR6px
	AhlxoCIOP0YvJEMzOdxXd8nrb3L7IA4N5A8w07evtyQlCidZQyeFv492dsjEIbnpB1okpvKpc7m3b
	W2dz3grvfVvuK8THAk7w3ZgUZjgUGADnXpbv8asic/T3i7F44Hr9pYwUMbCKg7RYAAacPu3QYPy1w
	AH0BPXuO+z+7tIZvMnXedZ2FmywH40J1NBBGIGLucJ3KDsB8NSM4WQujWU5gOAwEAu56teTLkCeJ8
	YWl8SBgSNRRSICswBeCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id9Rn-0005OO-Nv; Fri, 06 Dec 2019 08:58:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id9RP-0005Bp-1O; Fri, 06 Dec 2019 08:58:25 +0000
X-UUID: 08e9d032d0a04fbc91c034a7fae60728-20191206
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=SOTafVilRh+dUaxelZIZmn7E79UtcnT9UfoFCTjh+RQ=; 
 b=K49lk4AncgphGZ+vXs9sLKBFCE7JTWrABNNUiyWpHMM5ozAWfStKYylvDdbuGD/yrR+LNAh5vqERTCrO5NBNUX9HcKPjBNUbZQ9avkAmqonlF2lJfdFTrdAA+uBU2n+2z+nSvDokxHJTrQ5KutrQAQa1kwbbKk2WH7en7r7AFcg=;
X-UUID: 08e9d032d0a04fbc91c034a7fae60728-20191206
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1075378014; Fri, 06 Dec 2019 00:58:17 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Dec 2019 00:56:49 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Dec 2019 16:55:41 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 6 Dec 2019 16:55:56 +0800
Message-ID: <1575622558.17300.5.camel@mtksdaap41>
Subject: Re: [PATCH v5 06/10] mfd: Add support for the MediaTek MT6358 PMIC
From: Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Pi-Hsun Shih <pihsun@chromium.org>
Date: Fri, 6 Dec 2019 16:55:58 +0800
In-Reply-To: <CANdKZ0eUDhhQPBBiOWZ0u03SFoFQM6b=ED9AGe+JtBSr_zeJKQ@mail.gmail.com>
References: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1566531931-9772-7-git-send-email-hsin-hsiung.wang@mediatek.com>
 <CANdKZ0eUDhhQPBBiOWZ0u03SFoFQM6b=ED9AGe+JtBSr_zeJKQ@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 537BB6683E4ECF705D4E44CF13D6ED29EF455E78C6A942E910245C10E9CACEEF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_005823_126098_0F8B135C 
X-CRM114-Status: GOOD (  25.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS" <devicetree@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mark
 Brown <broonie@kernel.org>, Sean Wang <sean.wang@mediatek.com>, Liam
 Girdwood <lgirdwood@gmail.com>, open list <linux-kernel@vger.kernel.org>,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>, "moderated list:ARM/Mediatek SoC
 support" <linux-arm-kernel@lists.infradead.org>,
 "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, 2019-12-02 at 16:06 +0800, Pi-Hsun Shih wrote:
> Hi,
> 
> On Fri, Aug 23, 2019 at 11:46 AM Hsin-Hsiung Wang
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
> > ---
> >  drivers/mfd/Makefile                 |   3 +-
> >  drivers/mfd/mt6358-irq.c             | 231 ++++++++++++++++++++++++++++
> >  drivers/mfd/mt6397-core.c            |  52 ++++++-
> >  include/linux/mfd/mt6358/core.h      | 158 ++++++++++++++++++++
> >  include/linux/mfd/mt6358/registers.h | 282 +++++++++++++++++++++++++++++++++++
> >  include/linux/mfd/mt6397/core.h      |   3 +
> >  6 files changed, 727 insertions(+), 2 deletions(-)
> >  create mode 100644 drivers/mfd/mt6358-irq.c
> >  create mode 100644 include/linux/mfd/mt6358/core.h
> >  create mode 100644 include/linux/mfd/mt6358/registers.h
> > (...)
> > diff --git a/drivers/mfd/mt6358-irq.c b/drivers/mfd/mt6358-irq.c
> > new file mode 100644
> > index 0000000..760b72f
> > --- /dev/null
> > +++ b/drivers/mfd/mt6358-irq.c
> > @@ -0,0 +1,231 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +//
> > +// Copyright (c) 2019 MediaTek Inc.
...
> > +static void pmic_irq_sync_unlock(struct irq_data *data)
> > +{
> > +       unsigned int i, top_gp, en_reg, int_regs, shift;
> > +       struct mt6397_chip *chip = irq_data_get_irq_chip_data(data);
> > +       struct pmic_irq_data *irqd = chip->irq_data;
> > +
> > +       for (i = 0; i < irqd->num_pmic_irqs; i++) {
> > +               if (irqd->enable_hwirq[i] == irqd->cache_hwirq[i])
> > +                       continue;
> > +
> > +               /* Find out the irq group */
> > +               top_gp = 0;
> > +               while ((top_gp + 1) < ARRAY_SIZE(mt6358_ints) &&
> > +                      i >= mt6358_ints[top_gp + 1].hwirq_base)
> > +                       top_gp++;
> > +
> > +               if (top_gp >= ARRAY_SIZE(mt6358_ints)) {
> 
> Would this condition ever be true? The while loop before this always
> break when top_gp == ARRAY_SIZE(mt6358_ints) - 1.
> 

Thanks for reviewing. I will remove this part in next patch.

> > +                       mutex_unlock(&chip->irqlock);
> > +                       dev_err(chip->dev,
> > +                               "Failed to get top_group: %d\n", top_gp);
> > +                       return;
> > +               }
> > +
> > +               /* Find the irq registers */
> > +               int_regs = (i - mt6358_ints[top_gp].hwirq_base) /
> > +                           MT6358_REG_WIDTH;
> > +               en_reg = mt6358_ints[top_gp].en_reg +
> > +                       mt6358_ints[top_gp].en_reg_shift * int_regs;
> > +               shift = (i - mt6358_ints[top_gp].hwirq_base) % MT6358_REG_WIDTH;
> > +               regmap_update_bits(chip->regmap, en_reg, BIT(shift),
> > +                                  irqd->enable_hwirq[i] << shift);
> > +               irqd->cache_hwirq[i] = irqd->enable_hwirq[i];
> > +       }
> > +       mutex_unlock(&chip->irqlock);
> > +}
> > +
> > +static struct irq_chip mt6358_irq_chip = {
> > +       .name = "mt6358-irq",
> > +       .flags = IRQCHIP_SKIP_SET_WAKE,
> > +       .irq_enable = pmic_irq_enable,
> > +       .irq_disable = pmic_irq_disable,
> > +       .irq_bus_lock = pmic_irq_lock,
> > +       .irq_bus_sync_unlock = pmic_irq_sync_unlock,
> > +};
> > +
> > +static void mt6358_irq_sp_handler(struct mt6397_chip *chip,
> > +                                 unsigned int top_gp)
> > +{
> > +       unsigned int sta_reg, irq_status;
> > +       unsigned int hwirq, virq;
> > +       int ret, i, j;
> > +
> > +       for (i = 0; i < mt6358_ints[top_gp].num_int_regs; i++) {
> > +               sta_reg = mt6358_ints[top_gp].sta_reg +
> > +                       mt6358_ints[top_gp].sta_reg_shift * i;
> > +               ret = regmap_read(chip->regmap, sta_reg, &irq_status);
> > +               if (ret) {
> > +                       dev_err(chip->dev,
> > +                               "Failed to read irq status: %d\n", ret);
> > +                       return;
> > +               }
> > +
> > +               if (!irq_status)
> > +                       continue;
> > +
> > +               for (j = 0; j < MT6358_REG_WIDTH ; j++) {
> > +                       if ((irq_status & BIT(j)) == 0)
> > +                               continue;
> > +                       hwirq = mt6358_ints[top_gp].hwirq_base +
> > +                               MT6358_REG_WIDTH * i + j;
> > +                       virq = irq_find_mapping(chip->irq_domain, hwirq);
> > +                       if (virq)
> > +                               handle_nested_irq(virq);
> > +               }
> > +
> > +               regmap_write(chip->regmap, sta_reg, irq_status);
> > +       }
> > +}
> > +
> > +static irqreturn_t mt6358_irq_handler(int irq, void *data)
> > +{
> > +       struct mt6397_chip *chip = data;
> > +       struct pmic_irq_data *mt6358_irq_data = chip->irq_data;
> > +       unsigned int top_irq_status;
> > +       unsigned int i;
> > +       int ret;
> > +
> > +       ret = regmap_read(chip->regmap,
> > +                         mt6358_irq_data->top_int_status_reg,
> > +                         &top_irq_status);
> > +       if (ret) {
> > +               dev_err(chip->dev, "Can't read TOP_INT_STATUS ret=%d\n", ret);
> > +               return IRQ_NONE;
> > +       }
> > +
> > +       for (i = 0; i < mt6358_irq_data->num_top; i++) {
> > +               if (top_irq_status & BIT(mt6358_ints[i].top_offset))
> > +                       mt6358_irq_sp_handler(chip, i);
> > +       }
> > +
> > +       return IRQ_HANDLED;
> > +}
> > +
> > +static int pmic_irq_domain_map(struct irq_domain *d, unsigned int irq,
> > +                              irq_hw_number_t hw)
> > +{
> > +       struct mt6397_chip *mt6397 = d->host_data;
> > +
> > +       irq_set_chip_data(irq, mt6397);
> > +       irq_set_chip_and_handler(irq, &mt6358_irq_chip, handle_level_irq);
> > +       irq_set_nested_thread(irq, 1);
> > +       irq_set_noprobe(irq);
> > +
> > +       return 0;
> > +}
> > +
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
> > +                           GFP_KERNEL);
> > +       if (!irqd)
> > +               return -ENOMEM;
> > +
> > +       chip->irq_data = irqd;
> > +
> > +       mutex_init(&chip->irqlock);
> > +       irqd->top_int_status_reg = MT6358_TOP_INT_STATUS0;
> > +       irqd->num_pmic_irqs = MT6358_IRQ_NR;
> > +       irqd->num_top = ARRAY_SIZE(mt6358_ints);
> 
> ARRAY_SIZE(mt6358_ints) is still used in pmic_irq_sync_unlock. Is this
> variable needed, or should the ARRAY_SIZE(mt6358_ints) in
> pmic_irq_sync_unlock be changed to irqd->num_top too?
> 

I will update to irqd->num_top from ARRAY_SIZE(mt6358_ints) in
pmic_irq_sync_unlock.

> > +
> > +       irqd->enable_hwirq = devm_kcalloc(chip->dev,
> > +                                         irqd->num_pmic_irqs,
> > +                                         sizeof(bool),
> > +                                         GFP_KERNEL);
> > +       if (!irqd->enable_hwirq)
> > +               return -ENOMEM;
> > +
> > +       irqd->cache_hwirq = devm_kcalloc(chip->dev,
> > +                                        irqd->num_pmic_irqs,
> > +                                        sizeof(bool),
> > +                                        GFP_KERNEL);
> > +       if (!irqd->cache_hwirq)
> > +               return -ENOMEM;
> > +
> > +       /* Disable all interrupts for initializing */
> > +       for (i = 0; i < irqd->num_top; i++) {
> > +               for (j = 0; j < mt6358_ints[i].num_int_regs; j++)
> > +                       regmap_write(chip->regmap,
> > +                                    mt6358_ints[i].en_reg +
> > +                                    mt6358_ints[i].en_reg_shift * j, 0);
> > +       }
> > +
> > +       chip->irq_domain = irq_domain_add_linear(chip->dev->of_node,
> > +                                                irqd->num_pmic_irqs,
> > +                                                &mt6358_irq_domain_ops, chip);
> > +       if (!chip->irq_domain) {
> > +               dev_err(chip->dev, "could not create IRQ domain\n");
> > +               return -ENODEV;
> > +       }
> > +
> > +       ret = devm_request_threaded_irq(chip->dev, chip->irq, NULL,
> > +                                       mt6358_irq_handler, IRQF_ONESHOT,
> > +                                       mt6358_irq_chip.name, chip);
> > +       if (ret) {
> > +               dev_err(chip->dev, "failed to register irq=%d; err: %d\n",
> > +                       chip->irq, ret);
> > +               return ret;
> > +       }
> > +
> > +       enable_irq_wake(chip->irq);
> > +       return ret;
> > +}
> > (...)
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
