Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8DB67C0C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jul 2019 23:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GOuaVWAwaeQsr0mAjnquWqjWfmHjL74te3fK5Lqpe/4=; b=J8IKhtgGbKQt+/
	OWCfB4JnE+Y4sYvpx5FfwdeS3n11Ru4U8fkLUrzxS6gh8u1BgVZ4tIPqJc9E6U9uCVuxn5G6mKr8v
	0qpV0QqhERGrnZQ6cyMKDrIp/niC9TpQMWl4uc2eWkUl6xnQRWA/VQbkAK3EnyE1HPhWTcUaepY4S
	6USyLycbb+9RSVGGMaurn8I8+R1yiDX54pwMNxijx8F9/PMo/rZCElm2t/NJ4YJNpo6XyEXnghe4J
	QnqcXXLCwtc1l2mEJ4fpZZ8buxYZ+RuIjN+oVtqNtI9oiuNIpEUuU4hDlnytav31ZgTF5GFi1emi8
	SJiJwILpnvIHHAMluFtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmPKU-0003CK-RR; Sat, 13 Jul 2019 21:13:15 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmPK8-00039b-FV; Sat, 13 Jul 2019 21:12:55 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id F3454C0002;
 Sat, 13 Jul 2019 21:12:31 +0000 (UTC)
Date: Sat, 13 Jul 2019 23:12:31 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Ran Bi <ran.bi@mediatek.com>
Subject: Re: [PATCH 2/3] rtc: Add support for the MediaTek MT2712 RTC
Message-ID: <20190713211231.GD4732@piout.net>
References: <20190702032120.16539-1-ran.bi@mediatek.com>
 <20190702032120.16539-3-ran.bi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702032120.16539-3-ran.bi@mediatek.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_141252_844070_B496CC74 
