Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8468131A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 09:25:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jf3ldOcQ5r4XWkf6aMVRpWjS54XXEpYk0usqx8DX/Bw=; b=RSq6JHXvwj4nEg
	lR6FCBtSzDjLCHng6B022e80agAc+IEOtyU6P1q5Ahyih+lX1a42niU/8zBWeltF4HLm5xAaIllze
	HpJoofDmreLoADxUd9S7j04CGFS6s3Gw3Zd1hiTonJ3Fgk9Yvc5I8VIj3hID7S+cOVEl4EW1qcr12
	8CJF6zNDzkeoJW/IkcfAYphC2w1VqAIN73jbaH6QHuQW9d94yiWtIjc7Ovx3kUBfX9RCSw19tF2Yj
	HMFz8X4ztstCOxhT+uTphc0HwQ2itMzo81/YH5ad7rIblebZQ+rJPIA3Q4GkMyE1avuOavJPZqbm9
	eZlV5XLB5wA6cqmU4mNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huXN3-0006nh-Rt; Mon, 05 Aug 2019 07:25:30 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huXMU-0006nL-C7; Mon, 05 Aug 2019 07:24:56 +0000
Received: from localhost (hy283-1-82-246-155-60.fbx.proxad.net [82.246.155.60])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id F266D100009;
 Mon,  5 Aug 2019 07:24:39 +0000 (UTC)
Date: Mon, 5 Aug 2019 09:24:36 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v4 09/10] rtc: mt6397: fix alarm register overwrite
Message-ID: <20190805072436.GC3600@piout.net>
References: <1564982518-32163-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1564982518-32163-10-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564982518-32163-10-git-send-email-hsin-hsiung.wang@mediatek.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_002454_826208_F5676D72 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
 Alessandro Zummo <a.zummo@towertech.it>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Allison Randal <allison@lohutok.net>,
 linux-rtc@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>, Kate Stewart <kstewart@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/08/2019 13:21:57+0800, Hsin-Hsiung Wang wrote:
