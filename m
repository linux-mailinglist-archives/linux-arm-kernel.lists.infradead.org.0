Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE833993E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 14:35:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ozNB8mbk+/zSWMqC8fOYZH55GuMXg9ri3knQuEyY80=; b=mXcvQ64p0X5f6f
	VRsLLcLVgqlpgkSqgdqzkvkz+PJ0m86FLCaurcCCwWLfEC1C0BOznDK/XJStbSSmeyYjT0v4KQuuC
	+UuU5CXWrpCbpNv1ClB2V8eJGAO3GpyDPoVM1758XaZtwCo4uv+pyBVBiAs+5JSwywsICfbwe7u2D
	CHog5ClmFq/c5LilWa3zKBV2FjjMus6AgwE4CnSAJDwSh8KEXVUkCTA/BVJIIGU6cUAYoMx5z+LNC
	2Rjd/RXa4cYJYRKwkHe5IujL1cE5OOa3fGrNiRxck721cl3cF8l4mivhQWPx3s+VJ0bOj6mHvr0MP
	kFoqHNh8vndoiJS+85hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0mIy-00031L-Hw; Thu, 22 Aug 2019 12:35:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mII-0002od-Uu; Thu, 22 Aug 2019 12:34:24 +0000
X-UUID: d35aa58e28d24a4296f345c73a3e3137-20190822
X-UUID: d35aa58e28d24a4296f345c73a3e3137-20190822
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ran.bi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1064778111; Thu, 22 Aug 2019 04:34:14 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 05:34:13 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs07n2.mediatek.inc
 (172.21.101.141) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 22 Aug 2019 20:34:11 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 22 Aug 2019 20:34:10 +0800
Message-ID: <1566477254.12318.41.camel@mhfsdcap03>
Subject: Re: [PATCH v2 2/4] rtc: Add support for the MediaTek MT2712 RTC
From: Ran Bi <ran.bi@mediatek.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Date: Thu, 22 Aug 2019 20:34:14 +0800
In-Reply-To: <20190820201744.GZ3545@piout.net>
References: <20190801110122.26834-1-ran.bi@mediatek.com>
 <20190801110122.26834-3-ran.bi@mediatek.com>
 <20190820201744.GZ3545@piout.net>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_053423_003455_FA1837BF 
X-CRM114-Status: GOOD (  22.54  )
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
Cc: Mark
 Rutland <mark.rutland@arm.com>, Alessandro Zummo <a.zummo@towertech.it>,
 YT Shen <yt.shen@mediatek.com>, Flora
 Fu <flora.fu@mediatek.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Eddie Huang <eddie.huang@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

> > +
> > +#define MTK_RTC_DEV		KBUILD_MODNAME
> 
> You probably shouldn't do that and have a static string for the driver
> name. I probably doesn't matter much though because DT is used to probe
> the driver.
> 

Will change it at next patch.

> > +/* we map HW YEAR 0 to 2000 because 2000 is the leap year */
> > +#define MT2712_MIN_YEAR		2000
> > +#define MT2712_BASE_YEAR	1900
> > +#define MT2712_MIN_YEAR_OFFSET	(MT2712_MIN_YEAR - MT2712_BASE_YEAR)
> > +#define MT2712_MAX_YEAR_OFFSET	(MT2712_MIN_YEAR_OFFSET + 127)
> > +
> 
> All those defines are unecessary, see below.
> 

Will change it at next patch.

