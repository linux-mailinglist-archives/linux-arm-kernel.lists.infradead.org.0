Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6C16CDA4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 13:45:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d2w57C/2mVluGYscuG+LfcRby5KDrPFaKrES32c7qN8=; b=KbOr9kHaEWnHcT
	2K18sBS7zuar3MyywWtX4zytCKu+BH0ghpfUMFkTnUZtbT6Hv5xGVSSzpmeGmSB5oZjRSLH2Rj9by
	hjF0IsJ2P2DjDcrA4zhNVpop7wlVWju0ZArjX08TiZdNLho6tKmRSFtD6voFbFXOqOCZrm2lGI+sE
	NM6zj5EUin6IsVPGrd30kZUaL50ahLsTSx5kDQydtd7K0dCWYs+108v6pPP53kb3+O74LrJs5mcl/
	p+5wpzangKK69jTC4+d7QBJ+fuhzzxtyks4QKdFjYcO3iWpDuSzIgM5UzmY+LDaWTu2j7CwaZiDMW
	mCIbUaz4n7auEZ5nWCeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho4qJ-0007t8-NA; Thu, 18 Jul 2019 11:44:59 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho4pi-0007rm-W6
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 11:44:24 +0000
Received: by mail-ua1-x942.google.com with SMTP id z13so11018587uaa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 04:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fh1Nap3zku96wjEuTahiJc5IoDwOO8kNsawu5aKRXpI=;
 b=bj4YJHItJSL9DRyyeoyzQVQAnVh/2HITHRjAu8uE2TEGk8mSkB0bc+hggHD0K5YCkx
 0fZzqOod+dSf6HfpVf7u/dZVv1sUvyM1YOH6K2XXI22pfyE0KxOrCwyfBm39Kn8mfMQf
 7kCGwqkzgm1T227x3Um6ZOdm7hN1KQABWqxaq/2hlofIHh/P0bsYwSSDnKVl4L2wXAvX
 KEltEd4v7+CZn3ADFiXTpMoUj93Ov3VWIqGhWGJ4+oeqEdjKeHJndimqou+36wgOw4z8
 b0k2MfKyGFAd06gw9mQDumGNiM7KfD2y0Vbw/QSNh4/xth1lIjeXbF+9FAgqUutzukm/
 UsXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fh1Nap3zku96wjEuTahiJc5IoDwOO8kNsawu5aKRXpI=;
 b=LPKvni5bMKsbe1czmu+wn8cXfeIofNddI68j3Nmo1dTFtssElYMPkCcv8OUu7JD+cr
 QIdIJQ9BvNxWDo6/DZf1NBZJ5qW6M0JV8umzO2FEkLeGygqpStT42KGSQCLGoPUvWCXR
 jh5F6N8WS7tsjbocqjm2DPkEw9ZH+qAfbdIXBNUaRHgJUkgTy7tKx0ecMUcmY+66FCj6
 S5Fxyp+8WS5spZ6oTTMnnKgW8mbhp/6DUXmvTEKHm0KWdOTAVya67RBKryxiOTS1uGMt
 HeD/5wYEblsOKk08YRwZhlrbGQubTTqD5H2zqjUOEV0hyl/NCDHLaSLb57lg/6FYsLpu
 Lwgg==
X-Gm-Message-State: APjAAAVY1QLcZ3xv9y+LvkOkC7VdgiOHg5BcNXWTNA/tUpLxRx1uOJze
 P/kKPXnsc06EwHRDgr2jCjc0unWPhWUz8RQwH7gVaw==
X-Google-Smtp-Source: APXvYqyYOGuyQUhcxIGq62VwDkn1bzVNiwS/b8Cie/XKGepmP0IOqnOPG1A+EJJf8YR5FLtjTeJYzi/T4vtxiO2g3AU=
X-Received: by 2002:ab0:70b1:: with SMTP id q17mr3624577ual.100.1563450260575; 
 Thu, 18 Jul 2019 04:44:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-11-ulf.hansson@linaro.org>
 <20190709153138.GA22871@e121166-lin.cambridge.arm.com>
 <CAPDyKFpd5Jip+ZDENXVC115JJgCReJa4G92aKa45Lna6BeV5-g@mail.gmail.com>
 <20190716145121.GA32490@e121166-lin.cambridge.arm.com>
