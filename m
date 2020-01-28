Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E8F14B126
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 09:54:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDwAZzZM22XiuamODTzjMyKqJQjytMCh5FzeQXD58c8=; b=qy2kfEiitBU4bF
	mg+AaN7eHVWKIsRxYpznsGyo6qFWgTaNucE9wZ+K1PCfYfQ0HnyUwwowVMfQpSlFMyCgxTFZBk5+l
	iYAgK235Y5BurxD4dxRuGJ2My+HDU9f4PGYDJ3wIU38ZiOsxGT5poqadz1quhKTbH9maOiwn1xdb5
	/A7E0rKZthQdIKFYOScAGsvB0npeHSZd9aSEf2LVTzMvB3R4oZPg97PQwKctCSqi6DQyVe/XJ/naU
	pNwc7bWhffYy/96CJAQxJJq2Oe5YK8SwZm/Yldz7a2e9KSvs/Xi+T3aMmBXNaJYN9igzqnhW44y2I
	cTOeSG0Nwm8Rhe+yO4Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwMdU-0004un-2S; Tue, 28 Jan 2020 08:54:16 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwMdE-0004uN-CW
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 08:54:05 +0000
Received: by mail-wr1-x443.google.com with SMTP id c14so15016755wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 00:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thegoodpenguin-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Kgp9Jwiz1uKaQL/OUlkTuFc8Er2g+wCKlj7MsI5NStg=;
 b=a/k2f9RDaC3rFRttMu+hwVSU2nr+XZ+Rdsjg87QW8toXPmkR3/tTvMqzdofJQtYc+v
 dD2XOuh8lLvC7rH0cIyxf9vU/R/RiuOgo5tovo2DQSMuH1ewph9lQfHujM4xC3ChEQAp
 2RDN/sAsAHJL3bGEux+oCZCWQBrA2qxxUZPek4sKiEiNPaogwLeAz1wj3pJfq0rFbUV+
 LQbVAzJwXvBBxsidb0Qh2TRt17dvCaq1IgvufnyGjsTtLaYiJ7aXMZxLH86Se5Ajo+9X
 bo14QaigH7CWCheby1whxsJRa22ocVwSL4cxucETxrpyCMZfNsqmRAbapJXkOhYEyzlF
 sm/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Kgp9Jwiz1uKaQL/OUlkTuFc8Er2g+wCKlj7MsI5NStg=;
 b=bYgtJg7Jfb5n7MZWHoXSog1t2D2yk2rU5k4NMkEQ6PqAA4Q59YWoMUMsXBk1boy+TC
 c/tPmAb3War3DXggSo9RJ6AGO8F2b3bFVOLHBdbQjMWUROFh8ItRrArRX5dz65t8MrM6
 CSfojdSSljd3h+es/5d5HJSExAyJNAt9MLYadfsu++NeV2Wwa8czsK9DBabvJYM9FU4F
 COA3tG3EX4aIIqh3MY1XbMNtoqcm4Fc0G5qE0w52zyZgQpr9ePrBYVGhfH7HyQR3uFHQ
 upRuMtYTFcTAyw2JMb6oRJZCpv9zYF7oi4UjXPAk11enzSzhfArbvvvon4YPpX7p2E3B
 j+JA==
X-Gm-Message-State: APjAAAWHlMJ4++lAGTopXygq0FchAlLkbI+L4rwZViLpQjSSQZXakxIu
 4USQIlWcqzcN7Az0u1eLU5twLQ==
X-Google-Smtp-Source: APXvYqxlQbYz8+ShyJJuzTJuznkR9goNX0263z9i3QDmTgg0gUqt/myN5Fxp1PDtZqfRgz34/puwIw==
X-Received: by 2002:a05:6000:118d:: with SMTP id
 g13mr26196125wrx.141.1580201637988; 
 Tue, 28 Jan 2020 00:53:57 -0800 (PST)
Received: from big-machine ([2a00:23c5:dd80:8400:9d15:2a7c:ad89:e0d1])
 by smtp.gmail.com with ESMTPSA id e8sm24508612wrt.7.2020.01.28.00.53.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 00:53:57 -0800 (PST)
Date: Tue, 28 Jan 2020 08:53:55 +0000
From: Andrew Murray <amurray@thegoodpenguin.co.uk>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v5 3/3] arm64: perf: Add support for ARMv8.5-PMU 64-bit
 counters
