Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EAC11A159
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 03:29:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eSqmhgvgWdbzRZjgMs8Ae4USAyOa85C6eU0CYN4yY4g=; b=Ed9EzOYVo/ml7q
	JkSw3AmDcWQUyTsgmjxXtJ6F0eFiHYcqnBUTPoDe1hru4atBwp+DeIEmHdXeUN3u6pBWsf2PThEn6
	XzwAN69pGnENJiITk7lzG/U/Kk/qVJW2OF9HNT7vkMnI1AANcI0m6PSC/26NDh4zcJsPAMkICJFaE
	VbpGJ3rAvNvlfksfxOUHXLx+aa9xS3Nbu1M6zrB3DZgv4MH95zup+vkhQY1q+q5pW06G9B/7b9E6B
	qVLsFqLJ0cOthmPG+N435WAhb9howZw6FfnRvypkG82EgWOUBIZs2GG8JxSqB+EIWn7SjlBXoRX0B
	T9bo1oIC20RXHQYQ5eNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ierl9-0002Tp-QN; Wed, 11 Dec 2019 02:29:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ierl1-0002TO-KE; Wed, 11 Dec 2019 02:29:45 +0000
X-UUID: e11fed2ff9194371927630e7d46ffd43-20191210
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=rhfdqi2eRRPOmkQEKUGmuq54EZ73uOUii6nqn78dZ8M=; 
 b=q50bYmGYPizR+0jps0AvO/uOh8KtsxOOYaIgX10598imLcEZpN6cXQfF6TQuBAyS0jEsnOiK986JSxCyf2pLOC/tzMvO568Obf+hYDAblDvwVcFHe1iPILfiA7SVOtxL2Y9NK7gKhU2R3drDXwyLHha1CEDDxomlz1hhMETlSHY=;
X-UUID: e11fed2ff9194371927630e7d46ffd43-20191210
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1098883894; Tue, 10 Dec 2019 18:29:38 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Dec 2019 18:20:34 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 10:19:26 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 11 Dec 2019 10:19:35 +0800
Message-ID: <1576030774.24528.2.camel@mtksdaap41>
Subject: Re: [PATCH v6 5/6] rtc: mt6397: fix alarm register overwrite
From: Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Date: Wed, 11 Dec 2019 10:19:34 +0800
In-Reply-To: <20191210164139.GT1463890@piout.net>
References: <1575639183-17606-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1575639183-17606-6-git-send-email-hsin-hsiung.wang@mediatek.com>
 <20191210164139.GT1463890@piout.net>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_182943_675481_9602A797 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, 2019-12-10 at 17:41 +0100, Alexandre Belloni wrote:
> Hi,
> 
> On 06/12/2019 21:33:02+0800, Hsin-Hsiung Wang wrote:
> > From: Ran Bi <ran.bi@mediatek.com>
> > 
> > Alarm registers high byte was reserved for other functions.
> > This add mask in alarm registers operation functions.
> > This also fix error condition in interrupt handler.
> > 
> > Fixes: fc2979118f3f ("rtc: mediatek: Add MT6397 RTC driver")
> > 
> > Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> > Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> > ---
> >  drivers/rtc/rtc-mt6397.c | 47 +++++++++++++++++++++++++++++++++--------------
> >  1 file changed, 33 insertions(+), 14 deletions(-)
> > 
> 
> Can you rebase that one on top of v5.5-rc1 soon? I'll include it in -fixes.
> 
Sure, I will send the next version later.

> > diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> > index 704229e..b216bdc 100644
> > --- a/drivers/rtc/rtc-mt6397.c
> > +++ b/drivers/rtc/rtc-mt6397.c
> > @@ -47,6 +47,14 @@
> >  
> >  #define RTC_AL_SEC		0x0018
> >  
> > +#define RTC_AL_SEC_MASK		0x003f
> > +#define RTC_AL_MIN_MASK		0x003f
> > +#define RTC_AL_HOU_MASK		0x001f
> > +#define RTC_AL_DOM_MASK		0x001f
> > +#define RTC_AL_DOW_MASK		0x0007
> > +#define RTC_AL_MTH_MASK		0x000f
> > +#define RTC_AL_YEA_MASK		0x007f
> > +
> >  #define RTC_PDN2		0x002e
> >  #define RTC_PDN2_PWRON_ALARM	BIT(4)
> >  
> > @@ -103,7 +111,7 @@ static irqreturn_t mtk_rtc_irq_handler_thread(int irq, void *data)
> >  		irqen = irqsta & ~RTC_IRQ_EN_AL;
> >  		mutex_lock(&rtc->lock);
> >  		if (regmap_write(rtc->regmap, rtc->addr_base + RTC_IRQ_EN,
> > -				 irqen) < 0)
> > +				 irqen) == 0)
> >  			mtk_rtc_write_trigger(rtc);
> >  		mutex_unlock(&rtc->lock);
> >  
> > @@ -225,12 +233,12 @@ static int mtk_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alm)
> >  	alm->pending = !!(pdn2 & RTC_PDN2_PWRON_ALARM);
> >  	mutex_unlock(&rtc->lock);
> >  
> > -	tm->tm_sec = data[RTC_OFFSET_SEC];
> > -	tm->tm_min = data[RTC_OFFSET_MIN];
> > -	tm->tm_hour = data[RTC_OFFSET_HOUR];
> > -	tm->tm_mday = data[RTC_OFFSET_DOM];
> > -	tm->tm_mon = data[RTC_OFFSET_MTH];
> > -	tm->tm_year = data[RTC_OFFSET_YEAR];
> > +	tm->tm_sec = data[RTC_OFFSET_SEC] & RTC_AL_SEC_MASK;
> > +	tm->tm_min = data[RTC_OFFSET_MIN] & RTC_AL_MIN_MASK;
> > +	tm->tm_hour = data[RTC_OFFSET_HOUR] & RTC_AL_HOU_MASK;
> > +	tm->tm_mday = data[RTC_OFFSET_DOM] & RTC_AL_DOM_MASK;
> > +	tm->tm_mon = data[RTC_OFFSET_MTH] & RTC_AL_MTH_MASK;
> > +	tm->tm_year = data[RTC_OFFSET_YEAR] & RTC_AL_YEA_MASK;
> >  
> >  	tm->tm_year += RTC_MIN_YEAR_OFFSET;
> >  	tm->tm_mon--;
> > @@ -251,14 +259,25 @@ static int mtk_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
> >  	tm->tm_year -= RTC_MIN_YEAR_OFFSET;
> >  	tm->tm_mon++;
> >  
> > -	data[RTC_OFFSET_SEC] = tm->tm_sec;
> > -	data[RTC_OFFSET_MIN] = tm->tm_min;
> > -	data[RTC_OFFSET_HOUR] = tm->tm_hour;
> > -	data[RTC_OFFSET_DOM] = tm->tm_mday;
> > -	data[RTC_OFFSET_MTH] = tm->tm_mon;
> > -	data[RTC_OFFSET_YEAR] = tm->tm_year;
> > -
> >  	mutex_lock(&rtc->lock);
> > +	ret = regmap_bulk_read(rtc->regmap, rtc->addr_base + RTC_AL_SEC,
> > +			       data, RTC_OFFSET_COUNT);
> > +	if (ret < 0)
> > +		goto exit;
> > +
> > +	data[RTC_OFFSET_SEC] = ((data[RTC_OFFSET_SEC] & ~(RTC_AL_SEC_MASK)) |
> > +				(tm->tm_sec & RTC_AL_SEC_MASK));
> > +	data[RTC_OFFSET_MIN] = ((data[RTC_OFFSET_MIN] & ~(RTC_AL_MIN_MASK)) |
> > +				(tm->tm_min & RTC_AL_MIN_MASK));
> > +	data[RTC_OFFSET_HOUR] = ((data[RTC_OFFSET_HOUR] & ~(RTC_AL_HOU_MASK)) |
> > +				(tm->tm_hour & RTC_AL_HOU_MASK));
> > +	data[RTC_OFFSET_DOM] = ((data[RTC_OFFSET_DOM] & ~(RTC_AL_DOM_MASK)) |
> > +				(tm->tm_mday & RTC_AL_DOM_MASK));
> > +	data[RTC_OFFSET_MTH] = ((data[RTC_OFFSET_MTH] & ~(RTC_AL_MTH_MASK)) |
> > +				(tm->tm_mon & RTC_AL_MTH_MASK));
> > +	data[RTC_OFFSET_YEAR] = ((data[RTC_OFFSET_YEAR] & ~(RTC_AL_YEA_MASK)) |
> > +				(tm->tm_year & RTC_AL_YEA_MASK));
> > +
> >  	if (alm->enabled) {
> >  		ret = regmap_bulk_write(rtc->regmap,
> >  					rtc->addr_base + RTC_AL_SEC,
> > -- 
> > 2.6.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
