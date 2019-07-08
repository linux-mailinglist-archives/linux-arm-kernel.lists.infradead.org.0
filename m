Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1302D62122
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:06:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NIKYN3Gdk0xCuSgVTEoFD563EOxIIxHbaJxCsvxErKY=; b=q77Y0ShCs/PQxk
	6i907+D6kv2lH82ZYx0qMOoeFdSxy026dZlobtM0V0jUVHacHNrvlUzRZGHCii5F1eAlfsQhmOHo+
	xf6ygpPiUVB/492Y3+gTjtnOjOk7h7+u9/bkuyv1Unte3eUL+ir3x3rDGJnoRwQ/VF3bkXVnaC9sQ
	Vcj14WzOVdkEP5ycGRfN/+DOVx7EoMR+N8hjhi5hn7S99dl+dZaJFZXukdiK5R3VMMZd3mG1XMDq2
	UEaxRiyx0eo8A0AzqnPWZ0b7F+UGmEMFp/wyPBqpK8tYCz617+CqDQC/ZAoCIDNUtMGDxissHents
	86M/eLGMKkcRGl+QQBoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVEE-0001WO-S3; Mon, 08 Jul 2019 15:06:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVE3-0001Ve-QF
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:06:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 57435CFC;
 Mon,  8 Jul 2019 08:06:43 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC36C3F59C;
 Mon,  8 Jul 2019 08:06:41 -0700 (PDT)
Date: Mon, 8 Jul 2019 16:06:39 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v3 3/9] arm: perf: save/resore pmsel
Message-ID: <20190708150639.GE33099@lakrids.cambridge.arm.com>
References: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
 <1562596377-33196-4-git-send-email-julien.thierry@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562596377-33196-4-git-send-email-julien.thierry@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_080643_936438_ED8F2C68 
X-CRM114-Status: GOOD (  20.33  )
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
Cc: peterz@infradead.org, liwei391@huawei.com, will.deacon@arm.com,
 Russell King <linux@armlinux.org.uk>, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 08, 2019 at 03:32:51PM +0100, Julien Thierry wrote:
> The callback pmu->read() can be called with interrupts enabled.
> Currently, on ARM, this can cause the following callchain:
> 
> armpmu_read() -> armpmu_event_update() -> armv7pmu_read_counter()
> 
> The last function might modify the counter selector register and then
> read the target counter, without taking any lock. With interrupts
> enabled, a PMU interrupt could occur and modify the selector register
> as well, between the selection and read of the interrupted context.
> 
> Save and restore the value of the selector register in the PMU interrupt
> handler, ensuring the interrupted context is left with the correct PMU
> registers selected.

IIUC, this is a latent bug, so I guess it should be Cc'd stable?

> 
> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> Cc: Jiri Olsa <jolsa@redhat.com>
> Cc: Namhyung Kim <namhyung@kernel.org>
> Cc: Russell King <linux@armlinux.org.uk>
> ---
>  arch/arm/kernel/perf_event_v7.c | 21 +++++++++++++++++++--
>  1 file changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/kernel/perf_event_v7.c b/arch/arm/kernel/perf_event_v7.c
> index a4fb0f8..c3da7a5 100644
> --- a/arch/arm/kernel/perf_event_v7.c
> +++ b/arch/arm/kernel/perf_event_v7.c
> @@ -736,10 +736,22 @@ static inline int armv7_pmnc_counter_has_overflowed(u32 pmnc, int idx)
>  	return pmnc & BIT(ARMV7_IDX_TO_COUNTER(idx));
>  }
> 
> -static inline void armv7_pmnc_select_counter(int idx)
> +static inline u32 armv7_pmsel_read(void)
> +{
> +	u32 pmsel;
> +
> +	asm volatile("mrc p15, 0, %0, c9, c12, 5" : "=&r" (pmsel));
> +	return pmsel;
> +}
> +
> +static inline void armv7_pmsel_write(u32 counter)
>  {
> -	u32 counter = ARMV7_IDX_TO_COUNTER(idx);
>  	asm volatile("mcr p15, 0, %0, c9, c12, 5" : : "r" (counter));
> +}
> +
> +static inline void armv7_pmnc_select_counter(int idx)
> +{
> +	armv7_pmsel_write(ARMV7_IDX_TO_COUNTER(idx));
>  	isb();
>  }
> 
> @@ -952,8 +964,11 @@ static irqreturn_t armv7pmu_handle_irq(struct arm_pmu *cpu_pmu)
>  	struct perf_sample_data data;
>  	struct pmu_hw_events *cpuc = this_cpu_ptr(cpu_pmu->hw_events);
>  	struct pt_regs *regs;
> +	u32 pmsel;
>  	int idx;
> 
> +	pmsel = armv7_pmsel_read();

Could we add a comment explaining why we need to save/restore this?

Otherwise, this looks good to me.

Thanks,
Mark.

> +
>  	/*
>  	 * Get and reset the IRQ flags
>  	 */
> @@ -1004,6 +1019,8 @@ static irqreturn_t armv7pmu_handle_irq(struct arm_pmu *cpu_pmu)
>  	 */
>  	irq_work_run();
> 
> +	armv7_pmsel_write(pmsel);
> +
>  	return IRQ_HANDLED;
>  }
> 
> --
> 1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
