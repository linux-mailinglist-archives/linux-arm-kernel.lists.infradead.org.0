Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A334A1278B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 11:02:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wboOXlcoo8+7hTcdJfkrIBQHftt7mbaN9PzD1WO8PXs=; b=g0u9E/j/bUErjj
	NkNPz5En+6SoNlB8X4kTmVI87Leu/hjMZdYpkOl5dCuM2fbJncJz9vkmJqOUEyM1CncCVko4qrSEq
	fV1NQYYPoLPu6T2Fvg1rJhrJsSFeM8Eu8IfHiARNGMtGK2GSWi3OJosA6nmXxF2kZFIJYRHV8kyrn
	MSApx9/qK+7uC5j1S/TSXfn3HFf9BGfJujgwIEG5i2tvu8maDXkiPosN0B3m6AZdD8x0lrLvRXzrz
	mXWKc/GhE67rpj57yjtZey5fXByrsutKDHyGMjUPVqNNKLGx9KztlgPz5osFMlqsCLlCVGfPM1QsK
	28oulRzmdPhOuhuJVPLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiF6b-0004fI-Vq; Fri, 20 Dec 2019 10:01:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiF6R-0004eg-1c
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 10:01:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 64EF130E;
 Fri, 20 Dec 2019 02:01:45 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 67A693F719;
 Fri, 20 Dec 2019 02:01:43 -0800 (PST)
Date: Fri, 20 Dec 2019 10:01:37 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v4 10/14] cpuidle: psci: Prepare to use OS initiated
 suspend mode via PM domains
Message-ID: <20191220100137.GA6731@bogus>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
 <20191211154343.29765-11-ulf.hansson@linaro.org>
 <20191219143154.GC20746@bogus>
 <CAPDyKForeHdXPTocvAgFDbX+94UQWbJixUpKLY=0MbnF5XUAMA@mail.gmail.com>
 <20191219180133.GB21846@bogus>
 <CAPDyKFoM+SccsawV+0hHF+ku+P=5WuVaUCnKV=ftCgBRmRPseA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFoM+SccsawV+0hHF+ku+P=5WuVaUCnKV=ftCgBRmRPseA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_020147_181842_DE0A5740 
X-CRM114-Status: GOOD (  45.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 10:33:34PM +0100, Ulf Hansson wrote:
> On Thu, 19 Dec 2019 at 19:01, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Thu, Dec 19, 2019 at 04:48:13PM +0100, Ulf Hansson wrote:
> > > On Thu, 19 Dec 2019 at 15:32, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > >
> > > > On Wed, Dec 11, 2019 at 04:43:39PM +0100, Ulf Hansson wrote:
> > > > > The per CPU variable psci_power_state, contains an array of fixed values,
> > > > > which reflects the corresponding arm,psci-suspend-param parsed from DT, for
> > > > > each of the available CPU idle states.
> > > > >
> > > > > This isn't sufficient when using the hierarchical CPU topology in DT, in
> > > > > combination with having PSCI OS initiated (OSI) mode enabled. More
> > > > > precisely, in OSI mode, Linux is responsible of telling the PSCI FW what
> > > > > idle state the cluster (a group of CPUs) should enter, while in PSCI
> > > > > Platform Coordinated (PC) mode, each CPU independently votes for an idle
> > > > > state of the cluster.
> > > > >
> > > > > For this reason, introduce a per CPU variable called domain_state and
> > > > > implement two helper functions to read/write its value. Then let the
> > > > > domain_state take precedence over the regular selected state, when entering
> > > > > and idle state.
> > > > >
> > > > > To avoid executing the above OSI specific code in the ->enter() callback,
> > > > > while operating in the default PSCI Platform Coordinated mode, let's also
> > > > > add a new enter-function and use it for OSI.
> > > > >
> > > > > Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> > > > > Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> > > > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > > ---
> > > > >
> > > > > Changes in v4:
> > > > >       - Rebased on top of earlier changes.
> > > > >       - Add comment about using the deepest cpuidle state for the domain state
> > > > >       selection.
> > > > >
> > > > > ---
> > > > >  drivers/cpuidle/cpuidle-psci.c | 56 ++++++++++++++++++++++++++++++----
> > > > >  1 file changed, 50 insertions(+), 6 deletions(-)
> > > > >
> > > > > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > > > > index 6a87848be3c3..9600fe674a89 100644
> > > > > --- a/drivers/cpuidle/cpuidle-psci.c
> > > > > +++ b/drivers/cpuidle/cpuidle-psci.c
> > > > > @@ -29,14 +29,47 @@ struct psci_cpuidle_data {
> > > > >  };
> > > > >
> > > > >  static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
> > > > > +static DEFINE_PER_CPU(u32, domain_state);
> > > > > +
> > > >
> > > > [...]
> > > >
> > > > > +static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
> > > > > +                                     struct cpuidle_driver *drv, int idx)
> > > > > +{
> > > > > +     struct psci_cpuidle_data *data = this_cpu_ptr(&psci_cpuidle_data);
> > > > > +     u32 *states = data->psci_states;
> > > >
> > > > Why can't the above be like this for consistency(see below in
> > > > psci_enter_idle_state) ?
> > >
> > > You have a point, however in patch11 I am adding this line below.
> > >
> > > struct device *pd_dev = data->dev;
> > >
> > > So I don't think it matters much, agree?
> > >
> >
> > Ah OK, looked odd as part of this patch, may be you could have moved
> > this change into that patch. Anyways fine as is.
>
> Okay, then I rather just keep it.
>
> >
> > > >
> > > >         u32 *states = __this_cpu_read(psci_cpuidle_data.psci_states);
> > > >
> > > > > +     u32 state = psci_get_domain_state();
> > > > > +     int ret;
> > > > > +
> > > > > +     if (!state)
> > > > > +             state = states[idx];
> > > > > +
> > > > > +     ret = psci_enter_state(idx, state);
> > > > > +
> > > > > +     /* Clear the domain state to start fresh when back from idle. */
> > > > > +     psci_set_domain_state(0);
> > > > > +     return ret;
> > > > > +}
> > > > >
> > > >
> > > > [...]
> > > >
> > > > > @@ -118,6 +152,15 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
> > > > >                       ret = PTR_ERR(data->dev);
> > > > >                       goto free_mem;
> > > > >               }
> > > > > +
> > > > > +             /*
> > > > > +              * Using the deepest state for the CPU to trigger a potential
> > > > > +              * selection of a shared state for the domain, assumes the
> > > > > +              * domain states are all deeper states.
> > > > > +              */
> > > > > +             if (data->dev)
> > > >
> > > > You can drop this check as return on error above.
> > >
> > > Actually not, because if OSI is supported, there is still a
> > > possibility that the PM domain topology isn't used.
> > >
> >
> > And how do we support that ? I am missing something here.
> >
> > > This means ->data->dev is NULL.
> > >
> >
> > I don't get that.
>
> This is quite similar to the existing limited support we have for OSI today.
>
> We are using the idle states for the CPU, but ignoring the idle states
> for the cluster. If you just skip applying the DTS patch14, this is
> what happens.
>

