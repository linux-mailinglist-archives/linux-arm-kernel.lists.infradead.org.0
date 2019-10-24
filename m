Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B857E37F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:34:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=weosVPt3B4YySvgQ+OSLavIFZET95aMNVjKRfL4pslM=; b=HkD+5+DkDp7EY+
	EWPnc12Jsnhaq46HUt/99t9Qix3wk57x3RTjiOGewoVh9+QBQiBR3ZjUQLpXQAlvqqmsNs8tM+SwB
	intmRi//0SgSoALwDvSppaskwYzlARYwqCnnDWNFr8scjX+/UUcfdo+3Aq5oGZnTYAxNi7EnaSDU1
	3+kgAtr+MIa4CKKYt32KnKOJYDQDmUA2pjPb0r4cNNUgQK+rhgOB+SUBSzUNjNWwCpnoOWVZzad8t
	rW2fwuOy8TFcghZJVZ96wmVr7/ghOUHLOoiMbXsGl2lEUz5smqsnz25pJ8vud1GjAcbW29QfiQlUk
	xK9pjHSGnBeTQWAvhoxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNg3b-0002b8-86; Thu, 24 Oct 2019 16:33:51 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg3O-0002aP-5C
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:33:39 +0000
Received: by mail-ua1-x944.google.com with SMTP id r25so7358974uam.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AuLGn9MbFeqhUIgzYi5XtxY3pZzXl0hLfc2cMacvOHM=;
 b=P4XElw3788YW/xZYNWr8N2sWy6aV8YTTJ9gVN7DpcxhYEYlDI+Du4GzfxPzOh/tH0s
 iYbfSAw/u4A/CqgxxVLRZvTKHQfhhldeVCnatkX5JHqDJNUcucakM9IsEJYAtD0dekwi
 EVsomqHxbcTtJT/ZfeUyxgw3KmGLUYiSQT9IYnSZ517NpEHS946575PHYAtXET4YUhSw
 zEN8+vEdiLzZkzyxnGZMgL7/R99xE6Ls4dGfPC0QQSAf3Vx5riF2x7A055L3lvmwFeIH
 JXPMmM4wyfI2r1C2EzmjjEqLMCV6qosXd1NilO8jLJTnbnM5WCu435/z8tZgFbNfM1QX
 OlfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AuLGn9MbFeqhUIgzYi5XtxY3pZzXl0hLfc2cMacvOHM=;
 b=gSGgB71ic+5nn/Leno/qX2SxF3HyPTf7OEIL2cwtiRxV8Q6cltpzp75PYL+GFR3C+d
 hjM1Vej/2McHPrqnPaC3nqJ1JiBVoeyYMMqYj3cNocZtW6ql0ICoU/L+1mBOEPD1JlGv
 W8+jHl6w8r0T/4JYoLEK7of+cqCIdi/her9tc20yZ9H/OkPIyFvD3S8oRCLIKLhry2P0
 r6xav1ScSmxhIoBB1BpXSB3p7kR1eK2ZnwarCJgbBhOSpQmvjhvEplkHobIel8xinNXl
 mmhcwHGZTpWF2WLkUwDHJXK/wV2D/acSnrnEpqt3bbigI5R/vIhX8/5PJbgMjy9oF3vC
 ulhw==
X-Gm-Message-State: APjAAAWcNXN/UVBjIVon58zMWDTgWzYSkx2Gchq8VL8+aLmXWe6OoYMH
 +fu66pyBWpaE1YZLY7gBaBsCpoKP4YxjNb3FWqu+kg==
X-Google-Smtp-Source: APXvYqy74Ut4sOP+Ng6xq9ZzOQxeKxc4qIBLgzZIiVNUBqbGsiMXdqL/G0WIfNquxGH2s7Jym2dcXG7hBKr/03cccbw=
X-Received: by 2002:ab0:7644:: with SMTP id s4mr6353812uaq.15.1571934816730;
 Thu, 24 Oct 2019 09:33:36 -0700 (PDT)
