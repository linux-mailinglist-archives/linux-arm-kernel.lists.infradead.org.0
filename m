Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 766516A41D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 10:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+vF2WRehGkOJqFry/4yN99/r2rnyMYmXV96gRLUkGY=; b=HLNjfSrWPRsfEb
	rr/MNwweviuip1hbr3/zeGBz+Ki8yGT36NcibUi3LpxmPFuQl6wFo6n95vsaYQCl8wCE5ltHasnoa
	dRceZvnFJp9ApIKw0302sNyHPIKxiPvtkzAUDQPm6T8yVuywY8pHDeItJFAfbFprRtUtrDrBVLcZM
	ddaVN+wfRYQ4/6skKi1Vte+dzZMXqA3wLfuK4j588JyrGxC4xnGZ2dlzWdvRaJqujNIZf6gBY1c/T
	Q8Ine+0roRW6M388jdORa6lg2s3I5uj6NwXTVUohQB15JLHXNmsAC45J/sovCm/BFcDrHR/BMZaVn
	h4odFdPZPp51cWb5TC4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJ78-00008I-BG; Tue, 16 Jul 2019 08:47:10 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJ6S-00007M-7c
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 08:46:30 +0000
Received: by mail-ua1-x941.google.com with SMTP id o19so7849933uap.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 01:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NBVHquOpHCj1lFm8EjHsR8Y4yEo3VOFxQv1yTdErFMI=;
 b=ImcB64YsoZNyYRw61c36XDOwtCGTj3HynvPTU9TSL1vV4eQfqWk9cFiJzJncZbKUqZ
 cZFFCwdDDohk/80qZU6xQeR5vixhx5Z8UfLfdbq988cxJaPcTlE5sSARFyqIoxvaLd5p
 nyWveUgv1khGANlpDp2raHrCrcUMtxyhz8sAtz41ntvwMAW3LE32DbDl8apfq8dGkRDZ
 UX2Lz+7rWzY32m7eI9KQOfRS1Fn6G07QF3tpo7xfOGuM05xuLIkkOXk/7EpE/9skZ1c6
 PyW44Ifn8NU967I5TZvxBpz7Q8x1U2J3bkLSKK43QDMMj+8+qsIUF5HdJUki448yd0WV
 SPdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NBVHquOpHCj1lFm8EjHsR8Y4yEo3VOFxQv1yTdErFMI=;
 b=qS9SvwNI7M6xipQh9t+YKyhARv8GlbiAuVk1UceFkkXTOHwKO15mBFvfuKmSlNRXYw
 atmrP5Um2yQuaTGXgpmUqar34Rgs6CVJ3VX1GrgLccL+81yrLjTNaKBMe48Raz6pN/qW
 taH9FnWaCYUdWnq9CGzyCQgoTMtcp9YHuK1CCXxMUnfHspUTk1rHDYbpL8X6rZU1gyBy
 36UxFyb5D5lQqBkHxx2uLHQ20Qyjz2ioPvw34sVIxO/LoTCARRbATbNPlvKjhvL5cbNa
 olrNXV9HSwTjXGpfyZ/EQ7yoS2e/bTYxpAxkGoDuwX5h2VIE2MAdEewN30207V2c24Ml
 61Zw==
X-Gm-Message-State: APjAAAUGNuRh/maDjLPvobIL3ZdHAIIQdv6xp6uMCZGqYaURhdhd4LoT
 s63uU3B+1eQivH+aUHV7Z/XFRpViZ0n/gNcvLa/93w==
X-Google-Smtp-Source: APXvYqxIvVm10Yc/2DFCYMqoQDjDY7D+QeQkssOr3Ej7Wxfoj9xy2xeuXyFo8DffbncEmwhEsMTG2NXyw6eP2QdDvpE=
X-Received: by 2002:ab0:60ad:: with SMTP id f13mr8811202uam.129.1563266786313; 
 Tue, 16 Jul 2019 01:46:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-11-ulf.hansson@linaro.org>
 <20190709153138.GA22871@e121166-lin.cambridge.arm.com>
