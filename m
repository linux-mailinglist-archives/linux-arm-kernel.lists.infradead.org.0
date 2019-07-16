Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 650546AAEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 16:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLv2kp8cS9OYnR/E5W68xwf5Xa0WqVvVn1DZ9jD/JSM=; b=QxNvfOrN7QqnOj
	+c9X6ryrXHTLMKEC8qg9J3e2JMnjRqKbQuYXtzypVG7JNxIX0UhbtBGbiVEqRhC4WXbjjGKLzu+hB
	lMXSaL3EDKdQ4lUaQcWuy/klfGq7mXP5m3nYBDGCj2afTAr/UVcML6NhCXJWMSlmVRGvFYNqslX/F
	RSOy4DBmcSiQpviuShIVU6ECpIUJf7+HHiTZW9b1TOZEv2tuoenIoKxc53yWGA44cTuX9nGsSltuT
	PjqZlP8Vg1CPo3bhoqlaVmio11Kn/wsgauZx4eCffnRVnUc+7mZmzSkM2SHnU1Aa/9SlSNDWNQQV4
	g/gAm9/LIC9yM9foO6Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnOo8-0001VE-Lv; Tue, 16 Jul 2019 14:51:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnOnt-0001T9-DD
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 14:51:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 679C6337;
 Tue, 16 Jul 2019 07:51:40 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D19943F59C;
 Tue, 16 Jul 2019 07:51:37 -0700 (PDT)
Date: Tue, 16 Jul 2019 15:51:29 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 10/18] drivers: firmware: psci: Add hierarchical domain
 idle states converter
Message-ID: <20190716145121.GA32490@e121166-lin.cambridge.arm.com>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-11-ulf.hansson@linaro.org>
 <20190709153138.GA22871@e121166-lin.cambridge.arm.com>
 <CAPDyKFpd5Jip+ZDENXVC115JJgCReJa4G92aKa45Lna6BeV5-g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFpd5Jip+ZDENXVC115JJgCReJa4G92aKa45Lna6BeV5-g@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_075141_569993_F4DB5B65 
X-CRM114-Status: GOOD (  42.10  )
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

On Tue, Jul 16, 2019 at 10:45:49AM +0200, Ulf Hansson wrote:

[...]