In-Reply-To: <20190716145121.GA32490@e121166-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 18 Jul 2019 13:43:44 +0200
Message-ID: <CAPDyKFoBm9vWUcX5pjMMseYs7SAYr9v0Uc48YqsgaG9omA2MRQ@mail.gmail.com>
Subject: Re: [PATCH 10/18] drivers: firmware: psci: Add hierarchical domain
 idle states converter
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_044423_044647_4B57597C 
X-CRM114-Status: GOOD (  49.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Tue, 16 Jul 2019 at 16:51, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Tue, Jul 16, 2019 at 10:45:49AM +0200, Ulf Hansson wrote:
>
> [...]
>
> > > > +static void psci_pd_convert_states(struct cpuidle_state *idle_state,
> > > > +                     u32 *psci_state, struct genpd_power_state *state)
> > > > +{
> > > > +     u32 *state_data = state->data;
> > > > +     u64 target_residency_us = state->residency_ns;
> > > > +     u64 exit_latency_us = state->power_on_latency_ns +
> > > > +                     state->power_off_latency_ns;
> > > > +
> > > > +     *psci_state = *state_data;
> > > > +     do_div(target_residency_us, 1000);
> > > > +     idle_state->target_residency = target_residency_us;
> > > > +     do_div(exit_latency_us, 1000);
> > > > +     idle_state->exit_latency = exit_latency_us;
> > > > +     idle_state->enter = &psci_pd_enter_pc;
> > > > +     idle_state->enter_s2idle = &psci_pd_enter_s2idle_pc;
> > > > +     idle_state->flags |= CPUIDLE_FLAG_TIMER_STOP;
> > >
> > > This is arbitrary and not necessarily true.
> >
> > The arbitrary thing you refer to here, is that the
> > CPUIDLE_FLAG_TIMER_STOP? Or are you referring to the complete function
> > psci_pd_convert_states()?
>
> I refer to CPUIDLE_FLAG_TIMER_STOP. I think that on platform coordinated
> system we should not bother about the hierarchical representation of the
> states (I understand I asked you to make it work but it has become too
> complex, I would rather focus on making the hierarchical representation
> work for all idle states combination in OSI mode).
>
> Plus side, another level of complexity removed.

Oh, well, that's why I left it out in the first place, to start simple. :-)

Anyway, no problem, I will revert back to that option.

>
> > > I think that this patch is useful to represent my reservations about the
> > > current approach. As a matter of fact, idle state entry will always be a
> > > CPUidle decision.
> > >
> > > You only need PM domain information to understand when all CPUs
> > > in a power domain are actually idle but that's all genPD can do
> > > in this respect.
> > >
> > > I think this patchset would be much simpler if both CPUidle and
> > > genPD governor would work on *one* set of idle states, globally
> > > indexed (and that would be true for PSCI suspend parameters too).
> > >
> > > To work with a unified set of idle states between CPUidle and genPD
> > > (tossing some ideas around):
> > >
> > > - We can implement a genPD CPUidle governor that in its select method
> > >   takes into account genPD information (for instance by avoiding
> > >   selection of idle states that require multiple cpus to be in idle
> > >   to be effectively active)
> > > - We can use genPD to enable/disable CPUidle states through runtime
> > >   PM information
> >
> > I don't understand how to make this work.
> >
> > The CPUidle governor works on per CPU basis. The genpd governor works
> > on per PM domain basis, which typically can be a group of CPUs (and
> > even other devices) via subdomains, for example.
> >
> > 1.
> > In case of Linux being in *charge* of what idle state to pick for a
> > group of CPUs, that decision is best done by the genpd governor as it
> > operates on "groups" of CPUs. This is used for PSCI OSI mode. Of
> > course, there are idle states also per CPU, which potentially could be
> > managed by the genpd governor as well, but at this point I decided to
> > re-use the cpuidle governor as it's already doing the job.
> >
> > 2. In case the decision of what idle state to enter for the group is
> > done by the FW, we can rely solely on the cpuidle governor and let it
> > select states per CPU basis. This is used for PSCI PC mode.
> >
> > >
> > > There may be other ways. My point is that current code, with two (or
> > > more if the hierarchy grows) sets of idle states across two subsystems
> > > (CPUidle and genPD) is not very well defined and honestly very hard to
> > > grasp and prone to errors.
> >
> > The complexity is there, I admit that.
> >
> > I guess some deeper insight about genpd+its governor+runtime PM are
> > needed when reviewing this, of course. As an option, you may also have
> > a look at my slides [1] from OSPM (Pisa) in May this year, which via
> > flow charts try to describes things in more detail.
> >
> > In our offlist meeting, we discussed that perhaps moving some of the
> > new PSCI code introduced in this series, into a cpuidle driver
> > instead, could make things more clear. For sure, I can explore that
> > option, but before I go there, I think we should agree on it publicly.
>
> I will do it but given that the generic idle infrastructure basically
> is there for PSCI and:
>
> drivers/soc/qcom/spm.c
>
> if we create a PSCI CPUidle driver we can write one for qcom-spm and
> remove the generic idle infrastructure, there would not be much
> point in keeping it in the kernel; at least on ARM64 not using
> PSCI for CPUidle is not even an option.

To make it clear, I definitely like this idea!

I am not really fond of current cpuidle backend infrastructure for
ARM/ARM64, it's really hard to follow all the things that happens in
those corresponding callbacks.

>
> > In principle what it means is to invent a special cpuidle driver for
> > PSCI, so we would need access to some of the PSCI internal functions,
> > for example.
>
> Yes.
>
> > One thing though, the initialization of the PSCI PM domain topology is
> > a separate step, managed via the new initcall, psci_dt_topology_init()
> > (introduced in patch 11). That part still seems to be belong to the
> > PSCI code, don't you think?
>
> Yes but at least we can call it from a sensible place (well, sensible,
> most likely from an initcall given how idle drivers are initialized).

Okay.

>
> > > > +     strncpy(idle_state->name, to_of_node(state->fwnode)->name,
> > > > +             CPUIDLE_NAME_LEN - 1);
> > > > +     strncpy(idle_state->desc, to_of_node(state->fwnode)->name,
> > > > +             CPUIDLE_NAME_LEN - 1);
> > > > +}
> > > > +
> > > > +static bool psci_pd_is_provider(struct device_node *np)
> > > > +{
> > > > +     struct psci_pd_provider *pd_prov, *it;
> > > > +
> > > > +     list_for_each_entry_safe(pd_prov, it, &psci_pd_providers, link) {
> > > > +             if (pd_prov->node == np)
> > > > +                     return true;
> > > > +     }
> > > > +
> > > > +     return false;
> > > > +}
> > > > +
> > > >  static int psci_pd_init(struct device_node *np)
> > > >  {
> > > >       struct generic_pm_domain *pd;
> > > > @@ -265,4 +316,71 @@ int psci_dt_init_pm_domains(struct device_node *np)
> > > >       pr_err("failed to create CPU PM domains ret=%d\n", ret);
> > > >       return ret;
> > > >  }
> > > > +
> > > > +int psci_dt_pm_domains_parse_states(struct cpuidle_driver *drv,
> > > > +                     struct device_node *cpu_node, u32 *psci_states)
> > > > +{
> > > > +     struct genpd_power_state *pd_states;
> > > > +     struct of_phandle_args args;
> > > > +     int ret, pd_state_count, i, state_idx, psci_idx;
> > > > +     u32 cpu_psci_state = psci_states[drv->state_count - 2];
> > >
> > > This (-2) is very dodgy and I doubt it would work on hierarchies going
> > > above "cluster" level.
> > >
> > > As I say above, I think we should work towards a single array of
> > > idle states to be selected by a CPUidle governor using genPD
> > > runtime information to bias the results according to the number
> > > of CPUs in a genPD that entered/exit idle.
> > >
> > > To be more precise, all idles states should be "domain-idle-state"
> > > compatible, even the CPU ones, the distinction between what CPUidle
> > > and genPD manage is a bit stretched IMO in this patchset.
> > >
> > > We will have a chance to talk about this but I thought I would
> > > comment publically if anyone else is willing to chime in, this
> > > is not a PSCI problem at all, it is a CPUidle/genPD coexistence
> > > design problem which is much broader.
> >
> > To move this forward, I think we need to move from vague ideas to
> > clear and distinct plans. Whatever that means. :-)
>
> See above.
>
> > I understand you are concerned about the level of changes introduced
> > to the PSCI code. As I stated somewhere in earlier replies, I picked
> > that approach as I thought it was better to implement things in a PSCI
> > specific manner to start with, then we could move things around, when
> > we realize that it make sense.
>
> I am also concerned about how the idle states are managed in
> this patchset and I am pretty certain it will break when we
> move away from a simple hierarchy with one CPU state and one
> cluster state, we will comment on the specifics.

The intent with the series is that this should be supported, no matter
of the number of states or the level of hierarchy.

Well, there are some limitations/bugs in genpd (and the genpd
governor) to support a greater level than 2, but that is on my TODO
list to fix. Again, some of my slides from OSPM Pisa explains this.

More importantly, the current deployment to PSCI should remain
unchanged after this series (unless there is a bug somewhere, as also
was pointed out by Sudeep in another reply).

>
> Moving PSCI code into a CPUidle driver will cater for the rest.

Great news, we seems to have a plan!

>
> > Anyway, as a suggestion to address your concern, how about this:
> >
> > 1. Move some things out to a PSCI cpuidle driver. We need to decide
> > more exactly on what to move and find the right level for the
> > interfaces.
>
> I will do it and post patches asap.

Okay, so I will wait for you to converting the cpuidle-arm driver into
a cpuidle-psci driver (and all the changes that comes with it) and
then base my re-base my series on top.

Then, would you mind sharing (even in an early phase) a
branch/git-tree so I can start re-basing my series on top?

>
> > 2. Don't attach the CPU to the PM domain topology in case the PSCI PC
> > mode is used. I think this makes it easier, at least as a first step,
> > to understand when runtime PM needs to be used/enabled.
>
> In the PSCI CPUidle driver we can have two distinct struct
> cpuidle_state->enter functions for PC and OSI, no overhead
> for PC, runtime PM for OSI, decoupling done.

Good idea!

>
> We can choose one or the other depending on whether:
>
> OSI iff:
> - OSI is available
> - hierarchical idle states are present in DT
>
> otherwise PC.
>
> That's what this patch does but we will do it in a unified file.

Sure, it makes sense.

>
> > 3. Would it help if I volunteer to help you guys as a maintainer for
> > PSCI. At least for the part of the new code that becomes introduced?
>
> We will do as described above if that makes sense.

Yep, I am okay with your suggestions, assuming I have understood them correctly.

BTW, have you considered to host a git tree for PSCI so we can have
changes pre-integrated and tested in Stephen Rothwell's linux-next
tree?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
