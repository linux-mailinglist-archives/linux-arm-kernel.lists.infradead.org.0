Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6636141B9D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 04:23:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8FAKoFadHWE8a7gIbKQBYBMX/nVEFRvNDQpOaeyREY=; b=qdqyYi3PMSLrII
	VMlkusJZBbE2adWiA054zDWlpyurgAYHLYOHqXEoQ5OE5m9kRehUO5F/Pfhy8xvr+jH4i1pCRf3zk
	n81jwUe6pR07wxAq7GsxOyPWVU6Qk2Pgq1XDj4/9XI+B9Mive+OZk0CtCZV9w+GwtbtACDRh3AVXy
	apie+ju07X2kxwJxDOU8nlK2wz7nQ/zXoTkwCbimn6+8rQbvZwMvx0/45nQr/48M1BhaNiPlPHAzu
	L2xOGrVWdWDvwzYITXqp7gIAfAhSxm2+mGCGAz+8nQzmwn2RogglcFeeHzD2rpsI3IvlRClKbonXf
	LeumM0MfrP4tJAsidUzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it1B1-0004gv-7C; Sun, 19 Jan 2020 03:23:03 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it1Aq-0004g4-JZ; Sun, 19 Jan 2020 03:22:54 +0000
X-UUID: bf63addfa73c4055a8e4b1a8c7842851-20200118
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=hm6lnO5QlH7ot9sHtfmnJSN7OgWXnD6EkGNxaWdllRs=; 
 b=FkHOHZ/EcjJX2+j4NzjxK2Lt9lkpdVjYoA2xmw3wdB2Uy54cRQgc/bL0BVOLaejNmhPccquQVxnvplIUbRqo0KAdowGUnuBwYfw/YBLlbARvdlGapiJ2rjNUAX+fpHS/aJFeKYHmQBGwrgsQF6xbpWd3tkCHfBq80LU83QavIyQ=;
X-UUID: bf63addfa73c4055a8e4b1a8c7842851-20200118
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 380654927; Sat, 18 Jan 2020 19:22:48 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 18 Jan 2020 19:23:46 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sun, 19 Jan 2020 11:21:28 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 19 Jan 2020 11:22:51 +0800
Message-ID: <1579404156.27500.1.camel@mhfsdcap03>
Subject: Re: [PATCH v12 3/4] watchdog: mtk_wdt: mt8183: Add reset controller
From: Yong Liang <yong.liang@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Sun, 19 Jan 2020 11:22:36 +0800
In-Reply-To: <372a4c8e-2ff1-3424-069c-7d359e1f16f1@gmail.com>
References: <20200115085828.27791-1-yong.liang@mediatek.com>
 <20200115085828.27791-4-yong.liang@mediatek.com>
 <372a4c8e-2ff1-3424-069c-7d359e1f16f1@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9A9910F4F12A5AE0331104063D22AC4683A93A64C642237FABC1506255239E8F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_192252_645012_75929B45 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Freddy Hsin =?UTF-8?Q?=28=E8=BE=9B=E6=81=92=E8=B1=90=29?=
 <Freddy.Hsin@mediatek.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jiaxin Yu =?UTF-8?Q?=28=E4=BF=9E=E5=AE=B6=E9=91=AB=29?=
 <Jiaxin.Yu@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 Yingjoe Chen =?UTF-8?Q?=28=E9=99=B3=E8=8B=B1=E6=B4=B2=29?=
 <Yingjoe.Chen@mediatek.com>,
 Chang-An Chen =?UTF-8?Q?=28=E9=99=B3=E6=98=B6=E5=AE=89=29?=
 <Chang-An.Chen@mediatek.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-01-16 at 00:18 +0800, Matthias Brugger wrote:
> 
> On 15/01/2020 09:58, Yong Liang wrote:
> > From: "yong.liang" <yong.liang@mediatek.com>
> > 
> > Add reset controller API in watchdog driver.
> > Besides watchdog, MTK toprgu module alsa provide sub-system (eg, audio,
> > camera, codec and connectivity) software reset functionality.
> > 
> > Signed-off-by: yong.liang <yong.liang@mediatek.com>
> > Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> > Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> > Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> 
> Acked-by: Matthias Brugger <matthias.bgg@gmail.com>

  May I need send a new patch whith this tag?
