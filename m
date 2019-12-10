Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E83118DE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 17:42:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGUW5asSbMRk2hOimhbvgxXXkX33QE0TVHLrX+ghi1g=; b=L/OgEYVRHjgC4Q
	hl5fBM65eOJibNELkJHYpsTlGaQZwe3tO1u5SaQUe5ssVTQOmeXHaEns/VUyZaMlXX4BcI2rLLBaV
	/uiIfoiaod4ry1t397d5HAt9GCJ0UU9IRzNUm88/s4Bp71D2MfvRhOQKePivOfiE9lSTrm41aBNLz
	uib5EvBkD//A0taE04bd6Au1qqlezhhgs8Hem8tCjHhzcDRINQU1GfHgMVWIDB4E3pt7PjrXXS2K3
	BYb+DtNq+3IiB+TGD0rtSMJ0kPU+DpNlQxCzAQQ8zIul9M4S6PxiBTJvoSb9gVKctA1CqFFHEFE/H
	lkdLXKZLk5OuRYfuQXhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieiad-0004L2-6K; Tue, 10 Dec 2019 16:42:23 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieiaE-00048P-98; Tue, 10 Dec 2019 16:42:00 +0000
X-Originating-IP: 90.182.112.136
Received: from localhost (136.112.broadband15.iol.cz [90.182.112.136])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id B3FC01BF21B;
 Tue, 10 Dec 2019 16:41:42 +0000 (UTC)
Date: Tue, 10 Dec 2019 17:41:39 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v6 5/6] rtc: mt6397: fix alarm register overwrite
Message-ID: <20191210164139.GT1463890@piout.net>
References: <1575639183-17606-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1575639183-17606-6-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575639183-17606-6-git-send-email-hsin-hsiung.wang@mediatek.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_084158_593581_D36FCD3E 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Eddie Huang <eddie.huang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 06/12/2019 21:33:02+0800, Hsin-Hsiung Wang wrote:
> From: Ran Bi <ran.bi@mediatek.com>
> 
> Alarm registers high byte was reserved for other functions.
> This add mask in alarm registers operation functions.
> This also fix error condition in interrupt handler.
> 
> Fixes: fc2979118f3f ("rtc: mediatek: Add MT6397 RTC driver")
> 
> Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---
>  drivers/rtc/rtc-mt6397.c | 47 +++++++++++++++++++++++++++++++++--------------
>  1 file changed, 33 insertions(+), 14 deletions(-)
> 

Can you rebase that one on top of v5.5-rc1 soon? I'll include it in -fixes.

> diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> index 704229e..b216bdc 100644
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

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
