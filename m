Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9DD1D902C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 08:37:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DTzGJuYhle2j9McTJ1fqR03NQNnrqx1u2OqUjhxtPwk=; b=Ve68JC8vN38zUm
	mJCjfk7SItq2a53bTaqAaDLPZnQnm2mtBNjPTocZy7VZe51pnYUpS1EPngzyPNhOXJnRne11L1Y2t
	ESV6ElsU850/tHQnMi4yB0nIN5rAW8sud7eI1oYvpoHwiqvF7mi7qGoEB5xnJbyzvT9iQoemk+WBt
	IJqlcNW2bTry/TozxnQYE35jV4RCAb4NpsQ5gwoCw6jGKmYG2Bl9LZGRPUc2IpOAbZY/85wTnHCM/
	xAnSzQZk0hd2pkVBtDPd6sG2qhgT92EZqfa8/OLa4QzyiP9PetH2idlrQ5lK0mgfkUSwXhsV6KMVR
	LgVMQ4qJl+EYc3RGNRPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1javrw-0003Jx-FC; Tue, 19 May 2020 06:36:52 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1javrn-0003IY-2b
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 06:36:44 +0000
Received: by mail-lf1-x143.google.com with SMTP id w15so2864888lfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 23:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9IsqjRuAWCaVhVcDxcE2+09fLqOzMi+vWO3YPR1neN4=;
 b=hoe49YSJdsYNO2wPLKTzxoari30nrPd3gAk/1WTKv7IU5XRJ46vHjuIB+dXYqLGlkr
 pSaP41CmnXpapDzSX+mODTtbfpiznWXd9LExsFFTKoQiQvgyKaXqbrdSDyyPdmSYjbbd
 bwmvsCjcpCco+kHH5GrxKdAi+YSVmCN8FBuJwyYue4PMkTxkA8+Q3jBLAolla6e6CQdd
 M9xxZIeLTFgVxxBDkkwmPFnQsGS3A7I/WG1L14U/dNsN51oMwdEdoJGEMogYngpdtIhZ
 tm2uvjyWzoh1Zg/Z1u7AGBMzDQB1Se8TvFZJjcCHcBu6SUx4LY+/s7jko28S3REXlbB+
 6ZCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9IsqjRuAWCaVhVcDxcE2+09fLqOzMi+vWO3YPR1neN4=;
 b=Yn8p0uvQyLQQ9kE43QGUWgiPQVm/5s5guE7V80bPPn2/GuaM4Hep3D7nYwRrK48ppE
 3AQ2I2oUaKdRat3j0wj88kv81/of0INWqzosj87YH5jODMt+MzBfjH2hcz7AYCsfo7q+
 iuEjFcOwOspUsLX17WruQ0IKpV4Ye9O3zJKSiv13w391QPSwoajKvY1vKOy7YgIzGOYr
 lxAN544xyMukeH5PeRcdPYnGXXFwjxKGRVszhPwSD78XQKbTFHTplo/xf/IBpWVrgdId
 GPhYwStp2MhYITofQpyxzvtqcq8Ckl5tibLWF89LJccbU4PaOcTCnR8TyvMXPdtELKHT
 mDEg==
X-Gm-Message-State: AOAM533bTEcvVhQGMzrBrVOBMWXMG66EZa5qXLDM3YsjBzjqybQDVV7E
 IpMAcd5jqOBBpTWYYv1xNtm4SsYjoWGcgbczkE+dEQ==
X-Google-Smtp-Source: ABdhPJzVa9jNWcedDcXvI1XSort8U+1CR/e4JL1Sqtj++0RuAqITy6KdgpXelPip4bAabvfFS6VA+t7OAQQDsFO/xIk=
X-Received: by 2002:ac2:560f:: with SMTP id v15mr9069279lfd.160.1589870199328; 
 Mon, 18 May 2020 23:36:39 -0700 (PDT)
MIME-Version: 1.0
References: <1589532593-16428-1-git-send-email-sumit.garg@linaro.org>
 <20200518143455.GB3164@C02TD0UTHF1T.local>
 <20200518145254.pj2mhjxkzk7jnltm@holly.lan>