> 
> > ---
> >  drivers/watchdog/mtk_wdt.c | 99 +++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 98 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
> > index 9c3d0033260d..e88aacb0404d 100644
> > --- a/drivers/watchdog/mtk_wdt.c
> > +++ b/drivers/watchdog/mtk_wdt.c
> > @@ -9,6 +9,8 @@
> >   * Based on sunxi_wdt.c
> >   */
> >  
> > +#include <dt-bindings/reset-controller/mt8183-resets.h>
> > +#include <linux/delay.h>
> >  #include <linux/err.h>
> >  #include <linux/init.h>
> >  #include <linux/io.h>
> > @@ -16,10 +18,11 @@
> >  #include <linux/module.h>
> >  #include <linux/moduleparam.h>
> >  #include <linux/of.h>
> > +#include <linux/of_device.h>
> >  #include <linux/platform_device.h>
> > +#include <linux/reset-controller.h>
> >  #include <linux/types.h>
> >  #include <linux/watchdog.h>
> > -#include <linux/delay.h>
> >  
> >  #define WDT_MAX_TIMEOUT		31
> >  #define WDT_MIN_TIMEOUT		1
> > @@ -44,6 +47,9 @@
> >  #define WDT_SWRST		0x14
> >  #define WDT_SWRST_KEY		0x1209
> >  
> > +#define WDT_SWSYSRST		0x18U
> > +#define WDT_SWSYS_RST_KEY	0x88000000
> > +
> >  #define DRV_NAME		"mtk-wdt"
> >  #define DRV_VERSION		"1.0"
> >  
> > @@ -53,8 +59,90 @@ static unsigned int timeout;
> >  struct mtk_wdt_dev {
> >  	struct watchdog_device wdt_dev;
> >  	void __iomem *wdt_base;
> > +	spinlock_t lock; /* protects WDT_SWSYSRST reg */
> > +	struct reset_controller_dev rcdev;
> > +};
> > +
> > +struct mtk_wdt_data {
> > +	int toprgu_sw_rst_num;
> >  };
> >  
> > +static const struct mtk_wdt_data mt8183_data = {
> > +	.toprgu_sw_rst_num = MT8183_TOPRGU_SW_RST_NUM,
> > +};
> > +
> > +static int toprgu_reset_update(struct reset_controller_dev *rcdev,
> > +			       unsigned long id, bool assert)
> > +{
> > +	unsigned int tmp;
> > +	unsigned long flags;
> > +	struct mtk_wdt_dev *data =
> > +		 container_of(rcdev, struct mtk_wdt_dev, rcdev);
> > +
> > +	spin_lock_irqsave(&data->lock, flags);
> > +
> > +	tmp = readl(data->wdt_base + WDT_SWSYSRST);
> > +	if (assert)
> > +		tmp |= BIT(id);
> > +	else
> > +		tmp &= ~BIT(id);
> > +	tmp |= WDT_SWSYS_RST_KEY;
> > +	writel(tmp, data->wdt_base + WDT_SWSYSRST);
> > +
> > +	spin_unlock_irqrestore(&data->lock, flags);
> > +
> > +	return 0;
> > +}
> > +
> > +static int toprgu_reset_assert(struct reset_controller_dev *rcdev,
> > +			       unsigned long id)
> > +{
> > +	return toprgu_reset_update(rcdev, id, true);
> > +}
> > +
> > +static int toprgu_reset_deassert(struct reset_controller_dev *rcdev,
> > +				 unsigned long id)
> > +{
> > +	return toprgu_reset_update(rcdev, id, false);
> > +}
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
> > +	ret = devm_reset_controller_register(&pdev->dev, &mtk_wdt->rcdev);
> > +	if (ret != 0)
> > +		dev_err(&pdev->dev,
> > +			"couldn't register wdt reset controller: %d\n", ret);
> > +	return ret;
> > +}
> > +
> >  static int mtk_wdt_restart(struct watchdog_device *wdt_dev,
> >  			   unsigned long action, void *data)
> >  {
> > @@ -155,6 +243,7 @@ static int mtk_wdt_probe(struct platform_device *pdev)
> >  {
> >  	struct device *dev = &pdev->dev;
> >  	struct mtk_wdt_dev *mtk_wdt;
> > +	const struct mtk_wdt_data *wdt_data;
> >  	int err;
> >  
> >  	mtk_wdt = devm_kzalloc(dev, sizeof(*mtk_wdt), GFP_KERNEL);
> > @@ -190,6 +279,13 @@ static int mtk_wdt_probe(struct platform_device *pdev)
> >  	dev_info(dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)\n",
> >  		 mtk_wdt->wdt_dev.timeout, nowayout);
> >  
> > +	wdt_data = of_device_get_match_data(dev);
> > +	if (wdt_data) {
> > +		err = toprgu_register_reset_controller(pdev,
> > +						       wdt_data->toprgu_sw_rst_num);
> > +		if (err)
> > +			return err;
> > +	}
> >  	return 0;
> >  }
> >  
> > @@ -219,6 +315,7 @@ static int mtk_wdt_resume(struct device *dev)
> >  
> >  static const struct of_device_id mtk_wdt_dt_ids[] = {
> >  	{ .compatible = "mediatek,mt6589-wdt" },
> > +	{ .compatible = "mediatek,mt8183-wdt", .data = &mt8183_data },
> >  	{ /* sentinel */ }
> >  };
> >  MODULE_DEVICE_TABLE(of, mtk_wdt_dt_ids);
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
