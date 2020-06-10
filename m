Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AEF1F4CBA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 07:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULDnwxaFPujOLRQVfrz+5+/E8SiSJU4XOUXOQJjKh94=; b=eMmReY59t1WAvU
	8FZ4PBpR3hyPIGMfH5nvZNpF2sSMDeXRRGsf6+MfvsTjtsuK9z3ZW/iz3ByiT6RRDmboGyQLXSqzU
	FdKBN8/4K0wMXKzsJ52BmA055nTPcI9ueyG/n/gWaW+JiRHgfhrXy/w6nooaU3Ko3CgTm2rEUhc4U
	ag6VRVXh5BNnc7nZnug4LiFxvBh6DTBwVMEoU1GYzOQ17Lu5yN9mXzpJxoUDB+5W8xKmMe87SQ9HY
	mbzFL+Cj5dwyN7NoikLsUZVaAjYGtnhlUQBST8krknE3Jow2b/ljsRkUiCZ/1up9w/R3eetmykUAh
	q+vhDjB1s1HuDWjIqVuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jistL-0000mt-KX; Wed, 10 Jun 2020 05:03:11 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jistD-0000mF-Rg
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 05:03:05 +0000
Received: by mail-lj1-x244.google.com with SMTP id n23so800839ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 22:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oZHlftmWeFQbO/o4ojQIvHT9HUS+IliGC7NVIJIzxh4=;
 b=QuGIKBEqm75+UljnwmxsEGtapzRazjZ0GJcwAWhgPNswyK/hiTscGxipDD6JtBQOSh
 l+1sdLOO/n0DrarwU5fWSTGKEOuSf+PY+dBAactxULTaaA8ivk1ejK088QmHAAEbQq/O
 J3BUMks1DVg505/Q8ECp8shnr/bhJTXswyZ9/lqcRv0yvQPxAuCSP+tnamHBfrYeWX9f
 gNqEYB47k/ECWiQ0SximzkurVxncsRqiJDMEgRWDQx6T19W70GKwQjuyoMUYGNBQY/HZ
 5Y4JVstjM+j1FXL2v/3u5rhuQfjK9GsF1G93Q7V1B5JXclv2klEyt1JZF0+r0Ts0bD2d
 YRyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oZHlftmWeFQbO/o4ojQIvHT9HUS+IliGC7NVIJIzxh4=;
 b=Gvqw2yUSCMAEOXn68TJuIUVX5pZ+G2VCJXunvhOZ7OqdPXqKd9zHf4TLmVMfx02qLD
 bUT1Gp/pFkgR/GH70ph1sfiH6UKedMbAzRFy0whaLS06xPhZjQhDm6z1/RB7X4ydqcwx
 ydAYPFwEjv00ZXDwRzA40hoELuXBNekliUm7auSwgMA/HmXxTCiP8je3j/gPUBo17hZU
 Bo8L4zAJn3qQIpFJLb12urAHKdeI6Y/Y2ae4h3zHHxqoqsM9EotFIFYbMMwQReT+pn13
 YBaqfCGyoyNzBPFqi5Z788j8aEWXuNZk/fvNfNldsqrgjjWllQi+IHIzEP1Je3w9Hy8F
 X51w==
X-Gm-Message-State: AOAM531SLb8oGs9T2X7+8TZWnFe9MLb071DC4LSVd/QFRDI/N1vh0ugi
 sprCBAKA/qcmPI+7WHy8NOZaeuBMNfDVTGmfGy3h+g==
X-Google-Smtp-Source: ABdhPJx5aD3Y9Wn1iD8aoZouZgWz2nll5BDKJ81Gu8zaeBkHWrSKN4Mdz+zTSwq/R4mBwPHIlINFFuyGnPgme6AfUZA=
X-Received: by 2002:a2e:7e08:: with SMTP id z8mr686481ljc.339.1591765380781;
 Tue, 09 Jun 2020 22:03:00 -0700 (PDT)
MIME-Version: 1.0
References: <1591272551-21326-1-git-send-email-sumit.garg@linaro.org>
 <159175395730.242598.3354488505981092317@swboyd.mtv.corp.google.com>
