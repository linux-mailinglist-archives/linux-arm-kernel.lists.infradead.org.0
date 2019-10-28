Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E79AE7C76
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 23:41:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8wvjm797EK4WdCHC+rNHpZO4Vm0PakSpg2QqheQs5xw=; b=nMVZBxFyEKH02W
	xiRaQns24o6nrjkjc5VDQFDDui7CNlFo/NX0pF6UFeCAOYTY3mEd55C+shdpLU/vrA5C3hbyFcjDN
	7fk9mJM39hEHQ2c4bwZ/Tf/XFP7rW14SZuG+MtkmxPDRya6363JBUEFEp5rOgz0KYojCXJ2uSBaCm
	GC+by7NhR2ruGM4Yn5hTt1yCtEkNtM6U/tPoW5eXlC7N/OClVBUfxuImS6FWyBbaPOW9z3viPT462
	icwAzFOpNrGa7BGRFn8ipAHSBtN2KYYQcQb0kDJqyjeNN6EyOVYn/nGURzXQrdJ2YqA0xa9YaoSgR
	wXr6jjQwsHVxujV+77rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPDhE-0003YR-Ce; Mon, 28 Oct 2019 22:41:08 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPDgz-0003Xv-Hk
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 22:40:55 +0000
Received: by mail-vs1-xe43.google.com with SMTP id f8so1326520vsg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 15:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LbHWlc0+nebJGqRHkft0So8Qf87tbPWPZEk2OCB5L7k=;
 b=uoJWfdHBg4e2UJvDhf80dB6X0XM296yPXsBBn8t1aMMhnV0Pg6grSjQP1tA43WMskh
 XQL+YEgY9PWdYNA1/44uXNmZpLiQr74EbBMO0kd4dmU5U+IMpLd1+M+CgII+vKGdSZIH
 EDAKM20nlfrWO8zLEv5ssqfvicW1SKpoIuDbY7b2aCpX5r7Gz5u0Kl1CCXQKITvU3wRY
 LnXwkWgTpdCHvBd5UHWQAv9i0MUNv5KXskdLGafGW4I8h6IZ7tRji4sYIqBgdXXAhzlO
 NoHAqlkiHMqh86odCWrKAgptg42lB75m5wUj+Ri3GHzOgBlnKT6RxbEoY9O/Z0/Hyt0U
 P8FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LbHWlc0+nebJGqRHkft0So8Qf87tbPWPZEk2OCB5L7k=;
 b=Ynj9DiGgeSGpqvysPhy7c/AkjuqoH9h2TqB5fAI4fAp+2O+5JNlJ8lYqCmTeGYkK5U
 CIRJI/lNeYYs5XaEh1LTfTTvdVl0Pu1nZYiwevXX4u+jaF2fvUOYZLdSRWq18nAzemAj
 oJbZea6GamS0C8kTkk9acb/ERa3/IpvyIn92r4gZe1Lb5JAUeEs29m0eIWrU9MAdOYXu
 oR51pwX/N3Qb29CpjAcYu8UtFjQUmd6aywetCBZq4Bzdprh2xjVwIsri5utlTi49YZI6
 aj3psWuW/oiLmAQsmU15sOAdHjfcmDEtjBnYX+i/oFFu8B3HGLkE32ZH9GpNIsfWgiPd
 I/nw==
X-Gm-Message-State: APjAAAVu0J7Is/4p9466TlEbvFKzTLjImk687mNwILe2/baipIG7gwxG
 OX9Yxh/lx2XoNNpvV08dxfhEWCdWBDB8l6WXp9ITDA==
X-Google-Smtp-Source: APXvYqwvgrSKNvgD0SzVjUsiTobckOY2eSt0wr5gmUCcZBLHvL1zQq+ew7oqw1cZhVYfkSqkHRRumj6qS7VkI+zjNOo=
X-Received: by 2002:a67:fb5a:: with SMTP id e26mr6327260vsr.200.1572302452026; 
 Mon, 28 Oct 2019 15:40:52 -0700 (PDT)
MIME-Version: 1.0
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-13-ulf.hansson@linaro.org>
 <20191024163257.GC22036@bogus>
 <CAPDyKFpwrfHj-az5x5dW92VAxi887FgWW6GKhfPv_kuj14TDjQ@mail.gmail.com>
 <20191027023414.GE18111@e107533-lin.cambridge.arm.com>
