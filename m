Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AA410D460
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 11:49:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOv0plJ3VnVhbypDLtAtoY7i6JDg5whyMujy/DQ+0j0=; b=CoaH+V21SnzFmI
	xPHrAZMCPNpGiOLb/QoJ99irI3BnmIiORwI6MioFGEI9TMSGPtu7nc1IENaAJ/GWdqz8CpEDVJkfw
	ge4sIpYHhLO9/O0ESeShL7MFDppEJfa9ga+crfMSCDQMo1/TPximrMLCurkzFzBUJqARMfHv4gfxo
	EiinIg+eCCqqgzKdRVwmPlfXESMB5UvuVMF+r/8+Qq8UlcMqJPJnEweKpU9UGHiXRtsMzkJP5bIVa
	ydqx0WrsuxNB+RzlGMluPdxjuMp55i65is3l50G99ieo5umgMdKC4sqYbiLSX9q61ijqJr1S3dA8i
	uU2JlbCuM1f7HK5k7wvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iadqP-0004kn-9R; Fri, 29 Nov 2019 10:49:49 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iadqD-0004kE-4w; Fri, 29 Nov 2019 10:49:38 +0000
X-UUID: d124cd6cfc2e4b10bd4d7473424200cd-20191129
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=6cf6mmfNAO4UYSLfUL+2gAahPm940KNzW92/hNa0blE=; 
 b=S9fljcImchsBWS8XTYWwDM0oFmmOPEXhkL6FxMhwnRJsuAPjTQAXxIP1JEAWBTOAIQajifG+8yNUCeTlJIKr0KlPuJfQDh2A7KOu0zAhfjpIfQ9P8L8+FakE5H/EQZgLxV/OIF3e9X2nKvBFmR+TELH20WoYPq9Y13sXdIGxamo=;
