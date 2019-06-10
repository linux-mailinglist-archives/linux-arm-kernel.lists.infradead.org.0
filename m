Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1063B41D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 13:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Uv6I2XvfYm943f3kYk7O1q7nsT+7p5X6P6L8mZcRqU=; b=cwsEST2Sz4Go4q
	gd3F5vx8bW1DrcrMMDbfR+CH9R573FgkcAwbX75Nwt+Nvdj3XMVDmu4aVXgba9GYo/m8xC6WbuYb4
	SXfw+Gnj0ctd3GdSfz8Fdw8WMHBLnOroSLvx1KYQhTrPZHnpkhbxOzRd95CT9yFPI0UgmhlWYnWn1
	Jz2COwuoshQaV7Y5owfOnK8AudTf+m1FV72P+KJz4PdgVg4LNr+etMzOyjqsF4Vspxui0TxdWEjfF
	CP2B71XWxNc4DfstA4HlI0hdPy9hsdD94FmX69bryPVsNpT9IBNUJNrD73y69y74sxdD125RDDQeF
	39IH3F3KsU4bxTHQmxeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haIe9-0004HK-4v; Mon, 10 Jun 2019 11:39:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haIdu-0004Gz-Ac
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 11:39:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0842D337;
 Mon, 10 Jun 2019 04:39:12 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BB7753F557;
 Mon, 10 Jun 2019 04:40:52 -0700 (PDT)
Date: Mon, 10 Jun 2019 12:39:08 +0100
From: Will Deacon <will.deacon@arm.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v8 4/6] arm64: perf: extract chain helper into header
Message-ID: <20190610113908.GE15979@fuggles.cambridge.arm.com>
References: <20190522153019.18645-1-andrew.murray@arm.com>
 <20190522153019.18645-5-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522153019.18645-5-andrew.murray@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_043914_409586_E0CFE001 
X-CRM114-Status: GOOD (  15.42  )
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
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Julien Thierry <julien.thierry@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 04:30:17PM +0100, Andrew Murray wrote:
> The ARMv8 Performance Monitors Extension includes an architectural
> event type named CHAIN which allows for chaining counters together.
> 
> Let's extract the test for this event into a header file such that
> other users, such as KVM (for PMU emulation) can make use of.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  arch/arm64/include/asm/perf_event.h | 5 +++++
>  arch/arm64/kernel/perf_event.c      | 2 +-
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/perf_event.h b/arch/arm64/include/asm/perf_event.h
> index c593761ba61c..cd13f3fd1055 100644
> --- a/arch/arm64/include/asm/perf_event.h
> +++ b/arch/arm64/include/asm/perf_event.h
> @@ -219,6 +219,11 @@
>  #define ARMV8_PMU_USERENR_CR	(1 << 2) /* Cycle counter can be read at EL0 */
>  #define ARMV8_PMU_USERENR_ER	(1 << 3) /* Event counter can be read at EL0 */
>  
> +static inline bool armv8pmu_evtype_is_chain(u64 evtype)
> +{
> +	return (evtype == ARMV8_PMUV3_PERFCTR_CHAIN);
> +}
> +
>  #ifdef CONFIG_PERF_EVENTS
>  struct pt_regs;
>  extern unsigned long perf_instruction_pointer(struct pt_regs *regs);
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index 314b1adedf06..265bd835a724 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -879,7 +879,7 @@ static int armv8pmu_set_event_filter(struct hw_perf_event *event,
>  static int armv8pmu_filter_match(struct perf_event *event)
>  {
>  	unsigned long evtype = event->hw.config_base & ARMV8_PMU_EVTYPE_EVENT;
> -	return evtype != ARMV8_PMUV3_PERFCTR_CHAIN;
> +	return !armv8pmu_evtype_is_chain(evtype);

Acked-by: Will Deacon <will.deacon@arm.com>

Although if the definition of armv8pmu_evtype_is_chain() isn't going to
get any more complicated than a single evtype comparison, I'm not sure it's
worth this abstraction, to be honest.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
