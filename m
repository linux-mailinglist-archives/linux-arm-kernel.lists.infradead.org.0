Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9886212F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYA5imnnDUs/LLzizD7YutdUgzikJ/kHK7QGwZ4CfgM=; b=Nu68XPs4bXDAup
	4JZWzY3B3OPkFws1uqlRLhj5PUi19u4GA0PE8RRaGm5MFPIbj6n0Hdknr0EUDUQ5FrIdQ76p+et7t
	vqgdHtv3PXTbbcrGq18Um/wZJaEnUE8u22gxUWW41Zr4tPLs46gcckUgsRvoto9HcksfkrauHERBi
	i70q3O+c84/v3LhrncmdkqYVQroWKN4/HJ/XZ9RqVZIrBazzgeZApfKKbgsMe2lrMFxZg0husCKo/
	X5taCF09SEY18SyoAvxuGA/EbXtgLA6YV8kwTDpgn44lEUqBlz/vGeOJRn6EtjfKhBCDuuaAYpgz7
	xwERlDUh9UWjNijz1YUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVIG-0003Q1-4d; Mon, 08 Jul 2019 15:11:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVI4-0003PX-MV
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:10:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B65E22B;
 Mon,  8 Jul 2019 08:10:49 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 452853F59C;
 Mon,  8 Jul 2019 08:10:48 -0700 (PDT)
Date: Mon, 8 Jul 2019 16:10:46 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v3 4/9] arm: perf: Remove Remove PMU locking
Message-ID: <20190708151045.GF33099@lakrids.cambridge.arm.com>
References: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
 <1562596377-33196-5-git-send-email-julien.thierry@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562596377-33196-5-git-send-email-julien.thierry@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_081052_777096_1AC7D608 
X-CRM114-Status: GOOD (  15.63  )
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

On Mon, Jul 08, 2019 at 03:32:52PM +0100, Julien Thierry wrote:
> Since the PMU interrupt saves and restores the value of the selector
> register, there is no need to serialize register accesses against the
> interrupt contexts.
> 
> For operations that can be called with interrupts enabled, preemption
> still needs to be disabled to ensure the programming of the PMU is
> done on the expected CPU and not migrated mid-programming.
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
>  arch/arm/kernel/perf_event_v7.c | 56 +++--------------------------------------
>  1 file changed, 4 insertions(+), 52 deletions(-)

>  static void armv7pmu_start(struct arm_pmu *cpu_pmu)
>  {
> -	unsigned long flags;
> -	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
> -
> -	raw_spin_lock_irqsave(&events->pmu_lock, flags);
> +	preempt_disable();
>  	/* Enable all counters */
>  	armv7_pmnc_write(armv7_pmnc_read() | ARMV7_PMNC_E);
> -	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
> +	preempt_enable();
>  }
> 
>  static void armv7pmu_stop(struct arm_pmu *cpu_pmu)
>  {
> -	unsigned long flags;
> -	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
> -
> -	raw_spin_lock_irqsave(&events->pmu_lock, flags);
> +	preempt_disable();
>  	/* Disable all counters */
>  	armv7_pmnc_write(armv7_pmnc_read() & ~ARMV7_PMNC_E);
> -	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
> +	preempt_enable();
>  }

As with the arm64 patch, I suspect/hope it's not necessary to disable
preemption here.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