> > > +static void psci_pd_convert_states(struct cpuidle_state *idle_state,
> > > +                     u32 *psci_state, struct genpd_power_state *state)
> > > +{
> > > +     u32 *state_data = state->data;
> > > +     u64 target_residency_us = state->residency_ns;
> > > +     u64 exit_latency_us = state->power_on_latency_ns +
> > > +                     state->power_off_latency_ns;
> > > +
> > > +     *psci_state = *state_data;
> > > +     do_div(target_residency_us, 1000);
> > > +     idle_state->target_residency = target_residency_us;
> > > +     do_div(exit_latency_us, 1000);
> > > +     idle_state->exit_latency = exit_latency_us;
> > > +     idle_state->enter = &psci_pd_enter_pc;
> > > +     idle_state->enter_s2idle = &psci_pd_enter_s2idle_pc;
> > > +     idle_state->flags |= CPUIDLE_FLAG_TIMER_STOP;
> >
> > This is arbitrary and not necessarily true.
> 
> The arbitrary thing you refer to here, is that the
> CPUIDLE_FLAG_TIMER_STOP? Or are you referring to the complete function
> psci_pd_convert_states()?

I refer to CPUIDLE_FLAG_TIMER_STOP. I think that on platform coordinated
system we should not bother about the hierarchical representation of the
states (I understand I asked you to make it work but it has become too
complex, I would rather focus on making the hierarchical representation
work for all idle states combination in OSI mode).

Plus side, another level of complexity removed.

> > I think that this patch is useful to represent my reservations about the
> > current approach. As a matter of fact, idle state entry will always be a
> > CPUidle decision.
> >
> > You only need PM domain information to understand when all CPUs
> > in a power domain are actually idle but that's all genPD can do
> > in this respect.
> >
> > I think this patchset would be much simpler if both CPUidle and
> > genPD governor would work on *one* set of idle states, globally
> > indexed (and that would be true for PSCI suspend parameters too).
> >
> > To work with a unified set of idle states between CPUidle and genPD
> > (tossing some ideas around):
> >
> > - We can implement a genPD CPUidle governor that in its select method
> >   takes into account genPD information (for instance by avoiding
> >   selection of idle states that require multiple cpus to be in idle
> >   to be effectively active)
> > - We can use genPD to enable/disable CPUidle states through runtime
> >   PM information
> 
> I don't understand how to make this work.
> 
> The CPUidle governor works on per CPU basis. The genpd governor works
> on per PM domain basis, which typically can be a group of CPUs (and
> even other devices) via subdomains, for example.
> 
> 1.
> In case of Linux being in *charge* of what idle state to pick for a
> group of CPUs, that decision is best done by the genpd governor as it
> operates on "groups" of CPUs. This is used for PSCI OSI mode. Of
> course, there are idle states also per CPU, which potentially could be
> managed by the genpd governor as well, but at this point I decided to
> re-use the cpuidle governor as it's already doing the job.
> 
> 2. In case the decision of what idle state to enter for the group is
> done by the FW, we can rely solely on the cpuidle governor and let it
> select states per CPU basis. This is used for PSCI PC mode.
> 
> >
> > There may be other ways. My point is that current code, with two (or
> > more if the hierarchy grows) sets of idle states across two subsystems
> > (CPUidle and genPD) is not very well defined and honestly very hard to
> > grasp and prone to errors.
> 
> The complexity is there, I admit that.
> 
> I guess some deeper insight about genpd+its governor+runtime PM are
> needed when reviewing this, of course. As an option, you may also have
> a look at my slides [1] from OSPM (Pisa) in May this year, which via
> flow charts try to describes things in more detail.
> 
> In our offlist meeting, we discussed that perhaps moving some of the
> new PSCI code introduced in this series, into a cpuidle driver
> instead, could make things more clear. For sure, I can explore that
> option, but before I go there, I think we should agree on it publicly.

I will do it but given that the generic idle infrastructure basically
is there for PSCI and:

drivers/soc/qcom/spm.c

if we create a PSCI CPUidle driver we can write one for qcom-spm and
remove the generic idle infrastructure, there would not be much
point in keeping it in the kernel; at least on ARM64 not using
PSCI for CPUidle is not even an option.

> In principle what it means is to invent a special cpuidle driver for
> PSCI, so we would need access to some of the PSCI internal functions,
> for example.

Yes.

> One thing though, the initialization of the PSCI PM domain topology is
> a separate step, managed via the new initcall, psci_dt_topology_init()
> (introduced in patch 11). That part still seems to be belong to the
> PSCI code, don't you think?

Yes but at least we can call it from a sensible place (well, sensible,
most likely from an initcall given how idle drivers are initialized).

> > > +     strncpy(idle_state->name, to_of_node(state->fwnode)->name,
> > > +             CPUIDLE_NAME_LEN - 1);
> > > +     strncpy(idle_state->desc, to_of_node(state->fwnode)->name,
> > > +             CPUIDLE_NAME_LEN - 1);
> > > +}
> > > +
> > > +static bool psci_pd_is_provider(struct device_node *np)
> > > +{
> > > +     struct psci_pd_provider *pd_prov, *it;
> > > +
> > > +     list_for_each_entry_safe(pd_prov, it, &psci_pd_providers, link) {
> > > +             if (pd_prov->node == np)
> > > +                     return true;
> > > +     }
> > > +
> > > +     return false;
> > > +}
> > > +
> > >  static int psci_pd_init(struct device_node *np)
> > >  {
> > >       struct generic_pm_domain *pd;
> > > @@ -265,4 +316,71 @@ int psci_dt_init_pm_domains(struct device_node *np)
> > >       pr_err("failed to create CPU PM domains ret=%d\n", ret);
> > >       return ret;
> > >  }
> > > +
> > > +int psci_dt_pm_domains_parse_states(struct cpuidle_driver *drv,
> > > +                     struct device_node *cpu_node, u32 *psci_states)
> > > +{
> > > +     struct genpd_power_state *pd_states;
> > > +     struct of_phandle_args args;
> > > +     int ret, pd_state_count, i, state_idx, psci_idx;
> > > +     u32 cpu_psci_state = psci_states[drv->state_count - 2];
> >
> > This (-2) is very dodgy and I doubt it would work on hierarchies going
> > above "cluster" level.
> >
> > As I say above, I think we should work towards a single array of
> > idle states to be selected by a CPUidle governor using genPD
> > runtime information to bias the results according to the number
> > of CPUs in a genPD that entered/exit idle.
> >
> > To be more precise, all idles states should be "domain-idle-state"
> > compatible, even the CPU ones, the distinction between what CPUidle
> > and genPD manage is a bit stretched IMO in this patchset.
> >
> > We will have a chance to talk about this but I thought I would
> > comment publically if anyone else is willing to chime in, this
> > is not a PSCI problem at all, it is a CPUidle/genPD coexistence
> > design problem which is much broader.
> 
> To move this forward, I think we need to move from vague ideas to
> clear and distinct plans. Whatever that means. :-)

See above.

> I understand you are concerned about the level of changes introduced
> to the PSCI code. As I stated somewhere in earlier replies, I picked
> that approach as I thought it was better to implement things in a PSCI
> specific manner to start with, then we could move things around, when
> we realize that it make sense.

I am also concerned about how the idle states are managed in
this patchset and I am pretty certain it will break when we
move away from a simple hierarchy with one CPU state and one
cluster state, we will comment on the specifics.

Moving PSCI code into a CPUidle driver will cater for the rest.

> Anyway, as a suggestion to address your concern, how about this:
> 
> 1. Move some things out to a PSCI cpuidle driver. We need to decide
> more exactly on what to move and find the right level for the
> interfaces.

I will do it and post patches asap.

> 2. Don't attach the CPU to the PM domain topology in case the PSCI PC
> mode is used. I think this makes it easier, at least as a first step,
> to understand when runtime PM needs to be used/enabled.

In the PSCI CPUidle driver we can have two distinct struct
cpuidle_state->enter functions for PC and OSI, no overhead
for PC, runtime PM for OSI, decoupling done.

We can choose one or the other depending on whether:

OSI iff:
- OSI is available
- hierarchical idle states are present in DT

otherwise PC.

That's what this patch does but we will do it in a unified file.

> 3. Would it help if I volunteer to help you guys as a maintainer for
> PSCI. At least for the part of the new code that becomes introduced?

We will do as described above if that makes sense.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
