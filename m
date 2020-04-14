Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E5D1A7003
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 02:22:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZn1ird40sHwYM0J3/E8wE5XspJDNWJ+oRJdg/nONnk=; b=WwOEwJgDGAMElB
	FQoyGaevChn5pXi16Knl1S5xz2wVfb0+acsbnisonMv/0Tl/JsR70iwxTTW+Dtu5WTg/squuDlysz
	6MROVOmoiX6k9Z0k3/q/w4tLL15LoAs75xdsQQX+78497Xxc+lD34ml6SrfW7YbKhJkGVnLlnE7S7
	5+sfJczXh8oIt3rUK+Pn1TZQlrWi6Jd6PGBzvAxjHWaF+Ct+AHfoow2TQ9LKyA2JDr8/kr+ho+Xn4
	ISBqADnJDqGtWrpDjM95IngssDo/lo6UudlNfzVwpZJaLT7lgSOP8vDlaa4sisbJunnjgKN1y6Tvi
	D9omiDpsncY5mRWQKbzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO9LX-0007bC-9V; Tue, 14 Apr 2020 00:22:35 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO9LQ-0007ah-OY; Tue, 14 Apr 2020 00:22:30 +0000
X-UUID: acd503fe07be4f19b89b302f1f244481-20200413
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Qfibg8F6E8+hj4EjDr9mFBEQ8hTeGgupZlAGc7uyKyo=; 
 b=hZwOjNfDOpGHOH17CILA5QT7wZGQ+d8WinyfoMWuksoJ/kLaa50UKm9ywro+gg2DbKZM7czb2u7RMJ1yX3nLbl+40/zG7Z9qvz4cl0KJS8JcUibAcBgP90pM/2t8ubFPhvyhZhDBLeMjN9ww6M/fI0pTQPTwD9lO8stjP6UVol8=;
X-UUID: acd503fe07be4f19b89b302f1f244481-20200413
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 584687533; Mon, 13 Apr 2020 16:22:23 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 13 Apr 2020 17:22:21 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 14 Apr 2020 08:22:13 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 14 Apr 2020 08:22:13 +0800
Message-ID: <1586823738.16047.7.camel@mtkswgap22>
Subject: Re: [PATCH 2/5] [2/5] mmc: host: Remove redundant host CQE bindings
From: Chun-Hung Wu <chun-hung.wu@mediatek.com>
To: Alan Cooper <alcooperx@gmail.com>
Date: Tue, 14 Apr 2020 08:22:18 +0800
In-Reply-To: <CAOGqxeUjx+OWRhwWznk-uHZ9op7WTZaAGq6xd4Z4QdL+Hja2yA@mail.gmail.com>
References: <1586165281-11888-1-git-send-email-chun-hung.wu@mediatek.com>
 <1586165281-11888-3-git-send-email-chun-hung.wu@mediatek.com>
 <CAOGqxeUjx+OWRhwWznk-uHZ9op7WTZaAGq6xd4Z4QdL+Hja2yA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 77A645C6C1487FDA3CF0BD874F90ED07C2006FF3480317B16A64447FB4E51E462000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_172228_808539_235C273A 