X-CRM114-Status: GOOD (  25.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, Flora Fu <flora.fu@mediatek.com>,
 srv_heupstream@mediatek.com, devicetree@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 YT Shen <yt.shen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 02/07/2019 11:21:19+0800, Ran Bi wrote:
> diff --git a/drivers/rtc/rtc-mt2712.c b/drivers/rtc/rtc-mt2712.c
> new file mode 100644
> index 000000000000..f98f0ab114c5
> --- /dev/null
> +++ b/drivers/rtc/rtc-mt2712.c
> @@ -0,0 +1,495 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + * Author: Ran Bi <ran.bi@mediatek.com>
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/init.h>
> +#include <linux/io.h>
> +#include <linux/irqdomain.h>
> +#include <linux/module.h>
> +#include <linux/of_address.h>
> +#include <linux/of_irq.h>
> +#include <linux/platform_device.h>
> +#include <linux/rtc.h>
> +
> +#define MTK_RTC_DEV		KBUILD_MODNAME
> +
> +#define RTC_BBPU		0x0000
> +#define RTC_BBPU_CLRPKY		(1U << 4)

Please use BIT(). Also, I don't feel that the RTC prefix is adding any
value. MT2712 would be a better choice here.

> +#define RTC_BBPU_RELOAD		(1U << 5)
> +#define RTC_BBPU_CBUSY		(1U << 6)
> +#define RTC_BBPU_KEY		(0x43 << 8)
> +
> +#define RTC_IRQ_STA		0x0004
> +#define RTC_IRQ_STA_AL		(1U << 0)
> +#define RTC_IRQ_STA_TC		(1U << 1)
> +
> +#define RTC_IRQ_EN		0x0008
> +#define RTC_IRQ_EN_AL		(1U << 0)
> +#define RTC_IRQ_EN_TC		(1U << 1)
> +#define RTC_IRQ_EN_ONESHOT	(1U << 2)
> +#define RTC_IRQ_EN_ONESHOT_AL	(RTC_IRQ_EN_ONESHOT | RTC_IRQ_EN_AL)
> +
> +#define RTC_CII_EN		0x000c
> +
> +#define RTC_AL_MASK		0x0010
> +#define RTC_AL_MASK_DOW		(1U << 4)
> +
> +#define RTC_TC_SEC		0x0014
> +#define RTC_TC_MIN		0x0018
> +#define RTC_TC_HOU		0x001c
> +#define RTC_TC_DOM		0x0020
> +#define RTC_TC_DOW		0x0024
> +#define RTC_TC_MTH		0x0028
> +#define RTC_TC_YEA		0x002c
> +
> +#define RTC_AL_SEC		0x0030
> +#define RTC_AL_MIN		0x0034
> +#define RTC_AL_HOU		0x0038
> +#define RTC_AL_DOM		0x003c
> +#define RTC_AL_DOW		0x0040
> +#define RTC_AL_MTH		0x0044
> +#define RTC_AL_YEA		0x0048
> +
> +#define RTC_SEC_MASK		0x003f
> +#define RTC_MIN_MASK		0x003f
> +#define RTC_HOU_MASK		0x001f
> +#define RTC_DOM_MASK		0x001f
> +#define RTC_DOW_MASK		0x0007
> +#define RTC_MTH_MASK		0x000f
> +#define RTC_YEA_MASK		0x007f
> +
> +#define RTC_POWERKEY1		0x004c
> +#define RTC_POWERKEY2		0x0050
> +#define RTC_POWERKEY1_KEY	0xa357
> +#define RTC_POWERKEY2_KEY	0x67d2
> +
> +#define RTC_CON0		0x005c
> +#define RTC_CON1		0x0060
> +
> +#define RTC_PROT		0x0070
> +#define RTC_PROT_UNLOCK1	0x9136
> +#define RTC_PROT_UNLOCK2	0x586a
> +
> +#define RTC_WRTGR		0x0078
> +
> +/* we map HW YEAR 0 to 1968 not 1970 because 2000 is the leap year */
> +#define RTC_MIN_YEAR		1968
> +#define RTC_BASE_YEAR		1900
> +#define RTC_MIN_YEAR_OFFSET	(RTC_MIN_YEAR - RTC_BASE_YEAR)

Do not do that. If this RTC range starts in 200, ths is what the driver
has to support, you should not care about dates before 2000. Note that
the RTC core can still properly shift the range if it is absolutely
necessary.

> +
> +#define RTC_DEFAULT_YEA		2010
> +#define RTC_DEFAULT_MTH		1
> +#define RTC_DEFAULT_DOM		1
> +
> +struct mt2712_rtc {
> +	struct device		*dev;
> +	struct rtc_device	*rtc_dev;
> +	void __iomem		*base;
> +	struct mutex		lock;
> +	int			irq;
> +	u8			irq_wake_enabled;
> +};
> +
> +static inline u32 rtc_readl(struct mt2712_rtc *rtc, u32 reg)

Please use a more descriptive prefix than just rtc_.

> +{
> +	return readl(rtc->base + reg);
> +}
> +
> +static inline void rtc_writel(struct mt2712_rtc *rtc, u32 reg, u32 val)
> +{
> +	writel(val, rtc->base + reg);
> +}
> +
> +static void rtc_write_trigger(struct mt2712_rtc *rtc)
> +{
> +	unsigned long timeout = jiffies + HZ/10;
> +
> +	rtc_writel(rtc, RTC_WRTGR, 1);
> +	while (1) {
> +		if (!(rtc_readl(rtc, RTC_BBPU) & RTC_BBPU_CBUSY))
> +			break;
> +
> +		if (time_after(jiffies, timeout)) {
> +			dev_err(rtc->dev, "%s time out!\n", __func__);
> +			break;
> +		}
> +		cpu_relax();
> +	}
> +}
> +
> +static void rtc_writeif_unlock(struct mt2712_rtc *rtc)
> +{
> +	rtc_writel(rtc, RTC_PROT, RTC_PROT_UNLOCK1);
> +	rtc_write_trigger(rtc);
> +	rtc_writel(rtc, RTC_PROT, RTC_PROT_UNLOCK2);
> +	rtc_write_trigger(rtc);
> +}
> +
> +static irqreturn_t rtc_irq_handler_thread(int irq, void *data)
> +{
> +	struct mt2712_rtc *rtc = data;
> +	u16 irqsta, irqen;
> +
> +	irqsta = rtc_readl(rtc, RTC_IRQ_STA);
> +	if (irqsta & RTC_IRQ_STA_AL) {
> +		rtc_update_irq(rtc->rtc_dev, 1, RTC_IRQF | RTC_AF);
> +		irqen = irqsta & ~RTC_IRQ_EN_AL;
> +
> +		mutex_lock(&rtc->lock);

You should take rtc->rtc_dev->ops_lock. This would remove the need for
rtc->lock.

> +		rtc_writel(rtc, RTC_IRQ_EN, irqen);
> +		rtc_write_trigger(rtc);
> +		mutex_unlock(&rtc->lock);
> +		return IRQ_HANDLED;
> +	}
> +
> +	return IRQ_NONE;
> +}
> +
> +static void __mtk_rtc_read_time(struct mt2712_rtc *rtc,
> +				struct rtc_time *tm, int *sec)
> +{
> +	mutex_lock(&rtc->lock);
> +	tm->tm_sec  = rtc_readl(rtc, RTC_TC_SEC) & RTC_SEC_MASK;
> +	tm->tm_min  = rtc_readl(rtc, RTC_TC_MIN) & RTC_MIN_MASK;
> +	tm->tm_hour = rtc_readl(rtc, RTC_TC_HOU) & RTC_HOU_MASK;
> +	tm->tm_mday = rtc_readl(rtc, RTC_TC_DOM) & RTC_DOM_MASK;
> +	tm->tm_mon  = rtc_readl(rtc, RTC_TC_MTH) & RTC_MTH_MASK;
> +	tm->tm_year = rtc_readl(rtc, RTC_TC_YEA) & RTC_YEA_MASK;
> +
> +	*sec = rtc_readl(rtc, RTC_TC_SEC) & RTC_SEC_MASK;
> +	mutex_unlock(&rtc->lock);
> +}
> +
> +static int mtk_rtc_read_time(struct device *dev, struct rtc_time *tm)
> +{
> +	struct mt2712_rtc *rtc = dev_get_drvdata(dev);
> +	time64_t time;
> +	int days, sec;
> +
> +	do {
> +		__mtk_rtc_read_time(rtc, tm, &sec);
> +	} while (sec < tm->tm_sec);	/* SEC has carried */
> +
> +	/* HW register use 7 bits to store year data, minus
> +	 * RTC_MIN_YEAR_OFFSET brfore write year data to register, and plus
> +	 * RTC_MIN_YEAR_OFFSET back after read year from register
> +	 */
> +	tm->tm_year += RTC_MIN_YEAR_OFFSET;
> +

As stated before, do not do that, simply add 100.

> +	/* HW register start mon from one, but tm_mon start from zero. */
> +	tm->tm_mon--;
> +
> +	/* rtc_tm_to_time64 convert Gregorian date to seconds since
> +	 * 01-01-1970 00:00:00, and this date is Thursday
> +	 */
> +	time = rtc_tm_to_time64(tm);
> +	days = div_s64(time, 86400);
> +	tm->tm_wday = (days + 4) % 7;
> +

This is not necessary, nobody cares about tm_wday, if you don't have it,
do not set it.

> +	return 0;
> +}
> +
> +static int mtk_rtc_set_time(struct device *dev, struct rtc_time *tm)
> +{
> +	struct mt2712_rtc *rtc = dev_get_drvdata(dev);
> +
> +	mutex_lock(&rtc->lock);
> +	tm->tm_year -= RTC_MIN_YEAR_OFFSET;
> +	tm->tm_mon++;
> +
> +	rtc_writel(rtc, RTC_TC_SEC, tm->tm_sec  & RTC_SEC_MASK);
> +	rtc_writel(rtc, RTC_TC_MIN, tm->tm_min  & RTC_MIN_MASK);
> +	rtc_writel(rtc, RTC_TC_HOU, tm->tm_hour & RTC_HOU_MASK);
> +	rtc_writel(rtc, RTC_TC_DOM, tm->tm_mday & RTC_DOM_MASK);
> +	rtc_writel(rtc, RTC_TC_MTH, tm->tm_mon  & RTC_MTH_MASK);
> +	rtc_writel(rtc, RTC_TC_YEA, tm->tm_year & RTC_YEA_MASK);
> +
> +	rtc_write_trigger(rtc);
> +	mutex_unlock(&rtc->lock);
> +
> +	return 0;
> +}
> +
> +static int mtk_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alm)
> +{
> +	struct mt2712_rtc *rtc = dev_get_drvdata(dev);
> +	struct rtc_time *tm = &alm->time;
> +	u16 irqen;
> +
> +	mutex_lock(&rtc->lock);
> +	irqen = rtc_readl(rtc, RTC_IRQ_EN);
> +	alm->enabled = !!(irqen & RTC_IRQ_EN_AL);
> +
> +	tm->tm_sec  = rtc_readl(rtc, RTC_AL_SEC) & RTC_SEC_MASK;
> +	tm->tm_min  = rtc_readl(rtc, RTC_AL_MIN) & RTC_MIN_MASK;
> +	tm->tm_hour = rtc_readl(rtc, RTC_AL_HOU) & RTC_HOU_MASK;
> +	tm->tm_mday = rtc_readl(rtc, RTC_AL_DOM) & RTC_DOM_MASK;
> +	tm->tm_mon  = rtc_readl(rtc, RTC_AL_MTH) & RTC_MTH_MASK;
> +	tm->tm_year = rtc_readl(rtc, RTC_AL_YEA) & RTC_YEA_MASK;
> +
> +	tm->tm_year += RTC_MIN_YEAR_OFFSET;
> +	tm->tm_mon--;
> +	mutex_unlock(&rtc->lock);
> +
> +	return 0;
> +}
> +
> +static int mtk_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
> +{
> +	struct mt2712_rtc *rtc = dev_get_drvdata(dev);
> +	struct rtc_time *tm = &alm->time;
> +	u16 irqen;
> +
> +	dev_info(rtc->dev, "set al time = %04d-%02d-%02d %02d:%02d:%02d (%d)\n",

Do not use dev_info, dev_dbg is probably what you want here. Also, use
%ptR.

> +		 tm->tm_year + RTC_BASE_YEAR, tm->tm_mon + 1, tm->tm_mday,
> +		 tm->tm_hour, tm->tm_min, tm->tm_sec, alm->enabled);
> +
> +	tm->tm_year -= RTC_MIN_YEAR_OFFSET;
> +	tm->tm_mon++;
> +
> +	mutex_lock(&rtc->lock);

You probably need to disable the alarm before starting to modify the
registers.

> +	rtc_writel(rtc, RTC_AL_SEC,
> +		   (rtc_readl(rtc, RTC_AL_SEC) & ~(RTC_SEC_MASK)) |
> +		    (tm->tm_sec  & RTC_SEC_MASK));
> +	rtc_writel(rtc, RTC_AL_MIN,
> +		   (rtc_readl(rtc, RTC_AL_MIN) & ~(RTC_MIN_MASK)) |
> +		    (tm->tm_min  & RTC_MIN_MASK));
> +	rtc_writel(rtc, RTC_AL_HOU,
> +		   (rtc_readl(rtc, RTC_AL_HOU) & ~(RTC_HOU_MASK)) |
> +		    (tm->tm_hour & RTC_HOU_MASK));
> +	rtc_writel(rtc, RTC_AL_DOM,
> +		   (rtc_readl(rtc, RTC_AL_DOM) & ~(RTC_DOM_MASK)) |
> +		    (tm->tm_mday & RTC_DOM_MASK));
> +	rtc_writel(rtc, RTC_AL_MTH,
> +		   (rtc_readl(rtc, RTC_AL_MTH) & ~(RTC_MTH_MASK)) |
> +		    (tm->tm_mon  & RTC_MTH_MASK));
> +	rtc_writel(rtc, RTC_AL_YEA,
> +		   (rtc_readl(rtc, RTC_AL_YEA) & ~(RTC_YEA_MASK)) |
> +		    (tm->tm_year & RTC_YEA_MASK));
> +
> +	rtc_writel(rtc, RTC_AL_MASK, RTC_AL_MASK_DOW);	/* mask DOW */
> +
> +	if (alm->enabled) {
> +		irqen = rtc_readl(rtc, RTC_IRQ_EN) | RTC_IRQ_EN_ONESHOT_AL;
> +		rtc_writel(rtc, RTC_IRQ_EN, irqen);
> +	} else {
> +		irqen = rtc_readl(rtc, RTC_IRQ_EN) & ~(RTC_IRQ_EN_ONESHOT_AL);
> +		rtc_writel(rtc, RTC_IRQ_EN, irqen);
> +	}
> +	rtc_write_trigger(rtc);
> +	mutex_unlock(&rtc->lock);
> +
> +	return 0;
> +}
> +
> +static bool valid_rtc_time(struct mt2712_rtc *rtc)

