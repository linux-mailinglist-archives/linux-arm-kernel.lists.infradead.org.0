Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA6712E433
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 10:06:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:References:
	In-Reply-To:To:From:Subject:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0G+2XycTMEQrNUBW7ReVww6KWxp9QRLZ0NXnrPTkX3g=; b=LLPegjhsnDhfJEqXFMj7/9q6ZL
	lNTOiX4/SQgZHMi1hzopjlnmFK1dMi3iv05XNK2cKjF8uZ1bfkXCuH9QtJYx4GHVZJNhHyhAJO7tg
	3pzNM1bN7ueUPvkztPR3PzUtCkEPydT5THcLc7ogGFXXYhRDZtwZMEaVVrIemF3iSItlL6aeTd4cN
	qZOiX5G9XTiteue1EMXUhdQTxKJtZhlQY1YloLTxS5iuCTRMTpAE6jUSm7ppJimgi2BSrgqcXkzwY
	alwaXD9lR1Z9QEcziHgAQKBMQlIggGIUSMgHUZMaU/6LSWNt9p+8jqp/1GweSbKR3rALwdUiFpUNR
	6YCvTvTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imwQs-0004f1-53; Thu, 02 Jan 2020 09:06:18 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imwQl-0004e7-6c; Thu, 02 Jan 2020 09:06:13 +0000
X-UUID: b5c7d7ca83554e8d9635cde6c0bd4915-20200102
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Date:Content-Type:References:In-Reply-To:CC:To:From:Subject:Message-ID;
 bh=JGdPpUo4222DzCM6wDjv30KIDNPq7IUZFH93VPCjlWU=; 
 b=Xua3Ef7O93oKkZwSYVxlRAHi5l9naLTK7fqm1szfzl9rE/bcqyaUlYRu2xPKMLSsgzSJKDMsLB9w6inQK7JVwCz+xhGMnxwZvA9hKTtWBlIRim61uyy+16pUspcRTDwYMNz7YMV+wfFKP48YIN30UKzpT//b3mxZ53rfsVErW0A=;
X-UUID: b5c7d7ca83554e8d9635cde6c0bd4915-20200102
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <srv_yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 943449014; Thu, 02 Jan 2020 01:06:06 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Jan 2020 00:56:26 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Jan 2020 16:55:08 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 2 Jan 2020 16:55:12 +0800
Message-ID: <1573716890.27914.8.camel@mtksdaap41>
Subject: Re: [PATCH v4 2/2] watchdog: mtk_wdt: mt8183: Add reset controller
From: Yingjoe Chen <srv_yingjoe.chen@mediatek.com>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
In-Reply-To: <1571205548-13704-3-git-send-email-jiaxin.yu@mediatek.com>
References: <1571205548-13704-1-git-send-email-jiaxin.yu@mediatek.com>
 <1571205548-13704-3-git-send-email-jiaxin.yu@mediatek.com>
Date: Thu, 14 Nov 2019 15:34:50 +0800
MIME-Version: 1.0
X-Mailer: Evolution 3.10.4-0ubuntu2 
X-TM-SNTS-SMTP: 105F61B96C4E2C1BE8BCE53C9F69A468765DF4EA5532D9FF8CFC651CB3642BD62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_010611_763170_A4CA6D49 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: 1.9 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.1 DATE_IN_PAST_96_XX     Date: is 96 hours or more before Received:
 date
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
Cc: mark.rutland@arm.com, alsa-devel@alsa-project.org, yong.liang@mediatek.com,
 robh+dt@kernel.org, lgirdwood@gmail.com, tzungbi@google.com,
 broonie@kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, eason.yen@mediatek.com, perex@perex.cz,
 wim@linux-watchdog.org, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-10-16 at 13:59 +0800, Jiaxin Yu wrote:
> From: "yong.liang" <yong.liang@mediatek.com>
> 
> Add reset controller API in watchdog driver.
> Besides watchdog, MTK toprgu module also provide sub-system (eg, audio,
> camera, codec and connectivity) software reset functionality.
> 
> Signed-off-by: yong.liang <yong.liang@mediatek.com>

Jiaxin,

Since you send this patch, you should add your signed-off-by tag here as
well.

This looks good to me otherwise. Feel free to add my reviewed by if you
want:

Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>

Joe.C

> ---
>  drivers/watchdog/Kconfig   |   1 +
>  drivers/watchdog/mtk_wdt.c | 111 ++++++++++++++++++++++++++++++++++++-
>  2 files changed, 111 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 2e07caab9db2..629249fe5305 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -717,6 +717,7 @@ config MEDIATEK_WATCHDOG
>  	tristate "Mediatek SoCs watchdog support"
>  	depends on ARCH_MEDIATEK || COMPILE_TEST
>  	select WATCHDOG_CORE
> +	select RESET_CONTROLLER
>  	help
>  	  Say Y here to include support for the watchdog timer
>  	  in Mediatek SoCs.
> diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
> index 9c3d0033260d..d29484c7940a 100644
> --- a/drivers/watchdog/mtk_wdt.c
> +++ b/drivers/watchdog/mtk_wdt.c
> @@ -9,6 +9,9 @@
>   * Based on sunxi_wdt.c
>   */
>  
> +#include <dt-bindings/reset-controller/mt2712-resets.h>
> +#include <dt-bindings/reset-controller/mt8183-resets.h>
> +#include <linux/delay.h>
>  #include <linux/err.h>
>  #include <linux/init.h>
>  #include <linux/io.h>
> @@ -16,10 +19,12 @@
>  #include <linux/module.h>
>  #include <linux/moduleparam.h>
>  #include <linux/of.h>
> +#include <linux/of_device.h>
>  #include <linux/platform_device.h>
> +#include <linux/reset-controller.h>
> +#include <linux/slab.h>
>  #include <linux/types.h>
>  #include <linux/watchdog.h>
> -#include <linux/delay.h>
>  
>  #define WDT_MAX_TIMEOUT		31
>  #define WDT_MIN_TIMEOUT		1
> @@ -44,6 +49,9 @@
>  #define WDT_SWRST		0x14
>  #define WDT_SWRST_KEY		0x1209
>  
> +#define WDT_SWSYSRST		0x18U
> +#define WDT_SWSYS_RST_KEY	0x88000000
> +
>  #define DRV_NAME		"mtk-wdt"
>  #define DRV_VERSION		"1.0"
>  
> @@ -53,8 +61,99 @@ static unsigned int timeout;
>  struct mtk_wdt_dev {
>  	struct watchdog_device wdt_dev;
>  	void __iomem *wdt_base;
> +	spinlock_t lock; /* protects WDT_SWSYSRST reg */
> +	struct reset_controller_dev rcdev;
> +};
> +
> +struct mtk_wdt_data {
> +	int sw_rst_num;
>  };
>  
> +static const struct mtk_wdt_data mt2712_data = {
> +	.sw_rst_num = MT2712_TOPRGU_SW_RST_NUM,
> +};
> +
> +static const struct mtk_wdt_data mt8183_data = {
> +	.sw_rst_num = MT8183_TOPRGU_SW_RST_NUM,
> +};
> +
> +static int toprgu_reset_assert(struct reset_controller_dev *rcdev,
> +			       unsigned long id)
> +{
> +	unsigned int tmp;
> +	unsigned long flags;
> +	struct mtk_wdt_dev *data =
> +		 container_of(rcdev, struct mtk_wdt_dev, rcdev);
> +
> +	spin_lock_irqsave(&data->lock, flags);
> +
> +	tmp = __raw_readl(data->wdt_base + WDT_SWSYSRST);
> +	tmp |= BIT(id);
> +	tmp |= WDT_SWSYS_RST_KEY;
> +	writel(tmp, data->wdt_base + WDT_SWSYSRST);
> +
> +	spin_unlock_irqrestore(&data->lock, flags);
> +
> +	return 0;
> +}
> +
> +static int toprgu_reset_deassert(struct reset_controller_dev *rcdev,
> +				 unsigned long id)
> +{
> +	unsigned int tmp;
> +	unsigned long flags;
> +	struct mtk_wdt_dev *data =
> +		 container_of(rcdev, struct mtk_wdt_dev, rcdev);
> +
> +	spin_lock_irqsave(&data->lock, flags);
> +
> +	tmp = __raw_readl(data->wdt_base + WDT_SWSYSRST);
> +	tmp &= ~BIT(id);
> +	tmp |= WDT_SWSYS_RST_KEY;
> +	writel(tmp, data->wdt_base + WDT_SWSYSRST);
> +
> +	spin_unlock_irqrestore(&data->lock, flags);
> +
> +	return 0;
> +}
> +
> +static int toprgu_reset(struct reset_controller_dev *rcdev,
> +			unsigned long id)
> +{
> +	int ret;
> +
> +	ret = toprgu_reset_assert(rcdev, id);
> +	if (ret)
> +		return ret;
> +
> +	return toprgu_reset_deassert(rcdev, id);
> +}
> +
> +static const struct reset_control_ops toprgu_reset_ops = {
> +	.assert = toprgu_reset_assert,
> +	.deassert = toprgu_reset_deassert,
> +	.reset = toprgu_reset,
> +};
> +
> +static int toprgu_register_reset_controller(struct platform_device *pdev,
> +					    int rst_num)
> +{
> +	int ret;
> +	struct mtk_wdt_dev *mtk_wdt = platform_get_drvdata(pdev);
> +
> +	spin_lock_init(&mtk_wdt->lock);
> +
> +	mtk_wdt->rcdev.owner = THIS_MODULE;
> +	mtk_wdt->rcdev.nr_resets = rst_num;
> +	mtk_wdt->rcdev.ops = &toprgu_reset_ops;
> +	mtk_wdt->rcdev.of_node = pdev->dev.of_node;
> +	ret = reset_controller_register(&mtk_wdt->rcdev);
> +	if (ret != 0)
> +		dev_err(&pdev->dev,
> +			"couldn't register wdt reset controller: %d\n", ret);
> +	return ret;
> +}
> +
>  static int mtk_wdt_restart(struct watchdog_device *wdt_dev,
>  			   unsigned long action, void *data)
>  {
> @@ -155,6 +254,7 @@ static int mtk_wdt_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct mtk_wdt_dev *mtk_wdt;
> +	struct mtk_wdt_data *wdt_data;
>  	int err;
>  
>  	mtk_wdt = devm_kzalloc(dev, sizeof(*mtk_wdt), GFP_KERNEL);
> @@ -190,6 +290,13 @@ static int mtk_wdt_probe(struct platform_device *pdev)
>  	dev_info(dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)\n",
>  		 mtk_wdt->wdt_dev.timeout, nowayout);
>  
> +	wdt_data = (struct mtk_wdt_data *)of_device_get_match_data(dev);
> +	if (wdt_data) {
> +		err = toprgu_register_reset_controller(pdev,
> +						       wdt_data->sw_rst_num);
> +		if (err)
> +			return err;
> +	}
>  	return 0;
>  }
>  
> @@ -218,7 +325,9 @@ static int mtk_wdt_resume(struct device *dev)
>  #endif
>  
>  static const struct of_device_id mtk_wdt_dt_ids[] = {
> +	{ .compatible = "mediatek,mt2712-wdt", .data = &mt2712_data },
>  	{ .compatible = "mediatek,mt6589-wdt" },
> +	{ .compatible = "mediatek,mt8183-wdt", .data = &mt8183_data },
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, mtk_wdt_dt_ids);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