MIME-Version: 1.0
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-7-ulf.hansson@linaro.org> <20191024153621.GE11467@bogus>
In-Reply-To: <20191024153621.GE11467@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 24 Oct 2019 18:33:00 +0200
Message-ID: <CAPDyKFrPqnNENH2bWG=unEWRxLdC0BQEOU9-tYAT175sX7Z7vw@mail.gmail.com>
Subject: Re: [PATCH 06/13] cpuidle: psci: Simplify OF parsing of CPU idle
 state nodes
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093338_202699_56CCD838 
X-CRM114-Status: GOOD (  24.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, 24 Oct 2019 at 17:36, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Oct 10, 2019 at 01:39:30PM +0200, Ulf Hansson wrote:
> > Iterating through the idle state nodes in DT, to find out the number of
> > states that needs to be allocated is unnecessary, as it has already been
> > done from dt_init_idle_driver(). Therefore, drop the iteration and use the
> > number we already have at hand.
> >
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >  drivers/cpuidle/cpuidle-psci.c | 33 ++++++++++++++++-----------------
> >  1 file changed, 16 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > index 2e91c8d6c211..1195a1056139 100644
> > --- a/drivers/cpuidle/cpuidle-psci.c
> > +++ b/drivers/cpuidle/cpuidle-psci.c
> > @@ -73,28 +73,22 @@ static int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
> >       return 0;
> >  }
> >
> > -static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
> > +static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
> > +                             unsigned int state_nodes, int cpu)
>
> [super nit] Too much in the beginning of the patch to not notice this ;)
> May need some '(' alignment here and other places in general.

I was trying to find a consistent way of doing it, according to the
existing code, but I failed. :-)

Two cases exist where calls/functions crosses one line, one use solely
tabs and the other uses tab+whitespace to align "exactly". You are
saying that you prefer the latter? If so, I can adopt to that.

>
> >  {
> > -     int i, ret = 0, count = 0;
> > +     int i, ret = 0;
> >       u32 *psci_states;
> >       struct device_node *state_node;
> >
> > -     /* Count idle states */
> > -     while ((state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
> > -                                           count))) {
> > -             count++;
> > -             of_node_put(state_node);
> > -     }
> > -
> > -     if (!count)
> > -             return -ENODEV;
> > -
> > -     psci_states = kcalloc(count, sizeof(*psci_states), GFP_KERNEL);
> > +     psci_states = kcalloc(state_nodes, sizeof(*psci_states), GFP_KERNEL);
> >       if (!psci_states)
> >               return -ENOMEM;
> >
> > -     for (i = 0; i < count; i++) {
> > +     for (i = 0; i < state_nodes; i++) {
> >               state_node = of_parse_phandle(cpu_node, "cpu-idle-states", i);
>
> Can we move above to use of_get_cpu_state_node ? Since it also handles
> domain-idle-states.
>
> > +             if (!state_node)
> > +                     break;
> > +
> >               ret = psci_dt_parse_state_node(state_node, &psci_states[i]);
> >               of_node_put(state_node);
> >
> > @@ -104,6 +98,11 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
> >               pr_debug("psci-power-state %#x index %d\n", psci_states[i], i);
> >       }
> >
> > +     if (i != state_nodes) {
> > +             ret = -ENODEV;
> > +             goto free_mem;
> > +     }
> > +
> >       /* Idle states parsed correctly, initialize per-cpu pointer */
> >       per_cpu(psci_power_state, cpu) = psci_states;
> >       return 0;
> > @@ -113,7 +112,7 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
> >       return ret;
> >  }
> >
> > -static __init int psci_cpu_init_idle(unsigned int cpu)
> > +static __init int psci_cpu_init_idle(unsigned int cpu, unsigned int state_nodes)
>
> Does it make sense to rename it as state_count or something similar ?

Let me check to see if it makes sense to change it. Rebasing on top of
your recently submitted patch, might tell better.

> And it may need + 1 once we add wfi also as entry as suggested by
> Lorenzo.

Yep.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
