Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4541D7BE1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 16:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z9cEMUP0S2u7NLG19oWIQSMTfePGIPqrzuCqUjZfvM0=; b=N5e7mAAnr9zmTs
	QCrf3SJaiMRgVT9aReGy7ONL1ZB9oG/LisEmM9ciqPtOQrniWpX+nhEug7s6UowbqsTs1eRX2FMlX
	c7Fk3wB4jNYWjJOYyoJMVM9rnTC/PMBY5ARRSmuy8UFXaygEz49ZPEuIXTvZvGbsRGU/9RxXL8GOd
	1p3mLB7u8Rm8MQdEHqn7tR/s6MqtMaI7Hov399IsTTZUR+LTsuWYQl/sbrPGLUW3oRaBUrqZMOUNh
	QKJI/mrJYQbDCOZXmYjX3LcUzahVhay5MP6u8iRoP/gdwaeyItw3Qv01kUgkSyCgEz6GylIttFMpS
	QOoaOG6g7fulUsOOOFEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jah8h-0004Wo-Id; Mon, 18 May 2020 14:53:11 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jah8W-0004WB-O5
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 14:53:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id l11so12303341wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 07:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=unevtj6F3HXmg6fIfqy6fcD1jKvazWhdtg7cxtj1sgk=;
 b=fCXCQ2fyqHD7lnNDYzNsYLp0vku5D6LqygeP0VcQHCC1MaZoHP4ZgNhXrjlR6Z6ljm
 yGmiVaepejH3nVtXUEL0QsvaZhESu7zT9SlUowI42svVSgZFUwXN/EcYelsJKkQIrC9I
 UzfjqUeNZPUzf0SZaaxxU+k9bTKQWOFEt1/yMR9RohozE5lk0/9ztwdVTwefL9R80Gyy
 v0gRWClkv9PA9cSR/TAPeCifORzIQc4XQ1Zq7zTbdwdt+kU5UD2CTatQg9Ew7lgTxOdX
 JYLUbW6F2ukBsRfSPSVc01aIhdNYAJ+I9f3NpP5V2J/4ObGuMk0wsXfnvoUebY8AfWtw
 d99A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=unevtj6F3HXmg6fIfqy6fcD1jKvazWhdtg7cxtj1sgk=;
 b=bajJfeQJXPfJcn+E29MGBA526wfLhAgmSMB4+L4wgmajBT9VrZPoHruQlbz5aEh3nV
 dfrY72/6yCcbzkhyXXCS73IZO3CQFZbuQ9Y9AEQf3KNzezPX1aXutKblvCxp2csJu9XT
 EHUShZ/Cx95rHNOG4WtyDOhv/CL5WCqMUaULCkIK0pNY/RY5PMrOzalQLAAyagVHQDyw
 47an5Hpqp4xTndhEjirbgbc7VedyCV5BlNzlWblZ1fmRqlaiY9hAkifgNG2rrHYON+R3
 U3qNWSB9jtrq45+PRg39mw06qDraf3kvyC+1YeFEul49LecyC3yfsmOjFAv3nzmq0h/7
 y1ug==
X-Gm-Message-State: AOAM5311P2SsUCOWMMPlkNEX93Qb4Mno+VKO1oqjeECeWIYwj6FBOIdV
 TuFAkEuItcCEcTQcCzdS+Q289A==
X-Google-Smtp-Source: ABdhPJwDDe6pfP9nYkXTViy9RAlKVDVTn1+FhAeb3MP5mR90cT+UrGaTXWuD6b6UThoWwWN32is7zg==
X-Received: by 2002:adf:dc81:: with SMTP id r1mr21933291wrj.0.1589813577571;
 Mon, 18 May 2020 07:52:57 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id r6sm304160wmh.1.2020.05.18.07.52.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 07:52:56 -0700 (PDT)
Date: Mon, 18 May 2020 15:52:54 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [RFC] arm64: Enable perf events based hard lockup detector
Message-ID: <20200518145254.pj2mhjxkzk7jnltm@holly.lan>
References: <1589532593-16428-1-git-send-email-sumit.garg@linaro.org>
 <20200518143455.GB3164@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518143455.GB3164@C02TD0UTHF1T.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_075300_815482_6304E676 