In-Reply-To: <20190709153138.GA22871@e121166-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 16 Jul 2019 10:45:49 +0200
Message-ID: <CAPDyKFpd5Jip+ZDENXVC115JJgCReJa4G92aKa45Lna6BeV5-g@mail.gmail.com>
Subject: Re: [PATCH 10/18] drivers: firmware: psci: Add hierarchical domain
 idle states converter
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_014628_293413_2F856700 
X-CRM114-Status: GOOD (  38.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Lorenzo,

Just wanted to give some feedback to you in public, even if we have
already discussed this series, offlist, last week.

On Tue, 9 Jul 2019 at 17:31, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Mon, May 13, 2019 at 09:22:52PM +0200, Ulf Hansson wrote:
> > If the hierarchical CPU topology is used, but the OS initiated mode isn't
> > supported, we need to rely solely on the regular cpuidle framework to
> > manage the idle state selection, rather than using genpd and its governor.
> >
> > For this reason, introduce a new PSCI DT helper function,
> > psci_dt_pm_domains_parse_states(), which parses and converts the
> > hierarchically described domain idle states from DT, into regular flattened
> > cpuidle states. The converted states are added to the existing cpuidle
> > driver's array of idle states, which make them available for cpuidle.
> >
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >
> > Changes:
> >       - Some simplification of the code.
> >
> > ---
> >  drivers/firmware/psci/psci.h           |   5 ++
> >  drivers/firmware/psci/psci_pm_domain.c | 118 +++++++++++++++++++++++++
> >  2 files changed, 123 insertions(+)
> >
> > diff --git a/drivers/firmware/psci/psci.h b/drivers/firmware/psci/psci.h
> > index 00d2e3dcef49..c36e0e6649e9 100644
> > --- a/drivers/firmware/psci/psci.h
> > +++ b/drivers/firmware/psci/psci.h
> > @@ -3,6 +3,7 @@
> >  #ifndef __PSCI_H
> >  #define __PSCI_H
> >
> > +struct cpuidle_driver;
> >  struct device_node;
> >
> >  int psci_set_osi_mode(void);
> > @@ -13,8 +14,12 @@ void psci_set_domain_state(u32 state);
> >  int psci_dt_parse_state_node(struct device_node *np, u32 *state);
> >  #ifdef CONFIG_PM_GENERIC_DOMAINS_OF
> >  int psci_dt_init_pm_domains(struct device_node *np);
> > +int psci_dt_pm_domains_parse_states(struct cpuidle_driver *drv,
> > +             struct device_node *cpu_node, u32 *psci_states);
> >  #else
> >  static inline int psci_dt_init_pm_domains(struct device_node *np) { return 0; }
> > +static inline int psci_dt_pm_domains_parse_states(struct cpuidle_driver *drv,
> > +             struct device_node *cpu_node, u32 *psci_states) { return 0; }
> >  #endif
> >  #endif
> >
> > diff --git a/drivers/firmware/psci/psci_pm_domain.c b/drivers/firmware/psci/psci_pm_domain.c
> > index 3c6ca846caf4..3aa645dba81b 100644
> > --- a/drivers/firmware/psci/psci_pm_domain.c
> > +++ b/drivers/firmware/psci/psci_pm_domain.c
> > @@ -14,6 +14,10 @@
> >  #include <linux/pm_domain.h>
> >  #include <linux/slab.h>
> >  #include <linux/string.h>
> > +#include <linux/cpuidle.h>
> > +#include <linux/cpu_pm.h>
> > +
> > +#include <asm/cpuidle.h>
> >
> >  #include "psci.h"
> >
> > @@ -104,6 +108,53 @@ static void psci_pd_free_states(struct genpd_power_state *states,
> >       kfree(states);
> >  }
> >
> > +static int psci_pd_enter_pc(struct cpuidle_device *dev,
> > +                     struct cpuidle_driver *drv, int idx)
> > +{
> > +     return CPU_PM_CPU_IDLE_ENTER(arm_cpuidle_suspend, idx);
> > +}
> > +
> > +static void psci_pd_enter_s2idle_pc(struct cpuidle_device *dev,
> > +                     struct cpuidle_driver *drv, int idx)
> > +{
> > +     psci_pd_enter_pc(dev, drv, idx);
> > +}
> > +
> > +static void psci_pd_convert_states(struct cpuidle_state *idle_state,
> > +                     u32 *psci_state, struct genpd_power_state *state)
> > +{
> > +     u32 *state_data = state->data;
> > +     u64 target_residency_us = state->residency_ns;
> > +     u64 exit_latency_us = state->power_on_latency_ns +
> > +                     state->power_off_latency_ns;
> > +
> > +     *psci_state = *state_data;
> > +     do_div(target_residency_us, 1000);
> > +     idle_state->target_residency = target_residency_us;
> > +     do_div(exit_latency_us, 1000);
> > +     idle_state->exit_latency = exit_latency_us;
> > +     idle_state->enter = &psci_pd_enter_pc;
> > +     idle_state->enter_s2idle = &psci_pd_enter_s2idle_pc;
> > +     idle_state->flags |= CPUIDLE_FLAG_TIMER_STOP;
>
> This is arbitrary and not necessarily true.

The arbitrary thing you refer to here, is that the
CPUIDLE_FLAG_TIMER_STOP? Or are you referring to the complete function
psci_pd_convert_states()?

>
> I think that this patch is useful to represent my reservations about the
> current approach. As a matter of fact, idle state entry will always be a
> CPUidle decision.
>
> You only need PM domain information to understand when all CPUs
> in a power domain are actually idle but that's all genPD can do
> in this respect.
>
> I think this patchset would be much simpler if both CPUidle and
> genPD governor would work on *one* set of idle states, globally
> indexed (and that would be true for PSCI suspend parameters too).
>
> To work with a unified set of idle states between CPUidle and genPD
> (tossing some ideas around):
>
> - We can implement a genPD CPUidle governor that in its select method
>   takes into account genPD information (for instance by avoiding
>   selection of idle states that require multiple cpus to be in idle
>   to be effectively active)
> - We can use genPD to enable/disable CPUidle states through runtime
>   PM information

I don't understand how to make this work.

The CPUidle governor works on per CPU basis. The genpd governor works
on per PM domain basis, which typically can be a group of CPUs (and
even other devices) via subdomains, for example.

1.
In case of Linux being in *charge* of what idle state to pick for a
group of CPUs, that decision is best done by the genpd governor as it
operates on "groups" of CPUs. This is used for PSCI OSI mode. Of
course, there are idle states also per CPU, which potentially could be
managed by the genpd governor as well, but at this point I decided to
re-use the cpuidle governor as it's already doing the job.

2. In case the decision of what idle state to enter for the group is
done by the FW, we can rely solely on the cpuidle governor and let it
select states per CPU basis. This is used for PSCI PC mode.

>
> There may be other ways. My point is that current code, with two (or
> more if the hierarchy grows) sets of idle states across two subsystems
> (CPUidle and genPD) is not very well defined and honestly very hard to
> grasp and prone to errors.

The complexity is there, I admit that.

I guess some deeper insight about genpd+its governor+runtime PM are
needed when reviewing this, of course. As an option, you may also have
a look at my slides [1] from OSPM (Pisa) in May this year, which via
flow charts try to describes things in more detail.

In our offlist meeting, we discussed that perhaps moving some of the
new PSCI code introduced in this series, into a cpuidle driver
instead, could make things more clear. For sure, I can explore that
option, but before I go there, I think we should agree on it publicly.

In principle what it means is to invent a special cpuidle driver for
PSCI, so we would need access to some of the PSCI internal functions,
for example.

One thing though, the initialization of the PSCI PM domain topology is
a separate step, managed via the new initcall, psci_dt_topology_init()
(introduced in patch 11). That part still seems to be belong to the
PSCI code, don't you think?

>
> > +
> > +     strncpy(idle_state->name, to_of_node(state->fwnode)->name,
> > +             CPUIDLE_NAME_LEN - 1);
> > +     strncpy(idle_state->desc, to_of_node(state->fwnode)->name,
> > +             CPUIDLE_NAME_LEN - 1);
> > +}
> > +
> > +static bool psci_pd_is_provider(struct device_node *np)
> > +{
> > +     struct psci_pd_provider *pd_prov, *it;
> > +
> > +     list_for_each_entry_safe(pd_prov, it, &psci_pd_providers, link) {
> > +             if (pd_prov->node == np)
> > +                     return true;
> > +     }
> > +
> > +     return false;
> > +}
> > +
> >  static int psci_pd_init(struct device_node *np)
> >  {
> >       struct generic_pm_domain *pd;
> > @@ -265,4 +316,71 @@ int psci_dt_init_pm_domains(struct device_node *np)
> >       pr_err("failed to create CPU PM domains ret=%d\n", ret);
> >       return ret;
> >  }
> > +
> > +int psci_dt_pm_domains_parse_states(struct cpuidle_driver *drv,
> > +                     struct device_node *cpu_node, u32 *psci_states)
> > +{
> > +     struct genpd_power_state *pd_states;
> > +     struct of_phandle_args args;
> > +     int ret, pd_state_count, i, state_idx, psci_idx;
> > +     u32 cpu_psci_state = psci_states[drv->state_count - 2];
>
> This (-2) is very dodgy and I doubt it would work on hierarchies going
> above "cluster" level.
>
> As I say above, I think we should work towards a single array of
> idle states to be selected by a CPUidle governor using genPD
> runtime information to bias the results according to the number
> of CPUs in a genPD that entered/exit idle.
>
> To be more precise, all idles states should be "domain-idle-state"
> compatible, even the CPU ones, the distinction between what CPUidle
> and genPD manage is a bit stretched IMO in this patchset.
>
> We will have a chance to talk about this but I thought I would
> comment publically if anyone else is willing to chime in, this
> is not a PSCI problem at all, it is a CPUidle/genPD coexistence
> design problem which is much broader.

To move this forward, I think we need to move from vague ideas to
clear and distinct plans. Whatever that means. :-)

I understand you are concerned about the level of changes introduced
to the PSCI code. As I stated somewhere in earlier replies, I picked
that approach as I thought it was better to implement things in a PSCI
specific manner to start with, then we could move things around, when
we realize that it make sense.

Anyway, as a suggestion to address your concern, how about this:

1. Move some things out to a PSCI cpuidle driver. We need to decide
more exactly on what to move and find the right level for the
interfaces.
2. Don't attach the CPU to the PM domain topology in case the PSCI PC
mode is used. I think this makes it easier, at least as a first step,
to understand when runtime PM needs to be used/enabled.
3. Would it help if I volunteer to help you guys as a maintainer for
PSCI. At least for the part of the new code that becomes introduced?

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
