Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C527C1CB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ziRWhQfgOXVVgz0HGA5j2UjFwkkB/iMSTg7XJiSJlbs=; b=FPwT87l99RPH2c
	/SvSetYw5R0ELavhwd5V9WIARJeFM2Fpk3sVgudRo9ZF14BKmsY1dDQVzvFIcOx3OYPfVIqEqzna/
	qeEFlvpSQrdXYBrTRhHRUrCW03vK1OCMb7vFuOyDEFjVrZhHRkm4G1fjoah1//5mQpyMawH6YY8FE
	BN42G9zHPuMZqKfkR31dXZC2YXJpJZNMoIxt8MYTTC8NUAcrLKa5ADCdm+64Dh0kAbOf3pYoDejkk
	b5xOPgB2DnqbN/5Pj1RLI3TXR30zkHZ8p1swESQe/m5mPb6UxzRI2Vogcw1NAKcQFFiLctSsv3zL4
	/1K3OkW6LTSwpD3+0rRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqsV-0004kY-Eu; Mon, 30 Sep 2019 08:17:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqsB-0004iq-Fq; Mon, 30 Sep 2019 08:17:36 +0000
X-UUID: b354df239b2b4cefa9f17a2dddc65e19-20190930
X-UUID: b354df239b2b4cefa9f17a2dddc65e19-20190930
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 219776015; Mon, 30 Sep 2019 00:17:20 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Sep 2019 01:17:19 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Sep 2019 16:17:18 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 30 Sep 2019 16:17:18 +0800
Message-ID: <1569831439.15728.9.camel@mtksdaap41>
Subject: Re: [PATCH v2 2/4] watchdog: mtk_wdt: mt8183: Add reset controller
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Guenter Roeck <linux@roeck-us.net>
Date: Mon, 30 Sep 2019 16:17:19 +0800
In-Reply-To: <20190928174923.GA25512@roeck-us.net>
References: <1569580317-21181-1-git-send-email-jiaxin.yu@mediatek.com>
 <1569580317-21181-3-git-send-email-jiaxin.yu@mediatek.com>
 <20190928174923.GA25512@roeck-us.net>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_011735_527077_4F915F6A 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, alsa-devel@alsa-project.org, wim@linux-watchdog.org,
 broonie@kernel.org, yong.liang@mediatek.com,
 Jiaxin Yu <jiaxin.yu@mediatek.com>, lgirdwood@gmail.com, tzungbi@google.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, Philipp
 Zabel <p.zabel@pengutronix.de>, eason.yen@mediatek.com, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2019-09-28 at 10:49 -0700, Guenter Roeck wrote:
> On Fri, Sep 27, 2019 at 06:31:55PM +0800, Jiaxin Yu wrote:
> > From: "yong.liang" <yong.liang@mediatek.com>
> > 
> > Provide assert/deassert/reset API in watchdog driver.
> > Register reset controller for toprgu device in watchdog probe.
> > 
> > Signed-off-by: yong.liang <yong.liang@mediatek.com>
> > ---
> >  drivers/watchdog/Kconfig   |   1 +
> >  drivers/watchdog/mtk_wdt.c | 110 ++++++++++++++++++++++++++++++++++++-
> >  2 files changed, 110 insertions(+), 1 deletion(-)
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

<...snip...> 

> > +static void toprgu_register_reset_controller(struct platform_device *pdev,
> > +					     int regofs)
> > +{
> > +	int ret;
> > +	struct mtk_wdt_dev *mtk_wdt = platform_get_drvdata(pdev);
> > +
> > +	spin_lock_init(&mtk_wdt->reset_controller.lock);
> > +
> > +	mtk_wdt->dev_comp = of_device_get_match_data(&pdev->dev);
> > +	mtk_wdt->reset_controller.toprgu_swrst_base = mtk_wdt->wdt_base;
> > +	mtk_wdt->reset_controller.regofs = regofs;
> > +	mtk_wdt->reset_controller.rcdev.owner = THIS_MODULE;
> > +	mtk_wdt->reset_controller.rcdev.nr_resets =
> > +				mtk_wdt->dev_comp->sw_rst_num;
> > +	mtk_wdt->reset_controller.rcdev.ops = &toprgu_reset_ops;
> > +	mtk_wdt->reset_controller.rcdev.of_node = pdev->dev.of_node;
> > +	ret = reset_controller_register(&mtk_wdt->reset_controller.rcdev);
> > +	if (ret != 0)
> > +		dev_err(&pdev->dev,
> > +			"couldn't register wdt reset controller: %d\n", ret);
> > +}
> > +
> >  static int mtk_wdt_restart(struct watchdog_device *wdt_dev,
> >  			   unsigned long action, void *data)
> >  {
> > @@ -187,9 +287,12 @@ static int mtk_wdt_probe(struct platform_device *pdev)
> >  	if (unlikely(err))
> >  		return err;
> >  
> > -	dev_info(dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)\n",
> > +	dev_info(&pdev->dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)\n",
> >  		 mtk_wdt->wdt_dev.timeout, nowayout);
> >  
> > +	mtk_wdt->dev_comp = of_device_get_match_data(&pdev->dev);
> > +	if (mtk_wdt->dev_comp)
> > +		toprgu_register_reset_controller(pdev, WDT_SWSYSRST);
> 
> Please explain why you can not use the watchdog device built-in support
> for handling system resets.

Guenter,

This is not about system reset.
Besides watchdog, MTK toprgu module also provide sub-system (eg, audio,
camera, codec and connectivity) software reset functionality. Software
can use this to reset specific sub-system.

This patch add support for this using reset controller framework. We
follow the case of drivers/clk/mediatek/reset.c to add this
functionality in watchdog driver.

Joe.C




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
