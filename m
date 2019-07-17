Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D04D16B8D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 11:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fPP8eHt/0ngy958vREMcD2Q1FPXQoxf8MzqSOqehENo=; b=QYGVQlXgYF9z8H
	uTaObnjM28GvmttUBrnrA0e/79HlqjcPpn6AST1vgX1QIoUZNFFEqA/tfR0CaPWsBD6uMy8+8908z
	WhUZ4hmCGYUI2iRiKpO472x2Ymwg3ySHSptDeJxd/ssmvT/5bF1ZbYxwVBf2YSy0XJnVI56Ak3KjK
	Zo7yDc0ShS7QORO7G9NW6oayP4htWGlYNMfEJYZsQYOprkSoJfcSsfVxy885XrF9Preh7fhC86Zo1
	ERO3F8o94lwhUmY7pgtghSlcMn9iVLq8ME5LC7auAEaTfIVjNYo9PX+urAzBaQQYmhyaZTV31TWN8
	+Jiseaffxk7m8I0awpKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfuK-0006XK-LC; Wed, 17 Jul 2019 09:07:28 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfu1-0006Wk-Ra; Wed, 17 Jul 2019 09:07:12 +0000
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 34A23240008;
 Wed, 17 Jul 2019 09:06:55 +0000 (UTC)
Date: Wed, 17 Jul 2019 11:06:55 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Ran Bi <ran.bi@mediatek.com>
Subject: Re: [PATCH 2/3] rtc: Add support for the MediaTek MT2712 RTC
Message-ID: <20190717090655.GA21823@piout.net>
References: <20190702032120.16539-1-ran.bi@mediatek.com>
 <20190702032120.16539-3-ran.bi@mediatek.com>
 <20190713211231.GD4732@piout.net>
 <1563353694.19945.33.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563353694.19945.33.camel@mhfsdcap03>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_020710_055441_E3AB4ED4 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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

On 17/07/2019 16:54:54+0800, Ran Bi wrote:
> > > +
> > > +/* we map HW YEAR 0 to 1968 not 1970 because 2000 is the leap year */
> > > +#define RTC_MIN_YEAR		1968
> > > +#define RTC_BASE_YEAR		1900
> > > +#define RTC_MIN_YEAR_OFFSET	(RTC_MIN_YEAR - RTC_BASE_YEAR)
> > 
> > Do not do that. If this RTC range starts in 200, ths is what the driver
> > has to support, you should not care about dates before 2000. Note that
> > the RTC core can still properly shift the range if it is absolutely
> > necessary.
> > 
> 
> Do we need to care about default alarm date 1970-01-01? Or can I just
> set it to 2000-01-01?
> 

You never have to set a default value. It doesn't add any value versus
an unknown value.

> > > +
> > > +static inline u32 rtc_readl(struct mt2712_rtc *rtc, u32 reg)
> > 
> > Please use a more descriptive prefix than just rtc_.
> > 
> 
> Do you mean it's better to use prefix "mt2712_rtc_"?
> 

Yes.

> > > +
> > > +	/*
> > > +	 * register status was not correct,
> > > +	 * need set time and alarm to default
> > > +	 */
> > > +	if (p1 != RTC_POWERKEY1_KEY || p2 != RTC_POWERKEY2_KEY
> > > +	    || !valid_rtc_time(rtc)) {
> > > +		reset_rtc_time(rtc);
> > 
> > Do not do that. This is valuable information. If the time is invalid,
> > report it as such in read_time and read_alarm. Resetting the time here
> > will lead to more issues later (i.e. userspace is not able to know
> > whether the time is set correctly or not).
> > 
> 
> When RTC's power run out, RTC will lost it's registers value and time
> data at next boot up. We even cannot know what the date and time it
> shows. We want to check this state here and set a default RTC date. Do
> you think it's no need here and the date should be set by system?
> 

If I understand correctly, the POWERKEY register will lose their value.
This means that you know that the time is incorrect. instead of setting
it to a default value and losing that valuable information, simply check
for that in read_time and return EINVAL in that case. then on the next
set_time invocation, you can set the POWERKEY registers and set the time
to a known value.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