> > +struct mt2712_rtc {
> > +	struct device		*dev;
> 
> Looking at the code closely, it seems this is only used for debug and
> error messages. Maybe you could use rtc_dev->dev instead.
> 

Will change it at next patch.

> > +	mutex_lock(&rtc->rtc_dev->ops_lock);
> > +
> > +	irqsta = mt2712_readl(rtc, MT2712_IRQ_STA);
> 
> Do you have to lock that read? Is the register cleared on read?
> 

Yes, this register is read clear register.

> > +	do {
> > +		__mt2712_rtc_read_time(rtc, tm, &sec);
> > +	} while (sec < tm->tm_sec);	/* SEC has carried */
> 
> Shouldn't that be while (tm->tm_sec < sec)?
> 

In __mt2712_rtc_read_time function, we read tm->tm_sec before read sec.
Sometimes we can meet situation like "tm->tm_sec == 59" and "sec == 0".
It means that TC_SEC has carried and we need to reload the tm struct. I
suppose it was correct that using "while (sec < tm->tm_sec)"

> > +
> > +	/* HW register use 7 bits to store year data, minus
> > +	 * MT2712_MIN_YEAR_OFFSET brfore write year data to register, and plus
> > +	 * MT2712_MIN_YEAR_OFFSET back after read year from register
> > +	 */
> > +	tm->tm_year += MT2712_MIN_YEAR_OFFSET;
> 
> Simply add 100 in __mt2712_rtc_read_time
> 

Will change it at next patch.

> > +
> > +	/* HW register start mon from one, but tm_mon start from zero. */
> > +	tm->tm_mon--;
> > +
> 
> You can also do that in __mt2712_rtc_read_time.
> 

Will change it at next patch.

> > +	if (rtc_valid_tm(tm)) {
> 
> This check is unnecessary, the validity is always checked by the core.
> 

Will remove this at next patch.

> > +	if (tm->tm_year > MT2712_MAX_YEAR_OFFSET) {
> > +		dev_dbg(rtc->dev, "Set year %d out of range. (%d - %d)\n",
> > +			1900 + tm->tm_year, 1900 + MT2712_MIN_YEAR_OFFSET,
> > +			1900 + MT2712_MAX_YEAR_OFFSET);
> > +		return -EINVAL;
> > +	}
> 
> This check is unnecessary, see below.
> 

Will change it at next patch.

> > +
> > +	tm->tm_year -= MT2712_MIN_YEAR_OFFSET;
> > +	tm->tm_mon++;
> 
> You should probably avoid modifying tm, move the substraction and
> addition in the mt2712_writel calls.
> 

Will change it at next patch.


> > +	if (tm->tm_year > MT2712_MAX_YEAR_OFFSET) {
> > +		dev_dbg(rtc->dev, "Set year %d out of range. (%d - %d)\n",
> > +			1900 + tm->tm_year, 1900 + MT2712_MIN_YEAR_OFFSET,
> > +			1900 + MT2712_MAX_YEAR_OFFSET);
> > +		return -EINVAL;
> > +	}
> > +
> 
> Unnecessary check.
> 

Will change it at next patch.

> > +	p1 = mt2712_readl(rtc, MT2712_POWERKEY1);
> > +	p2 = mt2712_readl(rtc, MT2712_POWERKEY2);
> > +	if (p1 != MT2712_POWERKEY1_KEY || p2 != MT2712_POWERKEY2_KEY)
> > +		dev_dbg(rtc->dev, "powerkey not set (lost power)\n");
> > +
> 
> This info is valuable, you should check that when reading the time and
> return -EINVAL if power was lost.
> 

Will change it at next patch.

> 
> > +	/* RTC need POWERKEY1/2 match, then goto normal work mode */
> > +	mt2712_writel(rtc, MT2712_POWERKEY1, MT2712_POWERKEY1_KEY);
> > +	mt2712_writel(rtc, MT2712_POWERKEY2, MT2712_POWERKEY2_KEY);
> 
> This should be written when setting the time after power was lost.
> 

I suppose we can move this into mt2712_rtc_read_time function's "if
(p1 != MT2712_POWERKEY1_KEY || p2 != MT2712_POWERKEY2_KEY)" condition
which will be added at next patch. We need additional flag to mark this
condition or another if condition in mt2712_rtc_set_time fucntion if we
put these code in mt2712_rtc_set_time function.

> > +static const struct rtc_class_ops mt2712_rtc_ops = {
> > +	.read_time	= mt2712_rtc_read_time,
> > +	.set_time	= mt2712_rtc_set_time,
> > +	.read_alarm	= mt2712_rtc_read_alarm,
> > +	.set_alarm	= mt2712_rtc_set_alarm,
> 
> For proper operations, you should also provide the .alarm_irq_enable
> callback.
> 

Will change it at next patch.

> > +	rtc->rtc_dev->ops = &mt2712_rtc_ops;
> 
> If you set the range properly here using rtc_dev->range_min and
> rtc_dev->range_max, then the core will be able to do range checking and
> will also take care of the year offset/windowing calculations instead of
> having to hardcode that in the driver.
> 

Will change it at next patch.

Best Regards,
Ran



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