In-Reply-To: <20191027023414.GE18111@e107533-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 28 Oct 2019 23:40:16 +0100
Message-ID: <CAPDyKFoyEY+bwYnekXV=DuL5rqbRVDPiYUUL0cTeVAa8xE7n4A@mail.gmail.com>
Subject: Re: [PATCH 12/13] cpuidle: psci: Manage runtime PM in the idle path
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_154053_615583_8992614B 
X-CRM114-Status: GOOD (  28.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 27 Oct 2019 at 03:34, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Oct 24, 2019 at 07:00:38PM +0200, Ulf Hansson wrote:
> > On Thu, 24 Oct 2019 at 18:33, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > On Thu, Oct 10, 2019 at 01:39:36PM +0200, Ulf Hansson wrote:
> > > > In case we have succeeded to attach a CPU to its PM domain, let's deploy
> > > > runtime PM support for the corresponding attached device, to allow the CPU
> > > > to be powered-managed accordingly.
> > > >
> > > > To set the triggering point for when runtime PM reference counting should
> > > > be done, let's store the index of deepest idle state for the CPU in the per
> > > > CPU struct. Then use this index to compare the selected idle state index
> > > > when entering idle, as to understand whether runtime PM reference counting
> > > > is needed or not.
> > > >
> > > > Note that, from the hierarchical point view, there may be good reasons to
> > > > do runtime PM reference counting even on shallower idle states, but at this
> > > > point this isn't supported, mainly due to limitations set by the generic PM
> > > > domain.
> > > >
> > > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > ---
> > > >  drivers/cpuidle/cpuidle-psci.c | 21 +++++++++++++++++++--
> > > >  1 file changed, 19 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > > > index 1510422c7a53..0919b40c1a85 100644
> > > > --- a/drivers/cpuidle/cpuidle-psci.c
> > > > +++ b/drivers/cpuidle/cpuidle-psci.c
> > > > @@ -16,6 +16,7 @@
> > > >  #include <linux/of.h>
> > > >  #include <linux/of_device.h>
> > > >  #include <linux/psci.h>
> > > > +#include <linux/pm_runtime.h>
> > > >  #include <linux/slab.h>
> > > >
> > > >  #include <asm/cpuidle.h>
> > > > @@ -25,6 +26,7 @@
> > > >
> > > >  struct psci_cpuidle_data {
> > > >       u32 *psci_states;
> > > > +     u32 rpm_state_id;
> > > >       struct device *dev;
> > > >  };
> > > >
> > > > @@ -50,14 +52,28 @@ static int psci_enter_idle_state(struct cpuidle_device *dev,
> > > >                               struct cpuidle_driver *drv, int idx)
> > > >  {
> > > >       int ret;
> > > > -     u32 *states = __this_cpu_read(psci_cpuidle_data.psci_states);
> > > > -     u32 state = psci_get_domain_state();
> > > > +     struct psci_cpuidle_data *data = this_cpu_ptr(&psci_cpuidle_data);
> > > > +     u32 *states = data->psci_states;
> > > > +     struct device *pd_dev = data->dev;
> > > > +     bool runtime_pm = (pd_dev && data->rpm_state_id == idx);
> > > > +     u32 state;
> > >
> > > Wonder if we can have separate psci_enter_idle_state for OSI mode so
> > > that all these runtime extra check can be reduced ? It will also make
> > > sure there's no additional latency for PC mode because of OSI.
> >
> > Good idea, that's the plan. See previous answer.
> >
> > Perhaps if I add a patch on top, implementing your suggestion, would
> > you be happy with that?
>
> No, I prefer to amend this itself to keep it easy to be able to bisect.

Alright!

So I explored this a little bit more - and it actually forced me to
re-order some of the patches in the series, but it seems to have
turned out well.

In the new approach I have taken, I haven't replaced the actual
callback for the idle state, but instead make an early decision in
psci_enter_idle_state(), based on one single read of a per CPU
variable/struct. This tell what path to go.

I am running some final test, but should be able to post a new version
tomorrow. Although, if you still don't think the new approach is good
enough, we can always invent a callback, that we can assign when the
CPU is attached to PM domain. In any case, you will have to tell what
you think, after I posted the new version, just wanted to give you a
heads up.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