> From: Ran Bi <ran.bi@mediatek.com>
> 
> Alarm registers high byte was reserved for other functions.
> This add mask in alarm registers operation functions.
> This also fix error condition in interrupt handler.
> 
> Fixes: fc2979118f3f ("rtc: mediatek: Add MT6397 RTC driver")
> 
> Signed-off-by: Ran Bi <ran.bi@mediatek.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  drivers/rtc/rtc-mt6397.c | 47 +++++++++++++++++++++++++++++++++--------------
>  1 file changed, 33 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> index b46ed4d..828def7 100644
> --- a/drivers/rtc/rtc-mt6397.c
> +++ b/drivers/rtc/rtc-mt6397.c
> @@ -47,6 +47,14 @@
>  
>  #define RTC_AL_SEC		0x0018
>  
> +#define RTC_AL_SEC_MASK		0x003f
> +#define RTC_AL_MIN_MASK		0x003f
> +#define RTC_AL_HOU_MASK		0x001f
> +#define RTC_AL_DOM_MASK		0x001f
> +#define RTC_AL_DOW_MASK		0x0007
> +#define RTC_AL_MTH_MASK		0x000f
> +#define RTC_AL_YEA_MASK		0x007f
> +
>  #define RTC_PDN2		0x002e
>  #define RTC_PDN2_PWRON_ALARM	BIT(4)
>  
> @@ -103,7 +111,7 @@ static irqreturn_t mtk_rtc_irq_handler_thread(int irq, void *data)
>  		irqen = irqsta & ~RTC_IRQ_EN_AL;
>  		mutex_lock(&rtc->lock);
>  		if (regmap_write(rtc->regmap, rtc->addr_base + RTC_IRQ_EN,
> -				 irqen) < 0)
> +				 irqen) == 0)
>  			mtk_rtc_write_trigger(rtc);
>  		mutex_unlock(&rtc->lock);
>  
> @@ -225,12 +233,12 @@ static int mtk_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alm)
>  	alm->pending = !!(pdn2 & RTC_PDN2_PWRON_ALARM);
>  	mutex_unlock(&rtc->lock);
>  
> -	tm->tm_sec = data[RTC_OFFSET_SEC];
> -	tm->tm_min = data[RTC_OFFSET_MIN];
> -	tm->tm_hour = data[RTC_OFFSET_HOUR];
> -	tm->tm_mday = data[RTC_OFFSET_DOM];
> -	tm->tm_mon = data[RTC_OFFSET_MTH];
> -	tm->tm_year = data[RTC_OFFSET_YEAR];
> +	tm->tm_sec = data[RTC_OFFSET_SEC] & RTC_AL_SEC_MASK;
> +	tm->tm_min = data[RTC_OFFSET_MIN] & RTC_AL_MIN_MASK;
> +	tm->tm_hour = data[RTC_OFFSET_HOUR] & RTC_AL_HOU_MASK;
> +	tm->tm_mday = data[RTC_OFFSET_DOM] & RTC_AL_DOM_MASK;
> +	tm->tm_mon = data[RTC_OFFSET_MTH] & RTC_AL_MTH_MASK;
> +	tm->tm_year = data[RTC_OFFSET_YEAR] & RTC_AL_YEA_MASK;
>  
>  	tm->tm_year += RTC_MIN_YEAR_OFFSET;
>  	tm->tm_mon--;
> @@ -251,14 +259,25 @@ static int mtk_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
>  	tm->tm_year -= RTC_MIN_YEAR_OFFSET;
>  	tm->tm_mon++;
>  
> -	data[RTC_OFFSET_SEC] = tm->tm_sec;
> -	data[RTC_OFFSET_MIN] = tm->tm_min;
> -	data[RTC_OFFSET_HOUR] = tm->tm_hour;
> -	data[RTC_OFFSET_DOM] = tm->tm_mday;
> -	data[RTC_OFFSET_MTH] = tm->tm_mon;
> -	data[RTC_OFFSET_YEAR] = tm->tm_year;
> -
>  	mutex_lock(&rtc->lock);
> +	ret = regmap_bulk_read(rtc->regmap, rtc->addr_base + RTC_AL_SEC,
> +			       data, RTC_OFFSET_COUNT);
> +	if (ret < 0)
> +		goto exit;
> +
> +	data[RTC_OFFSET_SEC] = ((data[RTC_OFFSET_SEC] & ~(RTC_AL_SEC_MASK)) |
> +				(tm->tm_sec & RTC_AL_SEC_MASK));
> +	data[RTC_OFFSET_MIN] = ((data[RTC_OFFSET_MIN] & ~(RTC_AL_MIN_MASK)) |
> +				(tm->tm_min & RTC_AL_MIN_MASK));
> +	data[RTC_OFFSET_HOUR] = ((data[RTC_OFFSET_HOUR] & ~(RTC_AL_HOU_MASK)) |
> +				(tm->tm_hour & RTC_AL_HOU_MASK));
> +	data[RTC_OFFSET_DOM] = ((data[RTC_OFFSET_DOM] & ~(RTC_AL_DOM_MASK)) |
> +				(tm->tm_mday & RTC_AL_DOM_MASK));
> +	data[RTC_OFFSET_MTH] = ((data[RTC_OFFSET_MTH] & ~(RTC_AL_MTH_MASK)) |
> +				(tm->tm_mon & RTC_AL_MTH_MASK));
> +	data[RTC_OFFSET_YEAR] = ((data[RTC_OFFSET_YEAR] & ~(RTC_AL_YEA_MASK)) |
> +				(tm->tm_year & RTC_AL_YEA_MASK));
> +
>  	if (alm->enabled) {
>  		ret = regmap_bulk_write(rtc->regmap,
>  					rtc->addr_base + RTC_AL_SEC,
> -- 
> 2.6.4
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
