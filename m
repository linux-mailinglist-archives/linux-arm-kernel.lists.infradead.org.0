Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 338EC50925
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 12:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eizEkTrGPn2TGvXxR/iFjYfLbIioO5OXfP3KtS6GZC0=; b=cfvQv8/3bGKXMX
	dx2HrtQPorTWIIlajbzkR7Fwmbct/kLDAYH17OUGPiG20QyHUx6Ifb/bbpYmy/VUzN2gZyUq5iPoy
	bk7X5K5LvxlS4avqCN60tJ+cjQv0b5YBbq9XmKi899YTuw3ngexF4pVrhESRpJAATGQJteryI4bVE
	mBqBdl9VpD/3hc6OUR0HZBy+uUalS5Q2PLx9x9Xzdlnz8ZXvIa1icXllyDRBrl+5BF/R7MfNozcRC
	mGd0oxwJP4w34GohpgMzxW97w81r5wZehVM+mlvJxdrErHEX+SA40UcbQ9lj08+Z5CLCx/3Z8gMdi
	c70pzewAoNpxjN86in1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfMRH-0003yW-Ag; Mon, 24 Jun 2019 10:43:07 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfMR3-0003xK-Tc
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 10:42:55 +0000
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id BE47B100005;
 Mon, 24 Jun 2019 10:42:38 +0000 (UTC)
Date: Mon, 24 Jun 2019 12:42:34 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 0/3] rtc: pcf8563: Fix unhandled interrupt storm
Message-ID: <20190624104234.GG3133@piout.net>
References: <20190604042337.26129-1-wens@kernel.org>
 <20190620162220.GA23549@piout.net>
 <CAGb2v67sf3L9zH9Li6tF3xunQ4-isoodBLQmSv2VJtAj6hS7Ug@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v67sf3L9zH9Li6tF3xunQ4-isoodBLQmSv2VJtAj6hS7Ug@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_034254_118177_DFC36724 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Vincent Donnefort <vdonnefort@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/06/2019 18:34:29+0800, Chen-Yu Tsai wrote:
> On Fri, Jun 21, 2019 at 12:22 AM Alexandre Belloni
> <alexandre.belloni@bootlin.com> wrote:
> >
> > On 04/06/2019 12:23:34+0800, Chen-Yu Tsai wrote:
> > > From: Chen-Yu Tsai <wens@csie.org>
> > >
> > > Hi everyone,
> > >
> > > While bringing up my Pine H64, I encountered an interrupt storm from the
> > > pcf8563 RTC. The RTC chip's interrupt line is shared with the PMIC, and
> > > was not properly added to the device tree. Also, the driver was using an
> > > trigger method incompatible with the PMIC, preventing the interrupt line
> > > from being shared. Last, the driver only clears and masks the alarm
> > > interrupt, while leaving the timer interrupt untouched. This is a
> > > problem if previous systems left the timer interrupt enabled, and there
> > > was an interrupt pending.
> > >
> > > This patch set fixes all three issues, one per patch.
> > >
> > > Please have a look.
> > >
> >
> > I don't have that particular RTC so I can't test but the interrupt
> > handling in pcf8563_irq seems problematic too. I guess the RTC will only
> > trigger once per second because the call to pcf8563_set_alarm_mode will
> > explicitely leave the alarm enabled. The core doesn't really care but it
> > doesn't really expect the alarm to stay enabled. i.e. It will ensure the
> > alarm is enabled again after setting it when necessary. I think it would
> > be safer to simply clear both AIE and AF here. Could you test?
> 
> Yeah, that bit looked weird to me as well. And actually the alarm doesn't
> go down to the second, only the minute.
> 
> Is there a test program I can use to test the alarms?
> 

Sure, tools/testing/selftests/rtc/rtctest.c if you use a recent enough
version, it will test minute boundaries.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