No if psci_set_osi fails, we shouldn't create genpd domain as we don't
enter any cluster state. The default mode(same as PC) should work which
don't need any genpd domains. Adding one which is unused is just confusion.
Please avoid that.

> >
> > > >
> > > > > +                     drv->states[state_count - 1].enter =
> > > > > +                             psci_enter_domain_idle_state;
> > > >
> > > > I see the comment above but this potential blocks retention mode at
> > > > cluster level when all cpu enter retention at CPU level. I don't like
> > > > this assumption, but I don't have any better suggestion. Please add the
> > > > note that we can't enter RETENTION state at cluster/domain level when
> > > > all CPUs enter at CPU level.
> > >
> > > You are correct, but I think the comment a few lines above (agreed to
> > > be added by Lorenzo in the previous version) should be enough to
> > > explain that. No?
> > >
> > > The point is, this is only a problem if cluster RETENTION is
> > > considered to be a shallower state that CPU power off, for example.
> > >
> >
> > Yes, but give examples makes it better and helps people who may be
> > wondering why cluster retention state is not being entered. You can just
> > add to the above comment:
> >
> > "e.g. If CPU Retention is one of the shallower state, then we can't enter
> > any of the allowed domain states."
>
> Hmm, that it's not a correct statement I think, let me elaborate.
>
> The problem is, that in case the CPU has both RETENTION and POWER OFF
> (deepest CPU state), we would only be able to reach a cluster state
> (RETENTION or POWER OFF) when the CPUs are in CPU POWER OFF (as that's
> the deepest).
>

Sorry for the poor choice of words. What I meant is only one can be
deepest and it will be CPU POWER OFF if it exist at the CPU level.
RETENTION(again if exist) is shallower(rather deeper but not deepest
state).

> This is okay, as long as a cluster RETENTION state is considered being
> "deeper" than the CPU POWER OFF state. However, if that isn't the
> case, it means  the cluster RETENTION state is not considered in the
> correct order, but it's still possible to reach as a "domain state".
>

Again sorry for not being clear, I was referring CPU RET + CLUSTER RET.

> I think this all is kind of summarized in the comment I agreed upon
> with Lorenzo, but if you still think there is some clarification
> needed I happy to add it.
>
> Makes sense?
>

OK, if you happy, that's fine. I just wanted to clearly state CPU RET
+ CLUSTER RET is not possible with the implementation.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
