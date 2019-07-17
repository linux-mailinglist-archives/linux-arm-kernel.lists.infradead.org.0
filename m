Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3576B8A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RV8rcJiUnM1wML2y3ZrHnOJLYhFGSi1Lv+WkcJopavA=; b=jtiGafY9fp+rff
	8eyO3jUJ+Mwxtqk1ZczaBNb1u2P7enNUMrPwqRS0sVYMop8fF9pfwY9t0JkqVFkduKqNIAHQQyap2
	4P5xVmqdwI6UFwgOEqV+G2CBNwirn8E9VRXFy9AcwXsu0bobSBXu7LwDllaXoQXuNLLgxo966hVz+
	ABMvhgktddkOlKJzVx4kc18wpnhKulPHP5Hjsu/FD8MVWKMitQGQfvnVDwz31zS1d2hJxCIwFVXzG
	p+EU1s1CTvB5AOPaa/B/7bq9DUWFwZEGYu796rcyg8+QqUoLOX20ox6+DDmLpogLPobmrIDdD6x3H
	uqcDTBX7Fg4MIriFYuCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfil-00019k-Ch; Wed, 17 Jul 2019 08:55:31 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfiR-00018Q-85; Wed, 17 Jul 2019 08:55:12 +0000
X-UUID: fc7fe7acab0643daa93c479415081329-20190717
X-UUID: fc7fe7acab0643daa93c479415081329-20190717
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ran.bi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 541437607; Wed, 17 Jul 2019 00:55:05 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 17 Jul 2019 01:55:04 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs08n2.mediatek.inc
 (172.21.101.56) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 17 Jul 2019 16:54:55 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 17 Jul 2019 16:54:54 +0800
Message-ID: <1563353694.19945.33.camel@mhfsdcap03>
Subject: Re: [PATCH 2/3] rtc: Add support for the MediaTek MT2712 RTC
From: Ran Bi <ran.bi@mediatek.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Date: Wed, 17 Jul 2019 16:54:54 +0800
In-Reply-To: <20190713211231.GD4732@piout.net>
References: <20190702032120.16539-1-ran.bi@mediatek.com>
 <20190702032120.16539-3-ran.bi@mediatek.com>
 <20190713211231.GD4732@piout.net>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: E81E13F116E4248978BEE1A56221D66CD0A4F944914214DEE6C47B20D48F8A212000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_015511_309020_5EBFE9E7 
X-CRM114-Status: GOOD (  24.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Rutland <mark.rutland@arm.com>, Alessandro Zummo <a.zummo@towertech.it>, Flora
 Fu <flora.fu@mediatek.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, YT Shen <yt.shen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Belloni,

On Sat, 2019-07-13 at 23:12 +0200, Alexandre Belloni wrote:

> > +#define RTC_BBPU		0x0000
> > +#define RTC_BBPU_CLRPKY		(1U << 4)
> 
> Please use BIT(). Also, I don't feel that the RTC prefix is adding any
> value. MT2712 would be a better choice here.
> 

Will change to MT2712 at next patch.

> > +
> > +/* we map HW YEAR 0 to 1968 not 1970 because 2000 is the leap year */
> > +#define RTC_MIN_YEAR		1968
> > +#define RTC_BASE_YEAR		1900
> > +#define RTC_MIN_YEAR_OFFSET	(RTC_MIN_YEAR - RTC_BASE_YEAR)
> 
> Do not do that. If this RTC range starts in 200, ths is what the driver
> has to support, you should not care about dates before 2000. Note that
> the RTC core can still properly shift the range if it is absolutely
> necessary.
> 

Do we need to care about default alarm date 1970-01-01? Or can I just
set it to 2000-01-01?

> > +
> > +static inline u32 rtc_readl(struct mt2712_rtc *rtc, u32 reg)
> 
> Please use a more descriptive prefix than just rtc_.
> 

Do you mean it's better to use prefix "mt2712_rtc_"?

> > +		mutex_lock(&rtc->lock);
> 
> You should take rtc->rtc_dev->ops_lock. This would remove the need for
> rtc->lock.
> 

Will change it at next patch.

> > +	tm->tm_year += RTC_MIN_YEAR_OFFSET;
> > +
> 
> As stated before, do not do that, simply add 100.
> 

Will change it at next patch.

> > +	/* rtc_tm_to_time64 convert Gregorian date to seconds since
> > +	 * 01-01-1970 00:00:00, and this date is Thursday
> > +	 */
> > +	time = rtc_tm_to_time64(tm);
> > +	days = div_s64(time, 86400);
> > +	tm->tm_wday = (days + 4) % 7;
> > +
> 
> This is not necessary, nobody cares about tm_wday, if you don't have it,
> do not set it.
> 

Will remove this part at next patch.

> > +	dev_info(rtc->dev, "set al time = %04d-%02d-%02d %02d:%02d:%02d (%d)\n",
> 
> Do not use dev_info, dev_dbg is probably what you want here. Also, use
> %ptR.
> 

Will change it at next patch.

> > +	mutex_lock(&rtc->lock);
> 
> You probably need to disable the alarm before starting to modify the
> registers.
> 

Will change it at next patch.

> > +static bool valid_rtc_time(struct mt2712_rtc *rtc)
> 
> This function is not necessary, see later.
> 

Will change it at next patch.

> > +	rtc_writel(rtc, RTC_IRQ_EN,  0);
> 
> Are you sure you want to disable interrupts every time you reboot? I
> guess the RTC has its own power domain and may be used across reboots.
> 

Will remove this at next patch.

> > +	dev_info(rtc->dev, "%s rtc p1 is %x, p2 is %x!\n", __func__, p1, p2);
> 
> This debug message has to be removed.
> 

Will remove this at next patch.

> > +
> > +	/*
> > +	 * register status was not correct,
> > +	 * need set time and alarm to default
> > +	 */
> > +	if (p1 != RTC_POWERKEY1_KEY || p2 != RTC_POWERKEY2_KEY
> > +	    || !valid_rtc_time(rtc)) {
> > +		reset_rtc_time(rtc);
> 
> Do not do that. This is valuable information. If the time is invalid,
> report it as such in read_time and read_alarm. Resetting the time here
> will lead to more issues later (i.e. userspace is not able to know
> whether the time is set correctly or not).
> 

When RTC's power run out, RTC will lost it's registers value and time
data at next boot up. We even cannot know what the date and time it
shows. We want to check this state here and set a default RTC date. Do
you think it's no need here and the date should be set by system?

> > +	ret = request_threaded_irq(rtc->irq, NULL,
> 
> devm_request_threaded_irq would remove the need for out_free_irq and
> mtk_rtc_remove().
> 

Will change it at next patch. And will remove mtk_rtc_remove() function.

--
Ran Bi, MediaTek



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
