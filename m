Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69522716AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 13:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nLwKycOyh32UwGfNc1ln6W7uOn/zd6kUiSunZkxo11A=; b=OPDq2uYJdqtwMU
	U9Q74lAydMVckI822Ef+HE9gPjXc0172peQDtS273nw0RGxb4bsHF0WNTIm/iNA4xbEDNYuToiPwJ
	GggGpN0me6WxzAOWsNyVinl+fhdBsDEn1KYZQ7x0tslR487s7j63015X36tT6UX6P2AM7lfTJLr10
	VhC5PIX7wmGP6a7Y54AlFRkk93p8EUFy5TH0LxO3Xc2Te+dg7GsfZMCXPF1/IhGWXEzn1hMoNa75x
	Pzrvv9Ev39sRhfdxpbJrS8LWBGQtM/T79n006ofy5IM07gQ0aI0Q3hGx+d7rUN5vzPN9QH7St+alS
	d4dIhZnrdXRqASPLLQtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpsWx-0006tf-Cm; Tue, 23 Jul 2019 11:00:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsWY-0006UH-LN
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 11:00:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E6D6F337;
 Tue, 23 Jul 2019 04:00:01 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C820A3F71A;
 Tue, 23 Jul 2019 04:00:00 -0700 (PDT)
Date: Tue, 23 Jul 2019 11:59:58 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 11/11] firmware: arm_scmi: Use asynchronous
 CLOCK_RATE_SET when possible
Message-ID: <20190723105958.GB2815@e107155-lin>
References: <20190708154730.16643-1-sudeep.holla@arm.com>
 <20190708154730.16643-12-sudeep.holla@arm.com>
 <20190722212954.8924D21900@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722212954.8924D21900@mail.kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_040002_763811_0FEF560B 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-kernel@vger.kernel.org,
 Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 02:29:53PM -0700, Stephen Boyd wrote:
> Quoting Sudeep Holla (2019-07-08 08:47:30)
> > CLOCK_PROTOCOL_ATTRIBUTES provides attributes to indicate the maximum
> > number of pending asynchronous clock rate changes supported by the
> > platform. If it's non-zero, then we should be able to use asynchronous
> > clock rate set for any clocks until the maximum limit is reached.
> >
> > Keeping the current count of pending asynchronous clock set rate
> > requests, we can decide if we can you asynchronous request for the
>
> This last part of the sentence doesn't read properly. Please rewrite.
>

Will fix.

> > incoming/new request.
> >
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  drivers/firmware/arm_scmi/clock.c | 21 ++++++++++++++++++---
> >  1 file changed, 18 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
> > index dd215bd11a58..70044b7c812e 100644
> > --- a/drivers/firmware/arm_scmi/clock.c
> > +++ b/drivers/firmware/arm_scmi/clock.c
> > @@ -221,21 +222,35 @@ static int scmi_clock_rate_set(const struct scmi_handle *handle, u32 clk_id,
> >                                u64 rate)
> >  {
> >         int ret;
> > +       u32 flags = 0;
> >         struct scmi_xfer *t;
> >         struct scmi_clock_set_rate *cfg;
> > +       struct clock_info *ci = handle->clk_priv;
> >
> >         ret = scmi_xfer_get_init(handle, CLOCK_RATE_SET, SCMI_PROTOCOL_CLOCK,
> >                                  sizeof(*cfg), 0, &t);
> >         if (ret)
> >                 return ret;
> >
> > +       if (ci->max_async_req) {
> > +               if (atomic_inc_return(&ci->cur_async_req) < ci->max_async_req)
> > +                       flags |= CLOCK_SET_ASYNC;
> > +               else
> > +                       atomic_dec(&ci->cur_async_req);
>
> Can this be combined with the atomic_dec() below and done after either
> transfer?
>

Yes but cleaner.

> > +       }
> > +
> >         cfg = t->tx.buf;
> > -       cfg->flags = cpu_to_le32(0);
> > +       cfg->flags = cpu_to_le32(flags);
> >         cfg->id = cpu_to_le32(clk_id);
> >         cfg->value_low = cpu_to_le32(rate & 0xffffffff);
> >         cfg->value_high = cpu_to_le32(rate >> 32);
> >
> > -       ret = scmi_do_xfer(handle, t);
> > +       if (flags & CLOCK_SET_ASYNC) {
> > +               ret = scmi_do_xfer_with_response(handle, t);
> > +               atomic_dec(&ci->cur_async_req);
> > +       } else {
> > +               ret = scmi_do_xfer(handle, t);
> > +       }
>
> I mean putting the atomic_dec() here.
>

Understood and done locally, will post as v2.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
