Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BC6C9FD1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 15:49:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JqwTnBFd1xsFPW4koUvm/v7EjFiySFlVx0feRFzdxgw=; b=XEKrVabLoZ7noBjUUwBqJcgw+
	8QRegsjqIk3zveYAZwlP2DAcFVyYAP/bUOwUQyUx1hBRat8mivVURCX07ql/CdE+UJ8Ov294zcutW
	SPJgOLSnsfrTexijzj8c/2mS1/bUd06W5UwiI2iDLwxdxs7TKaNOLB58H1XE+NLjdkeSg/uxLDPd1
	vxthKUbxaF00kocdn5dNZe7wqVL0an1zM99184aPXNQ7BxQpg2d07RbrrFv8BA/g0qZU42tNIUwLh
	btyS3KrtzSO6OQlTLOzJWUpICmeHiWmEetL/jnQknJXduwvq2GJhQqLyPRvVTtdSGxQZkomwQzV26
	FiegwKzaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG1Tp-0002vZ-Si; Thu, 03 Oct 2019 13:49:17 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG1Ti-0002uw-Qc; Thu, 03 Oct 2019 13:49:12 +0000
Received: by mail-pf1-x442.google.com with SMTP id q21so1801215pfn.11;
 Thu, 03 Oct 2019 06:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qU/cSK+gU0JMwekDW0OdJ5TrbgcsghmAEgHcPcX1S2k=;
 b=g5bqyc+SxxFTKMciAJGqkfhULufeEd+uxmtC1Qt5rQ3zY8WPH3Un20Sh63H/Lr35Za
 /ok5MYSDtd7ExrDo8YQZXFhIpBqRTXdXF+N+MASVWyiFa5OGgaHb4k+ivGZkRBOwllZN
 eCCAdRZlcQJ8CtEvdwDy5ML8Yg3TuMLbX7UQc+bjnaGiME56qrXji23u7WRuTpwNNjir
 FjMmUUnBLer+Wm7FAKVClPjjJ6qg9i1XQ2A2jgcahWzHtLesUON4q6pGYe4LicQzF+Iw
 ITVMhAiJO3OBEnHYE/K/NlpMQLm99Sk8nea14nwtOR6ANFjYdsy4JFI29fYj2rcR9Mx7
 CipQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qU/cSK+gU0JMwekDW0OdJ5TrbgcsghmAEgHcPcX1S2k=;
 b=aYfIOuuT0P9qxILRwy2yEzwOiweitwM84EHBbHFtvbHYqEzH1SnjwIrpxoidJTw+84
 /N0fXLDFUGX2PcxyJk1wgehOXtHAZrJocg82x1G0G363Wom7dBJhHIjPsPKnpKntj3d/
 02vQQcR1JONxxYG/TmTcmeKW3qTwwzPCtveMUH3eHWqzF2SNP/E7LGvNRO739TEd0/4I
 aAWSJCALezvFoAw8UTp+FZ9+8t6PsY8y+E2husmxXUBkHDnQKSUm5G1ZwvOF9OaFyz3m
 pIwNq0N5g7TbMUBkv8ZYwe6pMnQsnd10o/YVLOiPhH5GmW3IoF4nA9DFLo5wmwOtQPHv
 0hIw==
X-Gm-Message-State: APjAAAVkq/2ilwM9vYthm9ALo+jOyQp4vB0/SrZ1osS15/sda/YtgMMR
 WlDchGGPWeWhGoGL8gpe7ai+8fG+
X-Google-Smtp-Source: APXvYqzquTPlIumLqDSbquXgm9egj/HTho3XxuimSqPb+VpT9+lG1OV9vKSChaHrulANom6lBe+hIA==
X-Received: by 2002:aa7:98d2:: with SMTP id e18mr11127889pfm.188.1570110549253; 
 Thu, 03 Oct 2019 06:49:09 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 d10sm3086757pfh.8.2019.10.03.06.49.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 03 Oct 2019 06:49:07 -0700 (PDT)
Subject: Re: [PATCH v2 2/4] watchdog: mtk_wdt: mt8183: Add reset controller
To: Jiaxin Yu <jiaxin.yu@mediatek.com>, broonie@kernel.org,
 mark.rutland@arm.com, robh+dt@kernel.org, wim@linux-watchdog.org
References: <1569580317-21181-1-git-send-email-jiaxin.yu@mediatek.com>
 <1569580317-21181-3-git-send-email-jiaxin.yu@mediatek.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <a0b2e9a3-ca77-814f-b7bd-edc69f00fce2@roeck-us.net>
