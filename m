Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E6F81DDB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 15:49:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoxDoLJeSnOTx80m0Li3SWBIz2zoO1aFx0kmsCW7pDc=; b=JabZRVFFQ6i0sI
	9bfcdX2f+ocwOiUD5orEtmJLkkN+h0dPUBgKiJU9kCrSNB1nj+8C3PgH3kWLAZcBDtu2LSvDWDz/m
	0C4PLwhPPAjQsS6+mxfXHB6+xblRoG8yexj6+GDiVZJJCc6+JYtcVIw08up1+vzdIy6wKRDD9vSfi
	P3v4QrDuHn4Rc/SiB6b0mfgtB638N9YOS1IDuW+HbsgDTabRlRoXTvzX/KD35LQkkFS2exyNRrcOF
	A5eVJfEPLwowoYiVIvkCbmEQv8P2l7aJZa+mTFX63pnxfmjx8TZf+XPuvn2ZLGceQ3vCMku/5xnfy
	DLbppdCZDZv6AZZ8thEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudMR-0004zO-8L; Mon, 05 Aug 2019 13:49:15 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hudM8-0004q0-7s; Mon, 05 Aug 2019 13:48:59 +0000
X-Originating-IP: 82.246.155.60
Received: from localhost (hy283-1-82-246-155-60.fbx.proxad.net [82.246.155.60])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 7169F240015;
 Mon,  5 Aug 2019 13:48:43 +0000 (UTC)
Date: Mon, 5 Aug 2019 15:48:42 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v3 03/10] rtc: mt6397: move some common definitions into
 rtc.h
Message-ID: <20190805134842.GG3600@piout.net>
References: <20190729174154.4335-1-frank-w@public-files.de>
 <20190729174154.4335-4-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729174154.4335-4-frank-w@public-files.de>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_064857_109412_C06E4FAE 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, linux-rtc@vger.kernel.org,
 Allison Randal <allison@lohutok.net>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 "Tianping . Fang" <tianping.fang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/07/2019 19:41:47+0200, Frank Wunderlich wrote:
> From: Josef Friedl <josef.friedl@speed.at>
> 
> move code to separate header-file to reuse definitions later
> in poweroff-driver (drivers/power/reset/mt6323-poweroff.c)
> 
> changes since v2: add missing commit-message

The changelog should be after the --- marker.
> 
> Suggested-by: Frank Wunderlich <frank-w@public-files.de>
> Signed-off-by: Josef Friedl <josef.friedl@speed.at>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
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