This function is not necessary, see later.

> +{
> +	struct rtc_time tm;
> +	struct rtc_wkalrm alm;
> +
> +	mtk_rtc_read_time(rtc->dev, &tm);
> +	if (rtc_valid_tm(&tm))
> +		return false;
> +
> +	mtk_rtc_read_alarm(rtc->dev, &alm);
> +	if (rtc_valid_tm(&alm.time))
> +		return false;
> +
> +	return true;
> +}
> +
> +static void reset_rtc_time(struct mt2712_rtc *rtc)
> +{
> +	rtc_writel(rtc, RTC_TC_YEA, RTC_DEFAULT_YEA - RTC_MIN_YEAR);
> +	rtc_writel(rtc, RTC_TC_MTH, RTC_DEFAULT_MTH);
> +	rtc_writel(rtc, RTC_TC_DOM, RTC_DEFAULT_DOM);
> +	rtc_writel(rtc, RTC_TC_DOW, 1);
> +	rtc_writel(rtc, RTC_TC_HOU, 0);
> +	rtc_writel(rtc, RTC_TC_MIN, 0);
> +	rtc_writel(rtc, RTC_TC_SEC, 0);
> +
> +	rtc_writel(rtc, RTC_AL_YEA, 1970 - RTC_MIN_YEAR);
> +	rtc_writel(rtc, RTC_AL_MTH, 1);
> +	rtc_writel(rtc, RTC_AL_DOM, 1);
> +	rtc_writel(rtc, RTC_AL_DOW, 1);
> +	rtc_writel(rtc, RTC_AL_HOU, 0);
> +	rtc_writel(rtc, RTC_AL_MIN, 0);
> +	rtc_writel(rtc, RTC_AL_SEC, 0);
> +
> +	rtc_write_trigger(rtc);
> +}
> +
> +/* Init RTC register */
> +static void rtc_hw_init(struct mt2712_rtc *rtc)
> +{
> +	u32 p1, p2;
> +
> +	rtc_writel(rtc, RTC_BBPU, RTC_BBPU_KEY | RTC_BBPU_RELOAD);
> +
> +	rtc_writel(rtc, RTC_IRQ_EN,  0);

Are you sure you want to disable interrupts every time you reboot? I
guess the RTC has its own power domain and may be used across reboots.

> +	rtc_writel(rtc, RTC_IRQ_STA, 0);
> +	rtc_writel(rtc, RTC_CII_EN,  0);
> +	rtc_writel(rtc, RTC_AL_MASK, 0);
> +	/* necessary before set RTC_POWERKEY */
> +	rtc_writel(rtc, RTC_CON0, 0x4848);
> +	rtc_writel(rtc, RTC_CON1, 0x0048);
> +
> +	rtc_write_trigger(rtc);
> +
> +	rtc_readl(rtc, RTC_IRQ_STA);	/* read clear */
> +
> +	p1 = rtc_readl(rtc, RTC_POWERKEY1);
> +	p2 = rtc_readl(rtc, RTC_POWERKEY2);
> +	dev_info(rtc->dev, "%s rtc p1 is %x, p2 is %x!\n", __func__, p1, p2);

This debug message has to be removed.

> +
> +	 /* RTC need POWERKEY1/2 match, then goto normal work mode */
> +	rtc_writel(rtc, RTC_POWERKEY1, RTC_POWERKEY1_KEY);
> +	rtc_writel(rtc, RTC_POWERKEY2, RTC_POWERKEY2_KEY);
> +	rtc_write_trigger(rtc);
> +
> +	rtc_writeif_unlock(rtc);
> +
> +	/*
> +	 * register status was not correct,
> +	 * need set time and alarm to default
> +	 */
> +	if (p1 != RTC_POWERKEY1_KEY || p2 != RTC_POWERKEY2_KEY
> +	    || !valid_rtc_time(rtc)) {
> +		reset_rtc_time(rtc);

Do not do that. This is valuable information. If the time is invalid,
report it as such in read_time and read_alarm. Resetting the time here
will lead to more issues later (i.e. userspace is not able to know
whether the time is set correctly or not).

> +		dev_info(rtc->dev, "first boot init!\n");
> +	}
> +}
> +
> +static const struct rtc_class_ops mtk_rtc_ops = {
> +	.read_time	= mtk_rtc_read_time,
> +	.set_time	= mtk_rtc_set_time,
> +	.read_alarm	= mtk_rtc_read_alarm,
> +	.set_alarm	= mtk_rtc_set_alarm,
> +};
> +
> +static int mtk_rtc_probe(struct platform_device *pdev)
> +{
> +	struct resource *res;
> +	struct mt2712_rtc *rtc;
> +	int ret;
> +
> +	rtc = devm_kzalloc(&pdev->dev, sizeof(struct mt2712_rtc), GFP_KERNEL);
> +	if (!rtc)
> +		return -ENOMEM;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	rtc->base = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(rtc->base))
> +		return PTR_ERR(rtc->base);
> +
> +	rtc->irq = platform_get_irq(pdev, 0);
> +	if (rtc->irq < 0) {
> +		dev_err(&pdev->dev, "No IRQ resource\n");
> +		return rtc->irq;
> +	}
> +
> +	mutex_init(&rtc->lock);
> +	rtc->dev = &pdev->dev;
> +	platform_set_drvdata(pdev, rtc);
> +
> +	rtc->rtc_dev = devm_rtc_allocate_device(rtc->dev);
> +	if (IS_ERR(rtc->rtc_dev))
> +		return PTR_ERR(rtc->rtc_dev);
> +
> +	ret = request_threaded_irq(rtc->irq, NULL,

devm_request_threaded_irq would remove the need for out_free_irq and
mtk_rtc_remove().

> +				   rtc_irq_handler_thread,
> +				   IRQF_ONESHOT | IRQF_TRIGGER_LOW,
> +				   dev_name(rtc->dev), rtc);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to request alarm IRQ: %d: %d\n",
> +			rtc->irq, ret);
> +		return ret;
> +	}
> +
> +	/* rtc hw init */
> +	rtc_hw_init(rtc);
> +
> +	device_init_wakeup(&pdev->dev, true);
> +
> +	rtc->rtc_dev->ops = &mtk_rtc_ops;
> +
> +	ret = rtc_register_device(rtc->rtc_dev);
> +	if (ret) {
> +		dev_err(&pdev->dev, "register rtc device failed\n");
> +		goto out_free_irq;
> +	}
> +
> +	return 0;
> +
> +out_free_irq:
> +	free_irq(rtc->irq, rtc);
> +	return ret;
> +}
> +
> +static int mtk_rtc_remove(struct platform_device *pdev)
> +{
> +	struct mt2712_rtc *rtc = dev_get_drvdata(&pdev->dev);
> +
> +	free_irq(rtc->irq, rtc);
> +
> +	return 0;
> +}
> +
> +#ifdef CONFIG_PM_SLEEP
> +static int mt2712_rtc_suspend(struct device *dev)
> +{
> +	int wake_status = 0;
> +	struct mt2712_rtc *rtc = dev_get_drvdata(dev);
> +
> +	if (device_may_wakeup(dev)) {
> +		wake_status = enable_irq_wake(rtc->irq);
> +		if (!wake_status)
> +			rtc->irq_wake_enabled = true;
> +	}
> +
> +	return 0;
> +}
> +
> +static int mt2712_rtc_resume(struct device *dev)
> +{
> +	int wake_status = 0;
> +	struct mt2712_rtc *rtc = dev_get_drvdata(dev);
> +
> +	if (device_may_wakeup(dev) && rtc->irq_wake_enabled) {
> +		wake_status = disable_irq_wake(rtc->irq);
> +		if (!wake_status)
> +			rtc->irq_wake_enabled = false;
> +	}
> +
> +	return 0;
> +}
> +
> +static SIMPLE_DEV_PM_OPS(mt2712_pm_ops, mt2712_rtc_suspend,
> +			 mt2712_rtc_resume);
> +#endif
> +
> +static const struct of_device_id mt2712_rtc_of_match[] = {
> +	{ .compatible = "mediatek,mt2712-rtc", },
> +	{ },
> +};
> +
> +MODULE_DEVICE_TABLE(of, mt2712_rtc_of_match)
> +
> +static struct platform_driver mtk_rtc_driver = {
> +	.driver = {
> +		.name = MTK_RTC_DEV,
> +		.of_match_table = mt2712_rtc_of_match,
> +		.pm = &mt2712_pm_ops,
> +	},
> +	.probe  = mtk_rtc_probe,
> +	.remove = mtk_rtc_remove,
> +};
> +
> +module_platform_driver(mtk_rtc_driver);
> +
> +MODULE_DESCRIPTION("MediaTek MT2712 SoC based RTC Driver");
> +MODULE_AUTHOR("Ran Bi <ran.bi@mediatek.com>");
> +MODULE_LICENSE("GPL");
> -- 
> 2.18.0
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