Date: Thu, 3 Oct 2019 06:49:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1569580317-21181-3-git-send-email-jiaxin.yu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_064910_890442_D599DE46 
X-CRM114-Status: GOOD (  24.76  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: alsa-devel@alsa-project.org, yong.liang@mediatek.com, lgirdwood@gmail.com,
 perex@perex.cz, tzungbi@google.com, linux-mediatek@lists.infradead.org,
 eason.yen@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/27/19 3:31 AM, Jiaxin Yu wrote:
> From: "yong.liang" <yong.liang@mediatek.com>
> 
> Provide assert/deassert/reset API in watchdog driver.
> Register reset controller for toprgu device in watchdog probe.
> 
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> ---
>   drivers/watchdog/Kconfig   |   1 +
>   drivers/watchdog/mtk_wdt.c | 110 ++++++++++++++++++++++++++++++++++++-
>   2 files changed, 110 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 2e07caab9db2..629249fe5305 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -717,6 +717,7 @@ config MEDIATEK_WATCHDOG
>   	tristate "Mediatek SoCs watchdog support"
>   	depends on ARCH_MEDIATEK || COMPILE_TEST
>   	select WATCHDOG_CORE
> +	select RESET_CONTROLLER
>   	help
>   	  Say Y here to include support for the watchdog timer
>   	  in Mediatek SoCs.
> diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
> index 9c3d0033260d..660fb0e48d8e 100644
> --- a/drivers/watchdog/mtk_wdt.c
> +++ b/drivers/watchdog/mtk_wdt.c
> @@ -20,6 +20,10 @@
>   #include <linux/types.h>
>   #include <linux/watchdog.h>
>   #include <linux/delay.h>
> +#include <linux/reset-controller.h>
> +#include <linux/slab.h>
> +#include <linux/reset.h>
> +#include <linux/of_device.h>
>   
>   #define WDT_MAX_TIMEOUT		31
>   #define WDT_MIN_TIMEOUT		1
> @@ -44,17 +48,113 @@
>   #define WDT_SWRST		0x14
>   #define WDT_SWRST_KEY		0x1209
>   
> +#define WDT_SWSYSRST		0x18U
> +#define WDT_SWSYS_RST_KEY	0x88000000
> +
>   #define DRV_NAME		"mtk-wdt"
>   #define DRV_VERSION		"1.0"
>   
>   static bool nowayout = WATCHDOG_NOWAYOUT;
>   static unsigned int timeout;
>   
> +struct toprgu_reset {
> +	spinlock_t lock; /* Protects reset_controller access */
> +	void __iomem *toprgu_swrst_base;
> +	int regofs;
> +	struct reset_controller_dev rcdev;
> +};
> +
>   struct mtk_wdt_dev {
>   	struct watchdog_device wdt_dev;
>   	void __iomem *wdt_base;
> +	struct toprgu_reset reset_controller;
> +	const struct mtk_wdt_compatible *dev_comp;

"dev_comp" suggests that this would be a device name. In practice,
the only value there is sw_rst_num, and the value is only
used in toprgu_register_reset_controller(). Might as well pass
it as argument and drop this pointer.

> +};
> +
> +struct mtk_wdt_compatible {
> +	int sw_rst_num;
> +};
> +
"compatible" is an odd name for this structure. I would suggest
to select a more common name such as "mtk_wdt_data".

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

Unless there is additional synchronization elsewhere, parallel calls
to the -> assert, and ->reset callbacks may result in the reset being
deasserted while at least one caller (the one who called the ->assert
function) believes that it is still asserted.

[ ... and if there _is_ additional synchronization elsewhere, the
   local spinlock would be unnecessary ]

> +}
> +
> +static struct reset_control_ops toprgu_reset_ops = {
> +	.assert = toprgu_reset_assert,
> +	.deassert = toprgu_reset_deassert,
> +	.reset = toprgu_reset,
>   };
>   
> +static void toprgu_register_reset_controller(struct platform_device *pdev,
> +					     int regofs)

Since there is only one well defined offset, it seems unnecessary to pass
regofs as parameter.

> +{
> +	int ret;
> +	struct mtk_wdt_dev *mtk_wdt = platform_get_drvdata(pdev);
> +
> +	spin_lock_init(&mtk_wdt->reset_controller.lock);
> +
> +	mtk_wdt->dev_comp = of_device_get_match_data(&pdev->dev);

Duplicate, and not really needed. Just pass sw_rst_num as argument.

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
>   static int mtk_wdt_restart(struct watchdog_device *wdt_dev,
>   			   unsigned long action, void *data)
>   {
> @@ -187,9 +287,12 @@ static int mtk_wdt_probe(struct platform_device *pdev)
>   	if (unlikely(err))
>   		return err;
>   
> -	dev_info(dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)\n",
> +	dev_info(&pdev->dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)\n",
>   		 mtk_wdt->wdt_dev.timeout, nowayout);
>   
> +	mtk_wdt->dev_comp = of_device_get_match_data(&pdev->dev);
> +	if (mtk_wdt->dev_comp)
> +		toprgu_register_reset_controller(pdev, WDT_SWSYSRST);
>   	return 0;
>   }
>   
> @@ -217,7 +320,12 @@ static int mtk_wdt_resume(struct device *dev)
>   }
>   #endif
>   
> +static const struct mtk_wdt_compatible mt8183_compat = {
> +	.sw_rst_num = 18,

Please no such magic numbers. This should be a define in an include file.

> +};
> +
>   static const struct of_device_id mtk_wdt_dt_ids[] = {
> +	{ .compatible = "mediatek,mt8183-wdt", .data = &mt8183_compat },
>   	{ .compatible = "mediatek,mt6589-wdt" },
>   	{ /* sentinel */ }
>   };
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