X-UUID: d124cd6cfc2e4b10bd4d7473424200cd-20191129
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2076448025; Fri, 29 Nov 2019 02:49:20 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 29 Nov 2019 02:40:04 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 29 Nov 2019 18:39:24 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 29 Nov 2019 18:39:36 +0800
Message-ID: <1575023965.7013.11.camel@mhfsdcap03>
Subject: Re: [PATCH v5 2/2] watchdog: mtk_wdt: mt8183: Add reset controller
From: Yong Liang <yong.liang@mediatek.com>
To: Guenter Roeck <linux@roeck-us.net>
Date: Fri, 29 Nov 2019 18:39:25 +0800
In-Reply-To: <20191125061627.GA7313@roeck-us.net>
References: <20191125061627.GA7313@roeck-us.net>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 5BAB322DC3378F90D8037FD05A9217D7F4FF5E31E670244183F6515D6B79EC0D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_024937_207229_A1AAE3EC 
X-CRM114-Status: GOOD (  24.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "perex@perex.cz" <perex@perex.cz>,
 "tzungbi@google.com" <tzungbi@google.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Jiaxin Yu =?UTF-8?Q?=28=E4=BF=9E=E5=AE=B6=E9=91=AB=29?=
 <Jiaxin.Yu@mediatek.com>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 Eason Yen =?UTF-8?Q?=28=E9=A1=8F=E5=BB=B7=E4=BB=BB=29?=
 <Eason.Yen@mediatek.com>,
 Yingjoe Chen =?UTF-8?Q?=28=E9=99=B3=E8=8B=B1=E6=B4=B2=29?=
 <Yingjoe.Chen@mediatek.com>, "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-11-25 at 14:16 +0800, Guenter Roeck wrote:
> On Mon, Nov 25, 2019 at 11:03:50AM +0800, Jiaxin Yu wrote:
> > From: "yong.liang" <yong.liang@mediatek.com>
> > 
> > Add reset controller API in watchdog driver.
> > Besides watchdog, MTK toprgu module also provide sub-system (eg, audio,
> > camera, codec and connectivity) software reset functionality.
> > 
> > Signed-off-by: yong.liang <yong.liang@mediatek.com>
> > Signed-off-by: jiaxin.yu <jiaxin.yu@mediatek.com>
> > Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> > ---
> >  drivers/watchdog/Kconfig   |   1 +
> >  drivers/watchdog/mtk_wdt.c | 111 ++++++++++++++++++++++++++++++++++++-
> >  2 files changed, 111 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> > index 2e07caab9db2..629249fe5305 100644
> > --- a/drivers/watchdog/Kconfig
> > +++ b/drivers/watchdog/Kconfig
> > @@ -717,6 +717,7 @@ config MEDIATEK_WATCHDOG
> >  	tristate "Mediatek SoCs watchdog support"
> >  	depends on ARCH_MEDIATEK || COMPILE_TEST
> >  	select WATCHDOG_CORE
> > +	select RESET_CONTROLLER
> >  	help
> >  	  Say Y here to include support for the watchdog timer
> >  	  in Mediatek SoCs.
> > diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
> > index 9c3d0033260d..d29484c7940a 100644
> > --- a/drivers/watchdog/mtk_wdt.c
> > +++ b/drivers/watchdog/mtk_wdt.c
> > @@ -9,6 +9,9 @@
> >   * Based on sunxi_wdt.c
> >   */
> >  
> > +#include <dt-bindings/reset-controller/mt2712-resets.h>
> > +#include <dt-bindings/reset-controller/mt8183-resets.h>
> > +#include <linux/delay.h>
> >  #include <linux/err.h>
> >  #include <linux/init.h>
> >  #include <linux/io.h>
> > @@ -16,10 +19,12 @@
> >  #include <linux/module.h>
> >  #include <linux/moduleparam.h>
> >  #include <linux/of.h>
> > +#include <linux/of_device.h>
> >  #include <linux/platform_device.h>
> > +#include <linux/reset-controller.h>
> > +#include <linux/slab.h>
> >  #include <linux/types.h>
> >  #include <linux/watchdog.h>
> > -#include <linux/delay.h>
> >  
> >  #define WDT_MAX_TIMEOUT		31
> >  #define WDT_MIN_TIMEOUT		1
> > @@ -44,6 +49,9 @@
> >  #define WDT_SWRST		0x14
> >  #define WDT_SWRST_KEY		0x1209
> >  
> > +#define WDT_SWSYSRST		0x18U
> > +#define WDT_SWSYS_RST_KEY	0x88000000
> > +
> >  #define DRV_NAME		"mtk-wdt"
> >  #define DRV_VERSION		"1.0"
> >  
> > @@ -53,8 +61,99 @@ static unsigned int timeout;
> >  struct mtk_wdt_dev {
> >  	struct watchdog_device wdt_dev;
> >  	void __iomem *wdt_base;
> > +	spinlock_t lock; /* protects WDT_SWSYSRST reg */
> > +	struct reset_controller_dev rcdev;
> > +};
> > +
> > +struct mtk_wdt_data {
> > +	int sw_rst_num;
> >  };
> >  
> > +static const struct mtk_wdt_data mt2712_data = {
> > +	.sw_rst_num = MT2712_TOPRGU_SW_RST_NUM,
> > +};
> > +
> > +static const struct mtk_wdt_data mt8183_data = {
> > +	.sw_rst_num = MT8183_TOPRGU_SW_RST_NUM,
> > +};
> 
> The number of resets can be set in .data directly; there is no need
> for the structures.
> 
> > +
> > +static int toprgu_reset_assert(struct reset_controller_dev *rcdev,
> > +			       unsigned long id)
> > +{
> > +	unsigned int tmp;
> > +	unsigned long flags;
> > +	struct mtk_wdt_dev *data =
> > +		 container_of(rcdev, struct mtk_wdt_dev, rcdev);
> > +
> > +	spin_lock_irqsave(&data->lock, flags);
> > +
> > +	tmp = __raw_readl(data->wdt_base + WDT_SWSYSRST);
> > +	tmp |= BIT(id);
> > +	tmp |= WDT_SWSYS_RST_KEY;
> > +	writel(tmp, data->wdt_base + WDT_SWSYSRST);
> > +
> > +	spin_unlock_irqrestore(&data->lock, flags);
> > +
> > +	return 0;
> > +}
> > +
> > +static int toprgu_reset_deassert(struct reset_controller_dev *rcdev,
> > +				 unsigned long id)
> > +{
> > +	unsigned int tmp;
> > +	unsigned long flags;
> > +	struct mtk_wdt_dev *data =
> > +		 container_of(rcdev, struct mtk_wdt_dev, rcdev);
> > +
> > +	spin_lock_irqsave(&data->lock, flags);
> > +
> > +	tmp = __raw_readl(data->wdt_base + WDT_SWSYSRST);
> > +	tmp &= ~BIT(id);
> > +	tmp |= WDT_SWSYS_RST_KEY;
> > +	writel(tmp, data->wdt_base + WDT_SWSYSRST);
> > +
> > +	spin_unlock_irqrestore(&data->lock, flags);
> > +
> > +	return 0;
> > +}
> 
> There is a lot of duplication in those functions. Only one line
> is different. I think this is a good example where a helper function
> with an additional argument indicating set or reset would be helpful.
> 
> > +
> > +static int toprgu_reset(struct reset_controller_dev *rcdev,
> > +			unsigned long id)
> > +{
> > +	int ret;
> > +
> > +	ret = toprgu_reset_assert(rcdev, id);
> > +	if (ret)
> > +		return ret;
> > +
> > +	return toprgu_reset_deassert(rcdev, id);
> > +}
> > +
> > +static const struct reset_control_ops toprgu_reset_ops = {
> > +	.assert = toprgu_reset_assert,
> > +	.deassert = toprgu_reset_deassert,
> > +	.reset = toprgu_reset,
> > +};
> > +
> > +static int toprgu_register_reset_controller(struct platform_device *pdev,
> > +					    int rst_num)
> > +{
> > +	int ret;
> > +	struct mtk_wdt_dev *mtk_wdt = platform_get_drvdata(pdev);
> > +
> > +	spin_lock_init(&mtk_wdt->lock);
> > +
> > +	mtk_wdt->rcdev.owner = THIS_MODULE;
> > +	mtk_wdt->rcdev.nr_resets = rst_num;
> > +	mtk_wdt->rcdev.ops = &toprgu_reset_ops;
> > +	mtk_wdt->rcdev.of_node = pdev->dev.of_node;
> > +	ret = reset_controller_register(&mtk_wdt->rcdev);
> > +	if (ret != 0)
> > +		dev_err(&pdev->dev,
> > +			"couldn't register wdt reset controller: %d\n", ret);
> > +	return ret;
> > +}
> > +
> >  static int mtk_wdt_restart(struct watchdog_device *wdt_dev,
> >  			   unsigned long action, void *data)
> >  {
> > @@ -155,6 +254,7 @@ static int mtk_wdt_probe(struct platform_device *pdev)
> >  {
> >  	struct device *dev = &pdev->dev;
> >  	struct mtk_wdt_dev *mtk_wdt;
> > +	struct mtk_wdt_data *wdt_data;
> >  	int err;
> >  
> >  	mtk_wdt = devm_kzalloc(dev, sizeof(*mtk_wdt), GFP_KERNEL);
> > @@ -190,6 +290,13 @@ static int mtk_wdt_probe(struct platform_device *pdev)
> >  	dev_info(dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)\n",
> >  		 mtk_wdt->wdt_dev.timeout, nowayout);
> >  
> > +	wdt_data = (struct mtk_wdt_data *)of_device_get_match_data(dev);
> > +	if (wdt_data) {
> > +		err = toprgu_register_reset_controller(pdev,
> > +						       wdt_data->sw_rst_num);
> > +		if (err)
> > +			return err;
> 
> If this happens, the user will wonder why there was a message "Watchdog
> enabled", but there is no watchdog. It would be better to call this
> function before the dev_info() above.
> 
> Guenter

  It will return err just if .compatible has no .data value, just like
"mediatek,mt6589-wdt". Bus watchdog is still enable.
> 
> > +	}
> >  	return 0;
> >  }
> >  
> > @@ -218,7 +325,9 @@ static int mtk_wdt_resume(struct device *dev)
> >  #endif
> >  
> >  static const struct of_device_id mtk_wdt_dt_ids[] = {
> > +	{ .compatible = "mediatek,mt2712-wdt", .data = &mt2712_data },
> >  	{ .compatible = "mediatek,mt6589-wdt" },
> > +	{ .compatible = "mediatek,mt8183-wdt", .data = &mt8183_data },
> >  	{ /* sentinel */ }
> >  };
> >  MODULE_DEVICE_TABLE(of, mtk_wdt_dt_ids);
> > -- 
> > 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
