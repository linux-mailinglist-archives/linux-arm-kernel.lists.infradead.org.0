Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEFC178708
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 01:29:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2TBcBJBF8F4ssWp6CpIWBOi9c5aavRVxYe4xRgUUSL0=; b=K0va86dV2tJxVo
	8Mp5d7LLFpTT7cgSFw1ilaUBDpNU3cnxpLbKMmWuL0WoGGlOieZJVZUYlv8xQPkaRtFHQKybVAYwT
	88c6AsTEmt8snuZAAashiASVh1kNIy1I5F+O/6wCI/clOH4f0qtI6VhFfct1yL8S+dFfbavhVuY4f
	76RZsqrcBIQ5L/DkkKYgnkmaMLvs2WAoxFky6RXpY2T0orrG+YbvKjSaCQZKMJ4W5aFKmXKCWhxxX
	26fFOaO3qovoKgiTOOvaD9qZxlOUjF04M01w4WsOK0BQIayjQT9kFti5ZJ9JtZHnBYsKqVC62ms3B
	ThU0X8ATepKiO56wSE7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Hub-0001v4-6E; Wed, 04 Mar 2020 00:29:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9HuQ-0001uc-9g
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 00:29:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 605DE30E;
 Tue,  3 Mar 2020 16:29:09 -0800 (PST)
Received: from localhost (e108754-lin.cambridge.arm.com [10.1.198.53])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EF9173F6CF;
 Tue,  3 Mar 2020 16:29:08 -0800 (PST)
Date: Wed, 4 Mar 2020 00:29:07 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v5 2/7] arm64: trap to EL1 accesses to AMU counters from
 EL0
Message-ID: <20200304002907.GB29652@arm.com>
References: <20200226132947.29738-1-ionela.voinescu@arm.com>
 <20200226132947.29738-3-ionela.voinescu@arm.com>
 <206c1a87-12aa-a4d4-8fc3-0b03c6125897@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <206c1a87-12aa-a4d4-8fc3-0b03c6125897@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_162910_384535_370C0B79 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 pkondeti@codeaurora.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 dietmar.eggemann@arm.com, peterz@infradead.org, mingo@redhat.com,
 viresh.kumar@linaro.org, linux-arm-kernel@lists.infradead.org,
 sudeep.holla@arm.com, will@kernel.org, valentin.schneider@arm.com,
 lukasz.luba@arm.com, Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On Friday 28 Feb 2020 at 16:44:53 (+0000), James Morse wrote:
> Hi Ionela,
> 
> On 26/02/2020 13:29, Ionela Voinescu wrote:
> > The activity monitors extension is an optional extension introduced
> > by the ARMv8.4 CPU architecture. In order to access the activity
> > monitors counters safely, if desired, the kernel should detect the
> > presence of the extension through the feature register, and mediate
> > the access.
> > 
> > Therefore, disable direct accesses to activity monitors counters
> > from EL0 (userspace) and trap them to EL1 (kernel).
> > 
> > To be noted that the ARM64_AMU_EXTN kernel config and the disable_amu
> > kernel parameter do not have an effect on this code. Given that the
> > amuserenr_el0 resets to an UNKNOWN value, setting the trap of EL0
> > accesses to EL1 is always attempted for safety and security
> > considerations.
> 
> > diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
> > index aafed6902411..7103027b4e64 100644
> > --- a/arch/arm64/mm/proc.S
> > +++ b/arch/arm64/mm/proc.S
> 
> > @@ -131,6 +131,7 @@ alternative_endif
> >  	ubfx	x11, x11, #1, #1
> >  	msr	oslar_el1, x11
> >  	reset_pmuserenr_el0 x0			// Disable PMU access from EL0
> > +	reset_amuserenr_el0 x0			// Disable AMU access from EL0
> >  
> >  alternative_if ARM64_HAS_RAS_EXTN
> >  	msr_s	SYS_DISR_EL1, xzr
> 
> (This above hunk is in: cpu_do_resume, and this next one is __cpu_setup,)
> 
> > @@ -423,6 +424,8 @@ SYM_FUNC_START(__cpu_setup)
> >  	isb					// Unmask debug exceptions now,
> >  	enable_dbg				// since this is per-cpu
> >  	reset_pmuserenr_el0 x0			// Disable PMU access from EL0
> > +	reset_amuserenr_el0 x0			// Disable AMU access from EL0
> 
> I think you only need this in __cpu_setup. The entry-point from cpu-idle calls:
> | cpu_resume
> | ->__cpu_setup
> | -->reset_amuserenr_el0
> | ->_cpu_resume
> | -->cpu_do_resume
> | --->reset_amuserenr_el0
> 
> (Which means the PMU reset call is redundant too).
> 

Thanks, that seems to be so. I'll submit a separate fix for both amu
and pmu, if you don't mind, after this set, so it will be a specific
cleanup patch.

> Its harmless, and needs cleaning up already, so regardless:
> Reviewed-by: James Morse <james.morse@arm.com>
> 

Thank you very much for the review,
Ionela.

> 
> 
> Thanks,
> 
> James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
