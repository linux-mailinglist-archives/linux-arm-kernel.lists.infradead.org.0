Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D258969B3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 21:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MK+Otg2050lRA0mcfoRlmRXxCCTACic04Dl1umYyxI8=; b=ROraKv75Yt4zCX
	2GUZAXACzvlBGSnApE+fWZ9YBAqj9ISosc1EDJtNMpAS6FtPmmQplwhN5X6a+W86fQJC9HyuSfX0X
	zln59Sb7FJ5n4jmNEtqTRMziPC5Fhbon13IvjcfR0pM5FibyWEehqa4Y3jdLYibvlZ4ymN4f1EoWQ
	P6yF1wG6GAPtBDFzbkFbBDRpaWoZlvO6CoR1k/KYV+LRJ+2yFmpDWOQ40l+5HJndE5XO+UGafkhXl
	A5/dxN8+cyCoL0aWyPhBAegSoy6U19KYw5c59WmgQhKwwT1NoOjSKSUG/Hqva93KlMVEr8M8CZJRv
	Z6WUaKna+LuzZ9dhvhfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0A7G-0004LX-9Y; Tue, 20 Aug 2019 19:48:26 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0A77-0004Kx-GJ; Tue, 20 Aug 2019 19:48:19 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id DE91D60004;
 Tue, 20 Aug 2019 19:48:03 +0000 (UTC)
Date: Tue, 20 Aug 2019 21:48:03 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 05/13] rtc: mt6397: move some common definitions into
 rtc.h
Message-ID: <20190820194803.GW3545@piout.net>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-6-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-6-frank-w@public-files.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_124817_845329_220FFD51 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Josef Friedl <josef.friedl@speed.at>, Sean Wang <sean.wang@mediatek.com>,
 "linux-arm-kernel @ lists . infradead . org Alessandro Zummo"
 <a.zummo@towertech.it>, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, Tianping Fang <tianping.fang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Eddie Huang <eddie.huang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/08/2019 15:56:03+0200, Frank Wunderlich wrote:
> From: Josef Friedl <josef.friedl@speed.at>
> 
> move code to separate header-file to reuse definitions later
> in poweroff-driver (drivers/power/reset/mt6323-poweroff.c)
> 
> Suggested-by: Frank Wunderlich <frank-w@public-files.de>
> Signed-off-by: Josef Friedl <josef.friedl@speed.at>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
> changes since v5: none
> changes since v4: none
> changes since v3: none
> changes since v2: add missing commit-message
> ---
>  drivers/rtc/rtc-mt6397.c       | 55 +-------------------------
>  include/linux/mfd/mt6397/rtc.h | 71 ++++++++++++++++++++++++++++++++++
>  2 files changed, 72 insertions(+), 54 deletions(-)
>  create mode 100644 include/linux/mfd/mt6397/rtc.h
> 
> diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> index b46ed4dc7015..c08ee5edf865 100644
> --- a/drivers/rtc/rtc-mt6397.c
> +++ b/drivers/rtc/rtc-mt6397.c
> @@ -9,60 +9,7 @@
>  #include <linux/module.h>
>  #include <linux/regmap.h>
>  #include <linux/rtc.h>
> -#include <linux/irqdomain.h>
> -#include <linux/platform_device.h>
> -#include <linux/of_address.h>
> -#include <linux/of_irq.h>
> -#include <linux/io.h>
> -#include <linux/mfd/mt6397/core.h>
> -
> -#define RTC_BBPU		0x0000
> -#define RTC_BBPU_CBUSY		BIT(6)
> -
> -#define RTC_WRTGR		0x003c
> -
> -#define RTC_IRQ_STA		0x0002
> -#define RTC_IRQ_STA_AL		BIT(0)
> -#define RTC_IRQ_STA_LP		BIT(3)
> -
> -#define RTC_IRQ_EN		0x0004
> -#define RTC_IRQ_EN_AL		BIT(0)
> -#define RTC_IRQ_EN_ONESHOT	BIT(2)
> -#define RTC_IRQ_EN_LP		BIT(3)
> -#define RTC_IRQ_EN_ONESHOT_AL	(RTC_IRQ_EN_ONESHOT | RTC_IRQ_EN_AL)
> -
> -#define RTC_AL_MASK		0x0008
> -#define RTC_AL_MASK_DOW		BIT(4)
> -
> -#define RTC_TC_SEC		0x000a
> -/* Min, Hour, Dom... register offset to RTC_TC_SEC */
> -#define RTC_OFFSET_SEC		0
> -#define RTC_OFFSET_MIN		1
> -#define RTC_OFFSET_HOUR		2
> -#define RTC_OFFSET_DOM		3
> -#define RTC_OFFSET_DOW		4
> -#define RTC_OFFSET_MTH		5
> -#define RTC_OFFSET_YEAR		6
> -#define RTC_OFFSET_COUNT	7
> -
> -#define RTC_AL_SEC		0x0018
> -
> -#define RTC_PDN2		0x002e
> -#define RTC_PDN2_PWRON_ALARM	BIT(4)
> -
> -#define RTC_MIN_YEAR		1968
> -#define RTC_BASE_YEAR		1900
> -#define RTC_NUM_YEARS		128
> -#define RTC_MIN_YEAR_OFFSET	(RTC_MIN_YEAR - RTC_BASE_YEAR)
> -
> -struct mt6397_rtc {
> -	struct device		*dev;
> -	struct rtc_device	*rtc_dev;
> -	struct mutex		lock;
> -	struct regmap		*regmap;
> -	int			irq;
> -	u32			addr_base;
> -};
> +#include <linux/mfd/mt6397/rtc.h>
>  
>  static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
>  {
> diff --git a/include/linux/mfd/mt6397/rtc.h b/include/linux/mfd/mt6397/rtc.h
> new file mode 100644
> index 000000000000..b702c29e8c74
> --- /dev/null
> +++ b/include/linux/mfd/mt6397/rtc.h
> @@ -0,0 +1,71 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2014-2018 MediaTek Inc.
> + *
> + * Author: Tianping.Fang <tianping.fang@mediatek.com>
> + *        Sean Wang <sean.wang@mediatek.com>
> + */
> +
> +#ifndef _LINUX_MFD_MT6397_RTC_H_
> +#define _LINUX_MFD_MT6397_RTC_H_
> +
> +#include <linux/jiffies.h>
> +#include <linux/mutex.h>
> +#include <linux/regmap.h>
> +#include <linux/rtc.h>
> +
> +#define RTC_BBPU               0x0000
> +#define RTC_BBPU_CBUSY         BIT(6)
> +#define RTC_BBPU_KEY            (0x43 << 8)
> +
> +#define RTC_WRTGR              0x003c
> +
> +#define RTC_IRQ_STA            0x0002
> +#define RTC_IRQ_STA_AL         BIT(0)
> +#define RTC_IRQ_STA_LP         BIT(3)
> +
> +#define RTC_IRQ_EN             0x0004
> +#define RTC_IRQ_EN_AL          BIT(0)
> +#define RTC_IRQ_EN_ONESHOT     BIT(2)
> +#define RTC_IRQ_EN_LP          BIT(3)
> +#define RTC_IRQ_EN_ONESHOT_AL  (RTC_IRQ_EN_ONESHOT | RTC_IRQ_EN_AL)
> +
> +#define RTC_AL_MASK            0x0008
> +#define RTC_AL_MASK_DOW                BIT(4)
> +
> +#define RTC_TC_SEC             0x000a
> +/* Min, Hour, Dom... register offset to RTC_TC_SEC */
> +#define RTC_OFFSET_SEC         0
> +#define RTC_OFFSET_MIN         1
> +#define RTC_OFFSET_HOUR                2
> +#define RTC_OFFSET_DOM         3
> +#define RTC_OFFSET_DOW         4
> +#define RTC_OFFSET_MTH         5
> +#define RTC_OFFSET_YEAR                6
> +#define RTC_OFFSET_COUNT       7
> +
> +#define RTC_AL_SEC             0x0018
> +
> +#define RTC_PDN2               0x002e
> +#define RTC_PDN2_PWRON_ALARM   BIT(4)
> +
> +#define RTC_MIN_YEAR           1968
> +#define RTC_BASE_YEAR          1900
> +#define RTC_NUM_YEARS          128
> +#define RTC_MIN_YEAR_OFFSET    (RTC_MIN_YEAR - RTC_BASE_YEAR)
> +
> +#define MTK_RTC_POLL_DELAY_US  10
> +#define MTK_RTC_POLL_TIMEOUT   (jiffies_to_usecs(HZ))
> +
> +struct mt6397_rtc {
> +	struct device           *dev;
> +	struct rtc_device       *rtc_dev;
> +
> +	/* Protect register access from multiple tasks */
> +	struct mutex            lock;
> +	struct regmap           *regmap;
> +	int                     irq;
> +	u32                     addr_base;
> +};
> +
> +#endif /* _LINUX_MFD_MT6397_RTC_H_ */
> -- 
> 2.17.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