Message-ID: <20200128085355.GB20189@big-machine>
References: <1580125469-23887-1-git-send-email-andrew.murray@arm.com>
 <1580125469-23887-4-git-send-email-andrew.murray@arm.com>
 <c948d8202b82bccbac0ec2a4f71ce94b@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c948d8202b82bccbac0ec2a4f71ce94b@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_005400_840595_141619A6 
X-CRM114-Status: GOOD (  32.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 12:32:22PM +0000, Marc Zyngier wrote:
> On 2020-01-27 11:44, Andrew Murray wrote:
> > At present ARMv8 event counters are limited to 32-bits, though by
> > using the CHAIN event it's possible to combine adjacent counters to
> > achieve 64-bits. The perf config1:0 bit can be set to use such a
> > configuration.
> > 
> > With the introduction of ARMv8.5-PMU support, all event counters can
> > now be used as 64-bit counters.
> > 
> > Let's enable 64-bit event counters where support exists. Unless the
> > user sets config1:0 we will adjust the counter value such that it
> > overflows upon 32-bit overflow. This follows the same behaviour as
> > the cycle counter which has always been (and remains) 64-bits.
> > 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > ---
> >  arch/arm64/include/asm/perf_event.h |  3 +-
> >  arch/arm64/include/asm/sysreg.h     |  1 +
> >  arch/arm64/kernel/perf_event.c      | 86
> > +++++++++++++++++++++++++++++--------
> >  include/linux/perf/arm_pmu.h        |  1 +
> >  4 files changed, 73 insertions(+), 18 deletions(-)
> > 
> > diff --git a/arch/arm64/include/asm/perf_event.h
> > b/arch/arm64/include/asm/perf_event.h
> > index 2bdbc79..e7765b6 100644
> > --- a/arch/arm64/include/asm/perf_event.h
> > +++ b/arch/arm64/include/asm/perf_event.h
> > @@ -176,9 +176,10 @@
> >  #define ARMV8_PMU_PMCR_X	(1 << 4) /* Export to ETM */
> >  #define ARMV8_PMU_PMCR_DP	(1 << 5) /* Disable CCNT if non-invasive
> > debug*/
> >  #define ARMV8_PMU_PMCR_LC	(1 << 6) /* Overflow on 64 bit cycle counter
> > */
> > +#define ARMV8_PMU_PMCR_LP	(1 << 7) /* Long event counter enable */
> >  #define	ARMV8_PMU_PMCR_N_SHIFT	11	 /* Number of counters supported */
> >  #define	ARMV8_PMU_PMCR_N_MASK	0x1f
> > -#define	ARMV8_PMU_PMCR_MASK	0x7f	 /* Mask for writable bits */
> > +#define	ARMV8_PMU_PMCR_MASK	0xff	 /* Mask for writable bits */
> > 
> >  /*
> >   * PMOVSR: counters overflow flag status reg
> > diff --git a/arch/arm64/include/asm/sysreg.h
> > b/arch/arm64/include/asm/sysreg.h
> > index 1009878..30c1e18 100644
> > --- a/arch/arm64/include/asm/sysreg.h
> > +++ b/arch/arm64/include/asm/sysreg.h
> > @@ -675,6 +675,7 @@
> >  #define ID_DFR0_PERFMON_SHIFT		24
> > 
> >  #define ID_DFR0_EL1_PMUVER_8_1		4
> > +#define ID_DFR0_EL1_PMUVER_8_4		5
> 
> This doesn't seem right, see below.

Yes you're right - I'll rename this to ID_AA64DFR0_EL1_PMUVER_8_4


> 
> >  #define ID_AA64DFR0_EL1_PMUVER_8_1	4
> > 
> >  #define ID_ISAR5_RDM_SHIFT		24
> > diff --git a/arch/arm64/kernel/perf_event.c
> > b/arch/arm64/kernel/perf_event.c
> > index e40b656..4e27f90 100644
> > --- a/arch/arm64/kernel/perf_event.c
> > +++ b/arch/arm64/kernel/perf_event.c
> > @@ -285,6 +285,17 @@ static struct attribute_group
> > armv8_pmuv3_format_attr_group = {
> >  #define	ARMV8_IDX_COUNTER_LAST(cpu_pmu) \
> >  	(ARMV8_IDX_CYCLE_COUNTER + cpu_pmu->num_events - 1)
> > 
> > +
> > +/*
> > + * We unconditionally enable ARMv8.5-PMU long event counter support
> > + * (64-bit events) where supported. Indicate if this arm_pmu has long
> > + * event counter support.
> > + */
> > +static bool armv8pmu_has_long_event(struct arm_pmu *cpu_pmu)
> > +{
> > +	return (cpu_pmu->pmuver > ID_DFR0_EL1_PMUVER_8_4);
> 
> Isn't the ID_DFR0 prefix for AArch32? Although this doesn't change much
> the final result (the values happen to be the same on both architectures),
> it is nonetheless a bit confusing.

Yes - ID_DFR0 is the AArch32 register relating to the AArch32 state, that's
mapped onto the AArch64 ID_DFR0_EL1 register. The ID_AA64DFR0_EL1 register
relates to the AArch64 state.


> 
> > +}
> > +
> >  /*
> >   * We must chain two programmable counters for 64 bit events,
> >   * except when we have allocated the 64bit cycle counter (for CPU
> > @@ -294,9 +305,11 @@ static struct attribute_group
> > armv8_pmuv3_format_attr_group = {
> >  static inline bool armv8pmu_event_is_chained(struct perf_event *event)
> >  {
> >  	int idx = event->hw.idx;
> > +	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
> > 
> >  	return !WARN_ON(idx < 0) &&
> >  	       armv8pmu_event_is_64bit(event) &&
> > +	       !armv8pmu_has_long_event(cpu_pmu) &&
> >  	       (idx != ARMV8_IDX_CYCLE_COUNTER);
> >  }
> > 
> > @@ -345,7 +358,7 @@ static inline void armv8pmu_select_counter(int idx)
> >  	isb();
> >  }
> > 
> > -static inline u32 armv8pmu_read_evcntr(int idx)
> > +static inline u64 armv8pmu_read_evcntr(int idx)
> >  {
> >  	armv8pmu_select_counter(idx);
> >  	return read_sysreg(pmxevcntr_el0);
> > @@ -362,6 +375,44 @@ static inline u64 armv8pmu_read_hw_counter(struct
> > perf_event *event)
> >  	return val;
> >  }
> > 
> > +/*
> > + * The cycle counter is always a 64-bit counter. When ARMV8_PMU_PMCR_LP
> > + * is set the event counters also become 64-bit counters. Unless the
> > + * user has requested a long counter (attr.config1) then we want to
> > + * interrupt upon 32-bit overflow - we achieve this by applying a bias.
> > + */
> > +static bool armv8pmu_event_needs_bias(struct perf_event *event)
> > +{
> > +	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
> > +	struct hw_perf_event *hwc = &event->hw;
> > +	int idx = hwc->idx;
> > +
> > +	if (armv8pmu_event_is_64bit(event))
> > +		return false;
> > +
> > +	if (armv8pmu_has_long_event(cpu_pmu) ||
> > +	    idx == ARMV8_IDX_CYCLE_COUNTER)
> > +		return true;
> > +
> > +	return false;
> > +}
> > +
> > +static u64 armv8pmu_bias_long_counter(struct perf_event *event, u64
> > value)
> > +{
> > +	if (armv8pmu_event_needs_bias(event))
> > +		value |= GENMASK(63, 32);
> > +
> > +	return value;
> > +}
> > +
> > +static u64 armv8pmu_unbias_long_counter(struct perf_event *event, u64
> > value)
> > +{
> > +	if (armv8pmu_event_needs_bias(event))
> > +		value &= ~GENMASK(63, 32);
> > +
> > +	return value;
> > +}
> > +
> >  static u64 armv8pmu_read_counter(struct perf_event *event)
> >  {
> >  	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
> > @@ -377,10 +428,10 @@ static u64 armv8pmu_read_counter(struct perf_event
> > *event)
> >  	else
> >  		value = armv8pmu_read_hw_counter(event);
> > 
> > -	return value;
> > +	return  armv8pmu_unbias_long_counter(event, value);
> >  }
> > 
> > -static inline void armv8pmu_write_evcntr(int idx, u32 value)
> > +static inline void armv8pmu_write_evcntr(int idx, u64 value)
> >  {
> >  	armv8pmu_select_counter(idx);
> >  	write_sysreg(value, pmxevcntr_el0);
> > @@ -405,20 +456,14 @@ static void armv8pmu_write_counter(struct
> > perf_event *event, u64 value)
> >  	struct hw_perf_event *hwc = &event->hw;
> >  	int idx = hwc->idx;
> > 
> > +	value = armv8pmu_bias_long_counter(event, value);
> > +
> >  	if (!armv8pmu_counter_valid(cpu_pmu, idx))
> >  		pr_err("CPU%u writing wrong counter %d\n",
> >  			smp_processor_id(), idx);
> > -	else if (idx == ARMV8_IDX_CYCLE_COUNTER) {
> > -		/*
> > -		 * The cycles counter is really a 64-bit counter.
> > -		 * When treating it as a 32-bit counter, we only count
> > -		 * the lower 32 bits, and set the upper 32-bits so that
> > -		 * we get an interrupt upon 32-bit overflow.
> > -		 */
> > -		if (!armv8pmu_event_is_64bit(event))
> > -			value |= 0xffffffff00000000ULL;
> > +	else if (idx == ARMV8_IDX_CYCLE_COUNTER)
> >  		write_sysreg(value, pmccntr_el0);
> > -	} else
> > +	else
> >  		armv8pmu_write_hw_counter(event, value);
> >  }
> > 
> > @@ -743,7 +788,8 @@ static int armv8pmu_get_event_idx(struct
> > pmu_hw_events *cpuc,
> >  	/*
> >  	 * Otherwise use events counters
> >  	 */
> > -	if (armv8pmu_event_is_64bit(event))
> > +	if (armv8pmu_event_is_64bit(event) &&
> > +	    !armv8pmu_has_long_event(cpu_pmu))
> >  		return	armv8pmu_get_chain_idx(cpuc, cpu_pmu);
> >  	else
> >  		return armv8pmu_get_single_idx(cpuc, cpu_pmu);
> > @@ -815,7 +861,7 @@ static int armv8pmu_filter_match(struct perf_event
> > *event)
> >  static void armv8pmu_reset(void *info)
> >  {
> >  	struct arm_pmu *cpu_pmu = (struct arm_pmu *)info;
> > -	u32 idx, nb_cnt = cpu_pmu->num_events;
> > +	u32 idx, pmcr, nb_cnt = cpu_pmu->num_events;
> > 
> >  	/* The counter and interrupt enable registers are unknown at reset. */
> >  	for (idx = ARMV8_IDX_CYCLE_COUNTER; idx < nb_cnt; ++idx) {
> > @@ -830,8 +876,13 @@ static void armv8pmu_reset(void *info)
> >  	 * Initialize & Reset PMNC. Request overflow interrupt for
> >  	 * 64 bit cycle counter but cheat in armv8pmu_write_counter().
> >  	 */
> > -	armv8pmu_pmcr_write(ARMV8_PMU_PMCR_P | ARMV8_PMU_PMCR_C |
> > -			    ARMV8_PMU_PMCR_LC);
> > +	pmcr = ARMV8_PMU_PMCR_P | ARMV8_PMU_PMCR_C | ARMV8_PMU_PMCR_LC;
> > +
> > +	/* Enable long event counter support where available */
> > +	if (armv8pmu_has_long_event(cpu_pmu))
> > +		pmcr |= ARMV8_PMU_PMCR_LP;
> > +
> > +	armv8pmu_pmcr_write(pmcr);
> >  }
> > 
> >  static int __armv8_pmuv3_map_event(struct perf_event *event,
> > @@ -914,6 +965,7 @@ static void __armv8pmu_probe_pmu(void *info)
> >  	if (pmuver == 0xf || pmuver == 0)
> >  		return;
> > 
> > +	cpu_pmu->pmuver = pmuver;
> 
> And pmuver comes from ID_AA64DFR0_PMUVER_SHIFT, so the above really
> needs fixing in the name of consistency.
> 

No problem, I'll respin next week.

Thanks,

Andrew Murray

> >  	probe->present = true;
> > 
> >  	/* Read the nb of CNTx counters supported from PMNC */
> > diff --git a/include/linux/perf/arm_pmu.h b/include/linux/perf/arm_pmu.h
> > index 71f525a..5b616dd 100644
> > --- a/include/linux/perf/arm_pmu.h
> > +++ b/include/linux/perf/arm_pmu.h
> > @@ -80,6 +80,7 @@ struct arm_pmu {
> >  	struct pmu	pmu;
> >  	cpumask_t	supported_cpus;
> >  	char		*name;
> > +	int		pmuver;
> >  	irqreturn_t	(*handle_irq)(struct arm_pmu *pmu);
> >  	void		(*enable)(struct perf_event *event);
> >  	void		(*disable)(struct perf_event *event);
> 
> Thanks,
> 
>         M.
> -- 
> Jazz is not dead. It just smells funny...
> _______________________________________________
> kvmarm mailing list
> kvmarm@lists.cs.columbia.edu
> https://lists.cs.columbia.edu/mailman/listinfo/kvmarm

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
