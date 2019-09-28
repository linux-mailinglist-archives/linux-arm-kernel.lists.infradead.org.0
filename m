Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 339DBC11A4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 19:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uoRCxtQwZvFrZijqWjuOIWEsBot/wB3ljACuVRcueK0=; b=Qcn9GPGn5S2TDC
	Tjsbcrxih7iUMvMTX7+kDyIrAtHI+fNJk9yoBgvbrge0Kf1IWwInSHRZmX5kqQDJxeJSuV3cwXHcN
	Iktt/Pvk9C0X8y5yRwOQ8QUhzUIrUyPkiq5hWa0X6VDkw1VzWmgy6v2Ry2QEDA7Nh13iKL3iZbWWj
	nMrlp4lfgZ8qd/D6fJD06sOxnjZuYBjOSlv56JrCH6ymOIVcFTfXcN+dmmbkDjRBJcj6aDD++wgZr
	MF5JiFojGgMOldul3qH2BiqiDKwf/AmwvbLsBIsLsriR6XRMbueb4Dkqj9DZOG451d5iWRSMr9Eo0
	2sOdEWuIUufFGdOulKjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEGqh-0000Eq-7H; Sat, 28 Sep 2019 17:49:39 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEGqX-0000DX-Cr; Sat, 28 Sep 2019 17:49:31 +0000
Received: by mail-pf1-x444.google.com with SMTP id q7so3268589pfh.8;
 Sat, 28 Sep 2019 10:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Tz34nLx8zc3x7P3I+XVz0wfasxKpU8Q18lKTFK1FdGI=;
 b=kcRg+tDAcnLHQiHao30I0Di4gyP/Fp/1XXwvVQsckNtUh20SDvDDm5n0YT+z/TIWmB
 CCBV/Y4pndXJQcH1O9iuCa5x7UAH3udfNRZXwkcB1NTL4HZwtHVEMrxHe6CM8lPFkchW
 8PqNZTFG+whLlShnF/kAHGIaR1p9acIp11kNz9bSJnPHs7Kui+YVVnCEcFMMM3u9eYfS
 qE/QhXD52b6oNcjSAECkRO9jTzyGG0YRRVNBn6reyK0oiurBV8tqU4JNkEqaZF8Xgz3D
 R+6InNeuJP1Jj/3zkdpvInoZLAoK3E8+AdZIVf1BspWUtU4CGa9RyCooULn76SmZAfym
 TmQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Tz34nLx8zc3x7P3I+XVz0wfasxKpU8Q18lKTFK1FdGI=;
 b=Kg6XTQ5sQIIOVDyRYhC+FhJqHRkvDEAC1Vn8ndfEyhbkvzMuFZ/pdLy2nW7p+RdJX2
 lWOmypzF0dWEIS2mAdSdGoDPoKf/oxrv7GEm2gcQnQVyzDwPPG+3ZELZ06eryKn6080c
 APVs5OfXm1hJm4yLlkwiC1Xcn9cCDEAlvcj1GOs3wqReswNtysZogO4oyGvAZ3EMR587
 q0W8ufqD+U0IYQyDMATIVWyLZ1H/cflBe8GcVgB9XOL4168165rgqK5ii09mhIn5BY/d
 kRpM+aDMOy3GZvdUO/FQvb38YDavpV9a996eH6zT/GH+CXObDpvEC0GmvyBtPlDap1PT
 0+Kw==
X-Gm-Message-State: APjAAAXM8JRzR9mfd0b/2ga55pFDR6NnNWtuKFo39rDTlh0/te/FxrSW
 8wp/ExCiRwGf8D27E6RLaPH4FNXq
X-Google-Smtp-Source: APXvYqztDH+CuPrUtFhwIzHFomHf/jYRogGVw3LtuVXbsf/C1OjujrMLAvVxM7rEL/hdmsZyPG9tCg==
X-Received: by 2002:aa7:9358:: with SMTP id 24mr11593054pfn.241.1569692966129; 
 Sat, 28 Sep 2019 10:49:26 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id d69sm6664026pfd.175.2019.09.28.10.49.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Sep 2019 10:49:24 -0700 (PDT)
Date: Sat, 28 Sep 2019 10:49:23 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: Re: [PATCH v2 2/4] watchdog: mtk_wdt: mt8183: Add reset controller
Message-ID: <20190928174923.GA25512@roeck-us.net>
References: <1569580317-21181-1-git-send-email-jiaxin.yu@mediatek.com>
 <1569580317-21181-3-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569580317-21181-3-git-send-email-jiaxin.yu@mediatek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_104929_437359_1871BB31 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 lgirdwood@gmail.com, robh+dt@kernel.org, perex@perex.cz, tzungbi@google.com,
 broonie@kernel.org, linux-mediatek@lists.infradead.org, eason.yen@mediatek.com,
 wim@linux-watchdog.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 06:31:55PM +0800, Jiaxin Yu wrote:
> From: "yong.liang" <yong.liang@mediatek.com>
> 
> Provide assert/deassert/reset API in watchdog driver.
> Register reset controller for toprgu device in watchdog probe.
> 
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> ---
>  drivers/watchdog/Kconfig   |   1 +
>  drivers/watchdog/mtk_wdt.c | 110 ++++++++++++++++++++++++++++++++++++-
>  2 files changed, 110 insertions(+), 1 deletion(-)
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
> index 9c3d0033260d..660fb0e48d8e 100644
> --- a/drivers/watchdog/mtk_wdt.c
> +++ b/drivers/watchdog/mtk_wdt.c
> @@ -20,6 +20,10 @@
>  #include <linux/types.h>
>  #include <linux/watchdog.h>
>  #include <linux/delay.h>
> +#include <linux/reset-controller.h>
> +#include <linux/slab.h>
> +#include <linux/reset.h>
> +#include <linux/of_device.h>
>  
>  #define WDT_MAX_TIMEOUT		31
>  #define WDT_MIN_TIMEOUT		1
> @@ -44,17 +48,113 @@
>  #define WDT_SWRST		0x14
>  #define WDT_SWRST_KEY		0x1209
>  
> +#define WDT_SWSYSRST		0x18U
> +#define WDT_SWSYS_RST_KEY	0x88000000
> +
>  #define DRV_NAME		"mtk-wdt"
>  #define DRV_VERSION		"1.0"
>  
>  static bool nowayout = WATCHDOG_NOWAYOUT;
>  static unsigned int timeout;
>  
> +struct toprgu_reset {
> +	spinlock_t lock; /* Protects reset_controller access */
> +	void __iomem *toprgu_swrst_base;
> +	int regofs;
> +	struct reset_controller_dev rcdev;
> +};
> +
>  struct mtk_wdt_dev {
>  	struct watchdog_device wdt_dev;
>  	void __iomem *wdt_base;
> +	struct toprgu_reset reset_controller;
> +	const struct mtk_wdt_compatible *dev_comp;
> +};
> +
> +struct mtk_wdt_compatible {
> +	int sw_rst_num;
> +};
> +
> +static int toprgu_reset_assert(struct reset_controller_dev *rcdev,
> +			       unsigned long id)
> +{
> +	unsigned int tmp;
> +	unsigned long flags;
> +	struct toprgu_reset *data = container_of(rcdev,
> +				struct toprgu_reset, rcdev);
> +
> +	spin_lock_irqsave(&data->lock, flags);
> +
> +	tmp = __raw_readl(data->toprgu_swrst_base + data->regofs);
> +	tmp |= BIT(id);
> +	tmp |= WDT_SWSYS_RST_KEY;
> +	writel(tmp, data->toprgu_swrst_base + data->regofs);
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
> +	struct toprgu_reset *data = container_of(rcdev,
> +					struct toprgu_reset, rcdev);
> +
> +	spin_lock_irqsave(&data->lock, flags);
> +
> +	tmp = __raw_readl(data->toprgu_swrst_base + data->regofs);
> +	tmp &= ~BIT(id);
> +	tmp |= WDT_SWSYS_RST_KEY;
> +	writel(tmp, data->toprgu_swrst_base + data->regofs);
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
> +static struct reset_control_ops toprgu_reset_ops = {
> +	.assert = toprgu_reset_assert,
> +	.deassert = toprgu_reset_deassert,
> +	.reset = toprgu_reset,
>  };
>  
> +static void toprgu_register_reset_controller(struct platform_device *pdev,
> +					     int regofs)
> +{
> +	int ret;
> +	struct mtk_wdt_dev *mtk_wdt = platform_get_drvdata(pdev);
> +
> +	spin_lock_init(&mtk_wdt->reset_controller.lock);
> +
> +	mtk_wdt->dev_comp = of_device_get_match_data(&pdev->dev);
> +	mtk_wdt->reset_controller.toprgu_swrst_base = mtk_wdt->wdt_base;
> +	mtk_wdt->reset_controller.regofs = regofs;
> +	mtk_wdt->reset_controller.rcdev.owner = THIS_MODULE;
> +	mtk_wdt->reset_controller.rcdev.nr_resets =
> +				mtk_wdt->dev_comp->sw_rst_num;
> +	mtk_wdt->reset_controller.rcdev.ops = &toprgu_reset_ops;
> +	mtk_wdt->reset_controller.rcdev.of_node = pdev->dev.of_node;
> +	ret = reset_controller_register(&mtk_wdt->reset_controller.rcdev);
> +	if (ret != 0)
> +		dev_err(&pdev->dev,
> +			"couldn't register wdt reset controller: %d\n", ret);
> +}
> +
>  static int mtk_wdt_restart(struct watchdog_device *wdt_dev,
>  			   unsigned long action, void *data)
>  {
> @@ -187,9 +287,12 @@ static int mtk_wdt_probe(struct platform_device *pdev)
>  	if (unlikely(err))
>  		return err;
>  
> -	dev_info(dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)\n",
> +	dev_info(&pdev->dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)\n",
>  		 mtk_wdt->wdt_dev.timeout, nowayout);
>  
> +	mtk_wdt->dev_comp = of_device_get_match_data(&pdev->dev);
> +	if (mtk_wdt->dev_comp)
> +		toprgu_register_reset_controller(pdev, WDT_SWSYSRST);

Please explain why you can not use the watchdog device built-in support
for handling system resets.

Guenter

>  	return 0;
>  }
>  
> @@ -217,7 +320,12 @@ static int mtk_wdt_resume(struct device *dev)
>  }
>  #endif
>  
> +static const struct mtk_wdt_compatible mt8183_compat = {
> +	.sw_rst_num = 18,
> +};
> +
>  static const struct of_device_id mtk_wdt_dt_ids[] = {
> +	{ .compatible = "mediatek,mt8183-wdt", .data = &mt8183_compat },
>  	{ .compatible = "mediatek,mt6589-wdt" },
>  	{ /* sentinel */ }
>  };
> -- 
> 2.18.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
