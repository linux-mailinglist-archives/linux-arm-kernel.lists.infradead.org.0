Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C675310916
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 16:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=axvjSOYRpVYrfcI+5uRq5u9wkEQoL0UgYz1jfqufdvM=; b=UWu0dOWGmhvZyH
	mg8O6Fov8k+z8jptCyC0mLg7lYBytRJfAO2A1oEjh20Cvkg86+uEaW8rXfXTTXx7DBxhrj5hR+gqE
	88muAx5hJEqSWkrE37PqD8YvlbsMHThgKbQGG4j/tA5LCRIyCfq+fDH7oxv23z3xWIB7wd1jXJ+X0
	8Yo2IuOjOg9cj2CT+raXhBmQchqxPJO5m86eUj3Eo+QRYdM3TFvW4f2i7bHCm4kScxEWGgxN0e8+1
	4NW6lZI+fh/ss5nux0XWN4lpqoQ/dvaFUp8HC0dgUWpcbaAD4I1nvBHOzqvL/rTkzvvkqX2W7M5Vy
	pVeaGmBgxAC4L0o7yEKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLqBO-0004Y0-RY; Wed, 01 May 2019 14:26:02 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLqBJ-0004Xj-9q
 for linux-arm-kernel@bombadil.infradead.org; Wed, 01 May 2019 14:25:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TU+W6p6AQXL5aukf0RfewkscgySIDjs4Tf74P8JUQ0w=; b=fSL5ni3jfFlWjVBAUBCyQcfTV
 +oCsYS0iia5sl+7ayy9qdqC+s8HnhIjlHHQZCPwDFi+UpI5YszOeIiMOTQFOBD0Tfn6JbYnsg4rZX
 JULp4lWfBIBYr8n2fZC3aXk+wyVKRpt7+r9Y5a2QOuyOgIMf0TMi1wQiqU4xDyQFfFr9ubPvTEPYd
 jGvUlule1bkTX9cZ7jeOPKy0agRDDTjRRTgm+G4Wm8KZt6yxkSQJCHT69BRQsSQltbYh/uwiwPwgS
 avaFHvSyYTMi+UBJpOaVJ5yW2szC0c3onc/3kWDwykCAtbkUdv8D2wt2tgeHqSR+A4DaUNG7jh/MH
 M2FB48R4g==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLqBF-0000rf-H3
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 14:25:55 +0000
X-Originating-IP: 90.66.53.80
Received: from localhost (lfbn-1-3034-80.w90-66.abo.wanadoo.fr [90.66.53.80])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 046E3FF803;
 Wed,  1 May 2019 14:25:13 +0000 (UTC)
Date: Wed, 1 May 2019 16:25:13 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Trent Piepho <tpiepho@impinj.com>
Subject: Re: [PATCH] rtc: st-lpc: remove unnecessary check
Message-ID: <20190501142513.GK11339@piout.net>
References: <20190430201834.12634-1-alexandre.belloni@bootlin.com>
 <1556663479.31309.36.camel@impinj.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556663479.31309.36.camel@impinj.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_102553_687436_9FF761F7 
X-CRM114-Status: GOOD (  23.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "patrice.chotard@st.com" <patrice.chotard@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/04/2019 22:31:19+0000, Trent Piepho wrote:
> On Tue, 2019-04-30 at 22:18 +0200, Alexandre Belloni wrote:
> > The RTC core already ensures the alarm is set to a time in the future, it
> > is not necessary to check again in the driver.
> 
> My reading of the rtc core code is that it checks if the alarm is in
> the future *twice* before handing off the set call to the driver, which
> possibly checks a 3rd time (as seen here).
> 
> However, all these checks are done *before* setting the alarm.  It
> still possible to have a race and set the alarm after the time has
> already passed, in which case the alarm will never fire.
> 

I agree the core need to handle that possible race better and this is
something I'm planning to work on.

> The way to fix the race would be to have the driver check the alarm
> *after* setting it.  In precisely this order, do these steps:
> 
> 1. Set alarm in RTC, to Talarm
> 2. Get time from RTC, as Tcurrent
> 3. Get alarm status from RTC
> 
> If Talarm < Tcurrent, alarm was set to future time, no error

This should be Talarm > Tcurrent, right?

> Else
>   If status == fired, alarm was set and has since fired, no error
>   Else status == not fired, alarm was set in past, EINVAL
> 
> This should be race free.
> 
> 
> >  
> > -	/* Invalid alarm time */
> > -	if (now_secs > alarm_secs)
> > -		return -EINVAL;
> > -
> >  	memcpy(&rtc->alarm, t, sizeof(struct rtc_wkalrm));
> >  
> >  	/* Now many secs to fire */
>         alarm_secs -= now_secs;
>         lpa = (unsigned long long)alarm_secs * rtc->clkrate;
> 
> While it's true the time wouldn't normally be in past, it still races,
> as describe above. In that case, the math here underflows alarm_secs,
> so it probably still makes sense to check.

I can't believe you can possibly have more than one second between the
check in the core and the check in the driver, it doesn't make much
sense to check, even in the current state of the core.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