X-CRM114-Status: GOOD (  21.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kate
 Stewart <kstewart@linuxfoundation.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 wsd_upstream@mediatek.com, linux-mmc <linux-mmc@vger.kernel.org>, Linus
 Walleij <linus.walleij@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Florian Fainelli <f.fainelli@gmail.com>, Michal
 Simek <michal.simek@xilinx.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Andy Gross <agross@kernel.org>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>, kernel-team@android.com,
 Pan Bian <bianpan2016@163.com>, DTML <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, mirq-linux@rere.qmqm.pl,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Thomas
 Gleixner <tglx@linutronix.de>, Stanley Chu <stanley.chu@mediatek.com>,
 Allison Randal <allison@lohutok.net>, "moderated list:BROADCOM BCM7XXX ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kuohong Wang <kuohong.wang@mediatek.com>, Adrian
 Hunter <adrian.hunter@intel.com>,
 ": Linux Kernel Mailing List" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-04-06 at 09:59 -0400, Alan Cooper wrote:
> On Mon, Apr 6, 2020 at 5:28 AM Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:
> >
> > CQE bindings "supports-cqe" and "disable-cqe-dcmd" is parsed
> > in mmc_of_parse(). Remove vendor code which parses CQE bindings,
> > and use mmc_host->caps2 to decide support CQE or not.
> >
> > Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> > ---
> >  drivers/mmc/host/sdhci-brcmstb.c   | 11 ++++++-----
> >  drivers/mmc/host/sdhci-msm.c       |  3 +--
> >  drivers/mmc/host/sdhci-of-arasan.c |  3 ---
> >  drivers/mmc/host/sdhci-tegra.c     |  2 +-
> >  4 files changed, 8 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/mmc/host/sdhci-brcmstb.c b/drivers/mmc/host/sdhci-brcmstb.c
> > index ad01f64..07c90c6 100644
> > --- a/drivers/mmc/host/sdhci-brcmstb.c
> > +++ b/drivers/mmc/host/sdhci-brcmstb.c
> > @@ -247,10 +247,6 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
> >                 return res;
> >
> >         memset(&brcmstb_pdata, 0, sizeof(brcmstb_pdata));
> > -       if (device_property_read_bool(&pdev->dev, "supports-cqe")) {
> > -               has_cqe = true;
> > -               match_priv->ops->irq = sdhci_brcmstb_cqhci_irq;
> 
> The above line that sets the irq was moved to later in the function,
> but needs to come before sdhci_pltfm_init()
> 
> Al
After check the code in sdhci_pltfm_init(), I don't see where
match_priv->ops->irq being used in code section.
Only "host->ops = pdata->ops;" is assigned, may I know why should
we put match_priv->ops->irq = sdhci_brcmstb_cqhci_irq; before
sdhci_pltfm_init()?
By the way, host only added to kernel after sdhci_brcmstb_add_host(),
So, I suppose isr assignment is ok before anywhere of it. 
> 
> > -       }
> >         brcmstb_pdata.ops = match_priv->ops;
> >         host = sdhci_pltfm_init(pdev, &brcmstb_pdata,
> >                                 sizeof(struct sdhci_brcmstb_priv));
> > @@ -261,7 +257,6 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
> >
> >         pltfm_host = sdhci_priv(host);
> >         priv = sdhci_pltfm_priv(pltfm_host);
> > -       priv->has_cqe = has_cqe;
> >
> >         /* Map in the non-standard CFG registers */
> >         iomem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> > @@ -276,6 +271,12 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
> >         if (res)
> >                 goto err;
> >
> > +       if (host->mmc->caps2 & MMC_CAP2_CQE) {
> > +               has_cqe = true;
> > +               match_priv->ops->irq = sdhci_brcmstb_cqhci_irq;
> > +       }
> > +       priv->has_cqe = has_cqe;
> > +
> >         /*
> >          * If the chip has enhanced strobe and it's enabled, add
> >          * callback
> > diff --git a/drivers/mmc/host/sdhci-msm.c b/drivers/mmc/host/sdhci-msm.c
> > index c3a160c..fbb2f57 100644
> > --- a/drivers/mmc/host/sdhci-msm.c
> > +++ b/drivers/mmc/host/sdhci-msm.c
> > @@ -1880,7 +1880,6 @@ static int sdhci_msm_probe(struct platform_device *pdev)
> >         u8 core_major;
> >         const struct sdhci_msm_offset *msm_offset;
> >         const struct sdhci_msm_variant_info *var_info;
> > -       struct device_node *node = pdev->dev.of_node;
> >
> >         host = sdhci_pltfm_init(pdev, &sdhci_msm_pdata, sizeof(*msm_host));
> >         if (IS_ERR(host))
> > @@ -2076,7 +2075,7 @@ static int sdhci_msm_probe(struct platform_device *pdev)
> >         pm_runtime_use_autosuspend(&pdev->dev);
> >
> >         host->mmc_host_ops.execute_tuning = sdhci_msm_execute_tuning;
> > -       if (of_property_read_bool(node, "supports-cqe"))
> > +       if (host->mmc->caps2 & MMC_CAP2_CQE)
> >                 ret = sdhci_msm_cqe_add_host(host, pdev);
> >         else
> >                 ret = sdhci_add_host(host);
> > diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> > index e49b44b..359eff6 100644
> > --- a/drivers/mmc/host/sdhci-of-arasan.c
> > +++ b/drivers/mmc/host/sdhci-of-arasan.c
> > @@ -1281,9 +1281,6 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
> >                                         sdhci_arasan_voltage_switch;
> >                 sdhci_arasan->has_cqe = true;
> >                 host->mmc->caps2 |= MMC_CAP2_CQE;
> > -
> > -               if (!of_property_read_bool(np, "disable-cqe-dcmd"))
> > -                       host->mmc->caps2 |= MMC_CAP2_CQE_DCMD;
> >         }
> >
> >         ret = sdhci_arasan_add_host(sdhci_arasan);
> > diff --git a/drivers/mmc/host/sdhci-tegra.c b/drivers/mmc/host/sdhci-tegra.c
> > index 403ac44..d09abdd 100644
> > --- a/drivers/mmc/host/sdhci-tegra.c
> > +++ b/drivers/mmc/host/sdhci-tegra.c
> > @@ -715,7 +715,7 @@ static void tegra_sdhci_parse_dt(struct sdhci_host *host)
> >         struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> >         struct sdhci_tegra *tegra_host = sdhci_pltfm_priv(pltfm_host);
> >
> > -       if (device_property_read_bool(host->mmc->parent, "supports-cqe"))
> > +       if (host->mmc->caps2 & MMC_CAP2_CQE)
> >                 tegra_host->enable_hwcq = true;
> >         else
> >                 tegra_host->enable_hwcq = false;
> > --
> > 1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