In-Reply-To: <20200518145254.pj2mhjxkzk7jnltm@holly.lan>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Tue, 19 May 2020 12:06:27 +0530
Message-ID: <CAFA6WYMQuLAKmauifz5m-hJj+uT1LPN37OxYda0Lf0bn+OgJ8g@mail.gmail.com>
Subject: Re: [RFC] arm64: Enable perf events based hard lockup detector
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_233643_158755_4F32663F 
X-CRM114-Status: GOOD (  37.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, jolsa@redhat.com,
 Douglas Anderson <dianders@chromium.org>, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com,
 julien.thierry.kdev@gmail.com, namhyung@kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On Mon, 18 May 2020 at 20:22, Daniel Thompson
<daniel.thompson@linaro.org> wrote:
>
> On Mon, May 18, 2020 at 03:34:55PM +0100, Mark Rutland wrote:
> > Hi Sumit,
> >
> > On Fri, May 15, 2020 at 02:19:53PM +0530, Sumit Garg wrote:
> > > With the recent feature added to enable perf events to use pseudo NMIs
> > > as interrupts on platforms which support GICv3 or later, its now been
> > > possible to enable hard lockup detector (or NMI watchdog) on arm64
> > > platforms. So enable corresponding support.
> >
> > Where/when do we expect to see this used?
> >
> > I thought for server systems we'd expect to have the SBSA watchdog, so
> > why would we need this?
>
> I view the lockup detector as a debug tool rather than a traditional
> watchdog.
>
> Certainly kernel machinery that prints the stack trace of a CPU that
> has got wedged in a manner where it cannot service interrupts should
> have fairly obvious applications for debugging embedded systems.
>

+1

>
>
> >
> > > One thing to note here is that normally lockup detector is initialized
> > > just after the early initcalls but PMU on arm64 comes up much later as
> > > device_initcall(). So we need to re-initialize lockup detection once
> > > PMU has been initialized.
> > >
> > > Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
> > > ---
> > >
> > > This patch is dependent on perf NMI patch-set [1].
> > >
> > > [1] https://patchwork.kernel.org/cover/11047407/
> > >
> > >  arch/arm64/Kconfig             |  2 ++
> > >  arch/arm64/kernel/perf_event.c | 32 ++++++++++++++++++++++++++++++--
> > >  drivers/perf/arm_pmu.c         | 11 +++++++++++
> > >  include/linux/perf/arm_pmu.h   |  2 ++
> > >  4 files changed, 45 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > > index 40fb05d..36f75c2 100644
> > > --- a/arch/arm64/Kconfig
> > > +++ b/arch/arm64/Kconfig
> > > @@ -160,6 +160,8 @@ config ARM64
> > >     select HAVE_NMI
> > >     select HAVE_PATA_PLATFORM
> > >     select HAVE_PERF_EVENTS
> > > +   select HAVE_PERF_EVENTS_NMI if ARM64_PSEUDO_NMI
> > > +   select HAVE_HARDLOCKUP_DETECTOR_PERF if PERF_EVENTS && HAVE_PERF_EVENTS_NMI
> > >     select HAVE_PERF_REGS
> > >     select HAVE_PERF_USER_STACK_DUMP
> > >     select HAVE_REGS_AND_STACK_ACCESS_API
> > > diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> > > index 3ad5c8f..df57360 100644
> > > --- a/arch/arm64/kernel/perf_event.c
> > > +++ b/arch/arm64/kernel/perf_event.c
> > > @@ -20,6 +20,8 @@
> > >  #include <linux/perf/arm_pmu.h>
> > >  #include <linux/platform_device.h>
> > >  #include <linux/smp.h>
> > > +#include <linux/nmi.h>
> > > +#include <linux/cpufreq.h>
> > >
> > >  /* ARMv8 Cortex-A53 specific event types. */
> > >  #define ARMV8_A53_PERFCTR_PREF_LINEFILL                            0xC2
> > > @@ -1190,10 +1192,21 @@ static struct platform_driver armv8_pmu_driver = {
> > >
> > >  static int __init armv8_pmu_driver_init(void)
> > >  {
> > > +   int ret;
> > > +
> > >     if (acpi_disabled)
> > > -           return platform_driver_register(&armv8_pmu_driver);
> > > +           ret = platform_driver_register(&armv8_pmu_driver);
> > >     else
> > > -           return arm_pmu_acpi_probe(armv8_pmuv3_init);
> > > +           ret = arm_pmu_acpi_probe(armv8_pmuv3_init);
> > > +
> > > +   /*
> > > +    * Try to re-initialize lockup detector after PMU init in
> > > +    * case PMU events are triggered via NMIs.
> > > +    */
> > > +   if (arm_pmu_irq_is_nmi())
> > > +           lockup_detector_init();
> > > +
> > > +   return ret;
> > >  }
> > >  device_initcall(armv8_pmu_driver_init)
> > >
> > > @@ -1225,3 +1238,18 @@ void arch_perf_update_userpage(struct perf_event *event,
> > >     userpg->time_shift = (u16)shift;
> > >     userpg->time_offset = -now;
> > >  }
> > > +
> > > +#ifdef CONFIG_HARDLOCKUP_DETECTOR_PERF
> > > +#define SAFE_MAX_CPU_FREQ  4000000000UL // 4 GHz
> >
> > Why is 4GHz "safe"?
> >
> > There's no architectural requirement on max frequency, and it's
> > conceviable that there could be parts faster than this.
> >
> > If the frequency is critical, then we should bail out when it is
> > unknown rather than guessing. If it is not cirital then we should
> > explain what the requirements are and why using a hard-coded value is
> > sane.

The frequency is critical in the sense that it shouldn't lead to a
timeout less than watchdog threshold (10 sec.) for hard-lockup
detector. And we can't simply bail out here, since there could be
platforms which doesn't implement cpufreq driver (eg. Developerbox).

I chose 4GHz as a safe maximum here as I couldn't find any real parts
as of now running faster than 4GHz. But I agree with you that
architecture doesn't put any restrictions on max. frequency. So we can
certainly put a higher hardcoded value here and the only side effect
of this would be a bigger hard-lockup detector timeout (which I think
should be acceptable) on parts which are running slower (eg. 1GHz on
Developerbox) and doesn't possess a cpufreq driver.

> >
> > > +u64 hw_nmi_get_sample_period(int watchdog_thresh)
> > > +{
> > > +   unsigned int cpu = smp_processor_id();
> > > +   unsigned int max_cpu_freq;
> > > +
> > > +   max_cpu_freq = cpufreq_get_hw_max_freq(cpu);
> > > +   if (max_cpu_freq)
> > > +           return (u64)max_cpu_freq * 1000 * watchdog_thresh;
> > > +   else
> > > +           return (u64)SAFE_MAX_CPU_FREQ * watchdog_thresh;
> > > +}
> >
> > I take it this uses CPU cycles?

Yes its based on perf event with config attribute as PERF_COUNT_HW_CPU_CYCLES.

> >
> > AFAIK those can be gated in idle/retention states (e.g. for WFI/WFE or
> > any other instruction that could block). So if the CPU were blocked on
> > one of those, the counter would never overflow and trigger the
> > interrupt.
> >
> > i.e. this isn't going to detect a hard lockup of that sort.

Isn't this a correct behaviour as we shouldn't raise a false
hard-lockup detection while the CPU is actually in idle/retention
states? IMO, this feature is useful for debugging purposes when a
particular CPU is stuck in a deadlock loop with interrupts disabled.

> >
> > > +#endif
> > > diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
> > > index f96cfc4..691dfc9 100644
> > > --- a/drivers/perf/arm_pmu.c
> > > +++ b/drivers/perf/arm_pmu.c
> > > @@ -718,6 +718,17 @@ static int armpmu_get_cpu_irq(struct arm_pmu *pmu, int cpu)
> > >     return per_cpu(hw_events->irq, cpu);
> > >  }
> > >
> > > +bool arm_pmu_irq_is_nmi(void)
> > > +{
> > > +   const struct pmu_irq_ops *irq_ops;
> > > +
> > > +   irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
> > > +   if (irq_ops == &pmunmi_ops || irq_ops == &percpu_pmunmi_ops)
> > > +           return true;
> > > +   else
> > > +           return false;
> >
> > You can simplify:
> >
> > | if (x)
> > |     return true;
> > | else
> > |     return false;
> >
> > ... to:
> >
> > | return x;
> >

Looks clean, will use it instead.

-Sumit

> > Thanks,
> > Mark.
> >
> > > +}
> > > +
> > >  /*
> > >   * PMU hardware loses all context when a CPU goes offline.
> > >   * When a CPU is hotplugged back in, since some hardware registers are
> > > diff --git a/include/linux/perf/arm_pmu.h b/include/linux/perf/arm_pmu.h
> > > index d9b8b76..a71f029 100644
> > > --- a/include/linux/perf/arm_pmu.h
> > > +++ b/include/linux/perf/arm_pmu.h
> > > @@ -155,6 +155,8 @@ int arm_pmu_acpi_probe(armpmu_init_fn init_fn);
> > >  static inline int arm_pmu_acpi_probe(armpmu_init_fn init_fn) { return 0; }
> > >  #endif
> > >
> > > +bool arm_pmu_irq_is_nmi(void);
> > > +
> > >  /* Internal functions only for core arm_pmu code */
> > >  struct arm_pmu *armpmu_alloc(void);
> > >  struct arm_pmu *armpmu_alloc_atomic(void);
> > > --
> > > 2.7.4
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
