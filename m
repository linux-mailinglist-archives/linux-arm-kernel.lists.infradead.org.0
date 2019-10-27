Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C9CE603F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 03:24:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LUDpES/FXyRDNGeAaMyF5DLLwc1Rl5fGWhJxX22/iNg=; b=JyR+mxFmw2b3qf
	IGiGGJC2EBtnKG56gk+QCcXkdBFq1EyqqGoPBfQzB50cOeH4wKd5gromHHNietMEin73+DS/t9vYD
	0o2h9IoRFPYQa/xYdSfiwpVVQqlEsReq/6CHoW2IN8VEMM4ZEOd8INkolIMOhk+ubej6y/htJ2aqx
	ca8GWKNlY/Pv5vEXeb91qcNYxMxGGuI/e5RUAxhJxfd9ePkw1eHH4DaL4f+pC0E5DIstJ6L/5KrHc
	JAU3Wcz05VIgYQ3CZAzBOOvXBRft1HlwTOwQxdcD1OijkHC/2MYzSgV2xBx2fRL3l9oRLza8QnlNz
	yM/j5N4PwbBF7DWDQXrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOYEY-0002TS-Ec; Sun, 27 Oct 2019 02:24:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOYEK-0002Sv-W1
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 02:24:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BFEEA1FB;
 Sat, 26 Oct 2019 19:24:30 -0700 (PDT)
Received: from e107533-lin.cambridge.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 965063F6C4;
 Sat, 26 Oct 2019 19:24:24 -0700 (PDT)
Date: Sun, 27 Oct 2019 02:24:20 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 06/13] cpuidle: psci: Simplify OF parsing of CPU idle
 state nodes
Message-ID: <20191027022420.GB18111@e107533-lin.cambridge.arm.com>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-7-ulf.hansson@linaro.org>
 <20191024153621.GE11467@bogus>
 <CAPDyKFrPqnNENH2bWG=unEWRxLdC0BQEOU9-tYAT175sX7Z7vw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFrPqnNENH2bWG=unEWRxLdC0BQEOU9-tYAT175sX7Z7vw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_192433_117811_211E5479 
X-CRM114-Status: GOOD (  27.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Thu, Oct 24, 2019 at 06:33:00PM +0200, Ulf Hansson wrote:
> On Thu, 24 Oct 2019 at 17:36, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Thu, Oct 10, 2019 at 01:39:30PM +0200, Ulf Hansson wrote:
> > > Iterating through the idle state nodes in DT, to find out the number of
> > > states that needs to be allocated is unnecessary, as it has already been
> > > done from dt_init_idle_driver(). Therefore, drop the iteration and use the
> > > number we already have at hand.
> > >
> > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > ---
> > >  drivers/cpuidle/cpuidle-psci.c | 33 ++++++++++++++++-----------------
> > >  1 file changed, 16 insertions(+), 17 deletions(-)
> > >
> > > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > > index 2e91c8d6c211..1195a1056139 100644
> > > --- a/drivers/cpuidle/cpuidle-psci.c
> > > +++ b/drivers/cpuidle/cpuidle-psci.c
> > > @@ -73,28 +73,22 @@ static int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
> > >       return 0;
> > >  }
> > >
> > > -static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
> > > +static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
> > > +                             unsigned int state_nodes, int cpu)
> >
> > [super nit] Too much in the beginning of the patch to not notice this ;)
> > May need some '(' alignment here and other places in general.
>
> I was trying to find a consistent way of doing it, according to the
> existing code, but I failed. :-)
>
> Two cases exist where calls/functions crosses one line, one use solely
> tabs and the other uses tab+whitespace to align "exactly". You are
> saying that you prefer the latter? If so, I can adopt to that.
>

I am not too picky on these, just found it in the beginning of the patch
and hence mentioned it. If it was in the middle, I am sure I wouldn't have
noticed.

> >
> > >  {
> > > -     int i, ret = 0, count = 0;
> > > +     int i, ret = 0;
> > >       u32 *psci_states;
> > >       struct device_node *state_node;
> > >
> > > -     /* Count idle states */
> > > -     while ((state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
> > > -                                           count))) {
> > > -             count++;
> > > -             of_node_put(state_node);
> > > -     }
> > > -
> > > -     if (!count)
> > > -             return -ENODEV;
> > > -
> > > -     psci_states = kcalloc(count, sizeof(*psci_states), GFP_KERNEL);
> > > +     psci_states = kcalloc(state_nodes, sizeof(*psci_states), GFP_KERNEL);
> > >       if (!psci_states)
> > >               return -ENOMEM;
> > >
> > > -     for (i = 0; i < count; i++) {
> > > +     for (i = 0; i < state_nodes; i++) {
> > >               state_node = of_parse_phandle(cpu_node, "cpu-idle-states", i);
> >
> > Can we move above to use of_get_cpu_state_node ? Since it also handles
> > domain-idle-states.
> >
> > > +             if (!state_node)
> > > +                     break;
> > > +
> > >               ret = psci_dt_parse_state_node(state_node, &psci_states[i]);
> > >               of_node_put(state_node);
> > >
> > > @@ -104,6 +98,11 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
> > >               pr_debug("psci-power-state %#x index %d\n", psci_states[i], i);
> > >       }
> > >
> > > +     if (i != state_nodes) {
> > > +             ret = -ENODEV;
> > > +             goto free_mem;
> > > +     }
> > > +
> > >       /* Idle states parsed correctly, initialize per-cpu pointer */
> > >       per_cpu(psci_power_state, cpu) = psci_states;
> > >       return 0;
> > > @@ -113,7 +112,7 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
> > >       return ret;
> > >  }
> > >
> > > -static __init int psci_cpu_init_idle(unsigned int cpu)
> > > +static __init int psci_cpu_init_idle(unsigned int cpu, unsigned int state_nodes)
> >
> > Does it make sense to rename it as state_count or something similar ?
>
> Let me check to see if it makes sense to change it. Rebasing on top of
> your recently submitted patch, might tell better.
>

Sure.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