In-Reply-To: <159175395730.242598.3354488505981092317@swboyd.mtv.corp.google.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Wed, 10 Jun 2020 10:32:49 +0530
Message-ID: <CAFA6WYNnx+aEfMKmWxwesj2JQga-6H3pOOdBpspkBkLhTdpihQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: Enable perf events based hard lockup detector
To: Stephen Boyd <swboyd@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_220303_925853_B6760B8B 
X-CRM114-Status: GOOD (  24.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Daniel Thompson <daniel.thompson@linaro.org>, Will Deacon <will@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>,
 Douglas Anderson <dianders@chromium.org>, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com,
 julien.thierry.kdev@gmail.com, namhyung@kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, jolsa@redhat.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 10 Jun 2020 at 07:22, Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Sumit Garg (2020-06-04 05:09:11)
> > With the recent feature added to enable perf events to use pseudo NMIs
> > as interrupts on platforms which support GICv3 or later, its now been
> > possible to enable hard lockup detector (or NMI watchdog) on arm64
> > platforms. So enable corresponding support.
> >
> > One thing to note here is that normally lockup detector is initialized
> > just after the early initcalls but PMU on arm64 comes up much later as
> > device_initcall(). So we need to re-initialize lockup detection once
> > PMU has been initialized.
> >
> > Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
> > ---
> >
> > This patch is dependent on perf NMI patch-set [1].
> >
> > [1] https://patchwork.kernel.org/cover/11047407/
>
> That patch series is from last year. Any progress on it?
>

Alexandru (in Cc) has been working on rebasing and reworking this
patch-set with WIP-pmu-nmi branch [1]. For more information refer to
this thread [2].

[1] http://www.linux-arm.org/git?p=linux-ae.git;a=shortlog;h=refs/heads/WIP-pmu-nmi
[2] https://lkml.org/lkml/2020/5/20/431

> >
> > Changes since RFC:
> > - Rebased on top of Alex's WIP-pmu-nmi branch.
> > - Add comment for safe max. CPU frequency.
> > - Misc. cleanup.
> >
> >  arch/arm64/Kconfig             |  2 ++
> >  arch/arm64/kernel/perf_event.c | 41 +++++++++++++++++++++++++++++++++++++++--
> >  drivers/perf/arm_pmu.c         |  9 +++++++++
> >  include/linux/perf/arm_pmu.h   |  2 ++
> >  4 files changed, 52 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> > index e109aa5..a37f018 100644
> > --- a/arch/arm64/kernel/perf_event.c
> > +++ b/arch/arm64/kernel/perf_event.c
> >  #define ARMV8_A53_PERFCTR_PREF_LINEFILL                                0xC2
> > @@ -1226,3 +1239,27 @@ void arch_perf_update_userpage(struct perf_event *event,
> >         userpg->time_shift = (u16)shift;
> >         userpg->time_offset = -now;
> >  }
> > +
> > +#ifdef CONFIG_HARDLOCKUP_DETECTOR_PERF
> > +/*
> > + * Safe maximum CPU frequency in case a particular platform doesn't implement
> > + * cpufreq driver. Although, architecture doesn't put any restrictions on
> > + * maximum frequency but 5 GHz seems to be safe maximum given the available
> > + * Arm CPUs in the market which are clocked much less than 5 GHz. On the other
> > + * hand, we can't make it much higher as it would lead to a large hard-lockup
> > + * detection timeout on parts which are running slower (eg. 1GHz on
> > + * Developerbox) and doesn't possess a cpufreq driver.
> > + */
> > +#define SAFE_MAX_CPU_FREQ      5000000000UL // 5 GHz
> > +u64 hw_nmi_get_sample_period(int watchdog_thresh)
>
> Is it ever negative? Odd that this API uses a signed integer.
>

No it isn't expected to be negative.

> > +{
> > +       unsigned int cpu = smp_processor_id();
> > +       unsigned int max_cpu_freq;
> > +
> > +       max_cpu_freq = cpufreq_get_hw_max_freq(cpu);
> > +       if (max_cpu_freq)
> > +               return (u64)max_cpu_freq * 1000 * watchdog_thresh;
> > +       else
> > +               return (u64)SAFE_MAX_CPU_FREQ * watchdog_thresh;
>
> I'd rather see the return unindented and the else dropped.

Okay.

>
> > +}
> > +#endif
> > diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
> > index f96cfc4..6c25c0d1 100644
> > --- a/drivers/perf/arm_pmu.c
> > +++ b/drivers/perf/arm_pmu.c
> > @@ -718,6 +718,15 @@ static int armpmu_get_cpu_irq(struct arm_pmu *pmu, int cpu)
> >         return per_cpu(hw_events->irq, cpu);
> >  }
> >
> > +bool arm_pmu_irq_is_nmi(void)
> > +{
> > +       const struct pmu_irq_ops *irq_ops;
> > +
> > +       irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
>
> Can we use this_cpu_ptr()?

this_cpu_ptr() sounds more apt here, will use it instead.

-Sumit

>
> > +
> > +       return irq_ops == &pmunmi_ops || irq_ops == &percpu_pmunmi_ops;
> > +}
> > +
> >  /*
> >   * PMU hardware loses all context when a CPU goes offline.
> >   * When a CPU is hotplugged back in, since some hardware registers are

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
