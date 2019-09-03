Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A04A63B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 10:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=izPwNRFqbpJbSpvVwfB9aKOx8AC6OTZ+Rjq4g5IJ2nM=; b=f5cvMbiH6L7iUP
	NfaG2bgDZFp5nJjw1tm19yRweswbwGs2X8lqR3muYuJ1hDcQVRanHK5WOwJHDKYxO3nhpuBwF0dUE
	tygsIjxoeizOdHjVLlGEW2z1O+8CzuUxmRLgdkEHWdMg+wG19KdSCU4I/jrUBfV1c9V6O1LGoU1bp
	lGXQVkN59BbWjTpd+sTG58JRWqYKVEMl7wjvUYVLg1sOvsB/tNraF8eGJHIWpRuhy4G9a+DLdApp6
	dCEncAfSqa/Ys5PODcz0ZWc3718sVQWP6S1fzkLDMPj/JygQGOChbeejBdedoIi8hPwi3Y2m0YmWq
	FpFsOELfTEi1kKDi8iyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i540G-0002LU-0Y; Tue, 03 Sep 2019 08:17:28 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5401-0002KZ-Oq
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 08:17:15 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 25DB920001B;
 Tue,  3 Sep 2019 08:16:58 +0000 (UTC)
Date: Tue, 3 Sep 2019 10:16:58 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Yizhuo Zhai <yzhai003@ucr.edu>
Subject: Re: [PATCH] clocksource: atmel-st: Variable sr in
 at91rm9200_timer_interrupt() could be uninitialized
Message-ID: <20190903081658.GK21922@piout.net>
References: <20190902222946.20548-1-yzhai003@ucr.edu>
 <20190902223650.GJ21922@piout.net>
 <CABvMjLRjeXAmhBwfZZPbmxdENq=FP9rR0Ld=T3veGXF6cjptxA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABvMjLRjeXAmhBwfZZPbmxdENq=FP9rR0Ld=T3veGXF6cjptxA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_011713_960738_8C1318C5 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Chengyu Song <csong@cs.ucr.edu>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Zhiyun Qian <zhiyunq@cs.ucr.edu>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/09/2019 22:56:48-0700, Yizhuo Zhai wrote:
> In function regmap_read(),  there're two places which could make the read fail.
> 
> First, if "reg" and  "map->reg_stride" are not aligned, then remap_read() will
> return -EINVAL without initialize variable "val".
> 

A quick look at of_syscon_register would show you that this is not
possible.

> Second, _regmap_read() could also fail and return error code if "val" is not
> initialized. The caller remap_read() returns the same error code, but
> at91rm9200_timer_interrupt() does not use this information.
> 

How would _regmap_read fail exactly?

> On Mon, Sep 2, 2019 at 3:37 PM Alexandre Belloni
> <alexandre.belloni@bootlin.com> wrote:
> >
> > On 02/09/2019 15:29:46-0700, Yizhuo wrote:
> > > Inside function at91rm9200_timer_interrupt(), variable sr could
> > > be uninitialized if regmap_read() fails. However, sr is used
> >
> > Could you elaborate on how this could fail?
> >
> > > to decide the control flow later in the if statement, which is
> > > potentially unsafe. We could check the return value of
> > > regmap_read() and print an error here.
> > >
> > > Signed-off-by: Yizhuo <yzhai003@ucr.edu>
> > > ---
> > >  drivers/clocksource/timer-atmel-st.c | 8 +++++++-
> > >  1 file changed, 7 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/clocksource/timer-atmel-st.c b/drivers/clocksource/timer-atmel-st.c
> > > index ab0aabfae5f0..061a3f27847e 100644
> > > --- a/drivers/clocksource/timer-atmel-st.c
> > > +++ b/drivers/clocksource/timer-atmel-st.c
> > > @@ -48,8 +48,14 @@ static inline unsigned long read_CRTR(void)
> > >  static irqreturn_t at91rm9200_timer_interrupt(int irq, void *dev_id)
> > >  {
> > >       u32 sr;
> > > +     int ret;
> > > +
> > > +     ret = regmap_read(regmap_st, AT91_ST_SR, &sr);
> > > +     if (ret) {
> > > +             pr_err("Fail to read AT91_ST_SR.\n");
> > > +             return ret;
> > > +     }
> > >
> > > -     regmap_read(regmap_st, AT91_ST_SR, &sr);
> > >       sr &= irqmask;
> > >
> > >       /*
> > > --
> > > 2.17.1
> > >
> >
> > --
> > Alexandre Belloni, Bootlin
> > Embedded Linux and Kernel engineering
> > https://bootlin.com
> 
> 
> 
> -- 
> Kind Regards,
> 
> Yizhuo Zhai
> 
> Computer Science, Graduate Student
> University of California, Riverside

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