X-CRM114-Status: GOOD (  31.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: Sumit Garg <sumit.garg@linaro.org>, peterz@infradead.org,
 catalin.marinas@arm.com, jolsa@redhat.com, dianders@chromium.org,
 acme@kernel.org, alexander.shishkin@linux.intel.com, mingo@redhat.com,
 julien.thierry.kdev@gmail.com, namhyung@kernel.org, tglx@linutronix.de,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 03:34:55PM +0100, Mark Rutland wrote:
> Hi Sumit,
> 
> On Fri, May 15, 2020 at 02:19:53PM +0530, Sumit Garg wrote:
> > With the recent feature added to enable perf events to use pseudo NMIs
> > as interrupts on platforms which support GICv3 or later, its now been
> > possible to enable hard lockup detector (or NMI watchdog) on arm64
> > platforms. So enable corresponding support.
> 
> Where/when do we expect to see this used?
> 
> I thought for server systems we'd expect to have the SBSA watchdog, so
> why would we need this?

I view the lockup detector as a debug tool rather than a traditional
watchdog.

Certainly kernel machinery that prints the stack trace of a CPU that
has got wedged in a manner where it cannot service interrupts should
have fairly obvious applications for debugging embedded systems.


Daniel.


> 
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
> > 
> >  arch/arm64/Kconfig             |  2 ++
> >  arch/arm64/kernel/perf_event.c | 32 ++++++++++++++++++++++++++++++--
> >  drivers/perf/arm_pmu.c         | 11 +++++++++++
> >  include/linux/perf/arm_pmu.h   |  2 ++
> >  4 files changed, 45 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 40fb05d..36f75c2 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -160,6 +160,8 @@ config ARM64
> >  	select HAVE_NMI
> >  	select HAVE_PATA_PLATFORM
> >  	select HAVE_PERF_EVENTS
> > +	select HAVE_PERF_EVENTS_NMI if ARM64_PSEUDO_NMI
> > +	select HAVE_HARDLOCKUP_DETECTOR_PERF if PERF_EVENTS && HAVE_PERF_EVENTS_NMI
> >  	select HAVE_PERF_REGS
> >  	select HAVE_PERF_USER_STACK_DUMP
> >  	select HAVE_REGS_AND_STACK_ACCESS_API
> > diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> > index 3ad5c8f..df57360 100644
> > --- a/arch/arm64/kernel/perf_event.c
> > +++ b/arch/arm64/kernel/perf_event.c
> > @@ -20,6 +20,8 @@
> >  #include <linux/perf/arm_pmu.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/smp.h>
> > +#include <linux/nmi.h>
> > +#include <linux/cpufreq.h>
> >  
> >  /* ARMv8 Cortex-A53 specific event types. */
> >  #define ARMV8_A53_PERFCTR_PREF_LINEFILL				0xC2
> > @@ -1190,10 +1192,21 @@ static struct platform_driver armv8_pmu_driver = {
> >  
> >  static int __init armv8_pmu_driver_init(void)
> >  {
> > +	int ret;
> > +
> >  	if (acpi_disabled)
> > -		return platform_driver_register(&armv8_pmu_driver);
> > +		ret = platform_driver_register(&armv8_pmu_driver);
> >  	else
> > -		return arm_pmu_acpi_probe(armv8_pmuv3_init);
> > +		ret = arm_pmu_acpi_probe(armv8_pmuv3_init);
> > +
> > +	/*
> > +	 * Try to re-initialize lockup detector after PMU init in
> > +	 * case PMU events are triggered via NMIs.
> > +	 */
> > +	if (arm_pmu_irq_is_nmi())
> > +		lockup_detector_init();
> > +
> > +	return ret;
> >  }
> >  device_initcall(armv8_pmu_driver_init)
> >  
> > @@ -1225,3 +1238,18 @@ void arch_perf_update_userpage(struct perf_event *event,
> >  	userpg->time_shift = (u16)shift;
> >  	userpg->time_offset = -now;
> >  }
> > +
> > +#ifdef CONFIG_HARDLOCKUP_DETECTOR_PERF
> > +#define SAFE_MAX_CPU_FREQ	4000000000UL // 4 GHz
> 
> Why is 4GHz "safe"?
> 
> There's no architectural requirement on max frequency, and it's
> conceviable that there could be parts faster than this.
> 
> If the frequency is critical, then we should bail out when it is
> unknown rather than guessing. If it is not cirital then we should
> explain what the requirements are and why using a hard-coded value is
> sane.
> 
> > +u64 hw_nmi_get_sample_period(int watchdog_thresh)
> > +{
> > +	unsigned int cpu = smp_processor_id();
> > +	unsigned int max_cpu_freq;
> > +
> > +	max_cpu_freq = cpufreq_get_hw_max_freq(cpu);
> > +	if (max_cpu_freq)
> > +		return (u64)max_cpu_freq * 1000 * watchdog_thresh;
> > +	else
> > +		return (u64)SAFE_MAX_CPU_FREQ * watchdog_thresh;
> > +}
> 
> I take it this uses CPU cycles?
> 
> AFAIK those can be gated in idle/retention states (e.g. for WFI/WFE or
> any other instruction that could block). So if the CPU were blocked on
> one of those, the counter would never overflow and trigger the
> interrupt.
> 
> i.e. this isn't going to detect a hard lockup of that sort.
> 
> > +#endif
> > diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
> > index f96cfc4..691dfc9 100644
> > --- a/drivers/perf/arm_pmu.c
> > +++ b/drivers/perf/arm_pmu.c
> > @@ -718,6 +718,17 @@ static int armpmu_get_cpu_irq(struct arm_pmu *pmu, int cpu)
> >  	return per_cpu(hw_events->irq, cpu);
> >  }
> >  
> > +bool arm_pmu_irq_is_nmi(void)
> > +{
> > +	const struct pmu_irq_ops *irq_ops;
> > +
> > +	irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
> > +	if (irq_ops == &pmunmi_ops || irq_ops == &percpu_pmunmi_ops)
> > +		return true;
> > +	else
> > +		return false;
> 
> You can simplify:
> 
> | if (x)
> |	return true;
> | else
> |	return false;
> 
> ... to:
> 
> | return x;
> 
> Thanks,
> Mark.
> 
> > +}
> > +
> >  /*
> >   * PMU hardware loses all context when a CPU goes offline.
> >   * When a CPU is hotplugged back in, since some hardware registers are
> > diff --git a/include/linux/perf/arm_pmu.h b/include/linux/perf/arm_pmu.h
> > index d9b8b76..a71f029 100644
> > --- a/include/linux/perf/arm_pmu.h
> > +++ b/include/linux/perf/arm_pmu.h
> > @@ -155,6 +155,8 @@ int arm_pmu_acpi_probe(armpmu_init_fn init_fn);
> >  static inline int arm_pmu_acpi_probe(armpmu_init_fn init_fn) { return 0; }
> >  #endif
> >  
> > +bool arm_pmu_irq_is_nmi(void);
> > +
> >  /* Internal functions only for core arm_pmu code */
> >  struct arm_pmu *armpmu_alloc(void);
> >  struct arm_pmu *armpmu_alloc_atomic(void);
> > -- 
> > 2.7.4
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
