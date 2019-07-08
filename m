Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5A26210F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:03:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OdQRm0OJbGtw276iu0tnYlsGdTjnrzmzBqH9Z8hWVoI=; b=egzbe+AijfT0/I
	9EMKrK4hRWONwOMfLrbUzZ/XRMJAM3oS2q5O2Qwti3/y0LuNnnRK80yoLJR/MBlrUccNpC7qyzyp9
	yKyLCLJu1KVELCit+iRpHyvlf3c077tqUyuUqRT1atLscka8hsXGxLI6wf3A36itn43t0JtiqRRhV
	AbifBa70x1sAY7FBaJ027NpM2+MgQPzT+Qsuu1N7+l1FLkiCcaqVH41AJsDy6Rg72Ydm5kjVBJXpj
	KuvXkaODftyVdVYE5TFvmHPKr+gPdFcvpwwkghujBCcvTMg9xw9ZfllFlxl6Rx0nJZHSC2EpHMIv1
	6z3UWDUe9X64jFA9a5Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVB3-0007tL-SR; Mon, 08 Jul 2019 15:03:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVAq-0007sq-Nm
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:03:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3102D2B;
 Mon,  8 Jul 2019 08:03:24 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B48DC3F59C;
 Mon,  8 Jul 2019 08:03:22 -0700 (PDT)
Date: Mon, 8 Jul 2019 16:03:20 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v3 2/9] arm64: perf: Remove PMU locking
Message-ID: <20190708150320.GC33099@lakrids.cambridge.arm.com>
References: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
 <1562596377-33196-3-git-send-email-julien.thierry@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562596377-33196-3-git-send-email-julien.thierry@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_080324_819132_B0638691 
X-CRM114-Status: GOOD (  13.07  )
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
 acme@kernel.org, alexander.shishkin@linux.intel.com, mingo@redhat.com,
 Catalin Marinas <catalin.marinas@arm.com>, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 08, 2019 at 03:32:50PM +0100, Julien Thierry wrote:
> Since the PMU driver uses direct registers for counter
> setup/manipulation, locking around these operations is no longer needed.
> 
> For operations that can be called with interrupts enabled, preemption
> still needs to be disabled to ensure the programming of the PMU is
> done on the expected CPU and not migrated mid-programming.

[...]

>  static void armv8pmu_start(struct arm_pmu *cpu_pmu)
>  {
> -	unsigned long flags;
> -	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
> -
> -	raw_spin_lock_irqsave(&events->pmu_lock, flags);
> +	preempt_disable();
>  	/* Enable all counters */
>  	armv8pmu_pmcr_write(armv8pmu_pmcr_read() | ARMV8_PMU_PMCR_E);
> -	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
> +	preempt_enable();
>  }
> 
>  static void armv8pmu_stop(struct arm_pmu *cpu_pmu)
>  {
> -	unsigned long flags;
> -	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
> -
> -	raw_spin_lock_irqsave(&events->pmu_lock, flags);
> +	preempt_disable();
>  	/* Disable all counters */
>  	armv8pmu_pmcr_write(armv8pmu_pmcr_read() & ~ARMV8_PMU_PMCR_E);
> -	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
> +	preempt_enable();
>  }

I think that we'd have bigger problems if these could be called in
preemptible context, since we couldn't guarantee which HW PMU instance
they'd operate on.

I also thought that the interrupt disable/enable was a hold-over from
the old days of perf core, and these days all of the synchronous
operations are held with the pmu ctx lock held (and interrupts
disabled).

Do you have an example of when these are called with interrupts enabled?
Or in a preemptible context?

Thanks,
Mark.

> 
>  static irqreturn_t armv8pmu_handle_irq(struct arm_pmu *cpu_pmu)
> --
> 1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
