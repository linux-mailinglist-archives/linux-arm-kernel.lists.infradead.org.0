Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B013B8F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:05:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RCOSsNKuezcxGqmYhz9sHspqkdJPkh8PeemCeXIp9l4=; b=iDyWYT7aIY36vaoAV/CX552MU
	YakudSMk8qoiB4aftQoekwc9XzZA9qeB7zyrKZWBtoBc2XG3orBnl6zvKcsEMA3HY8qov4IlOLftM
	i9Qn5F80oRBZqKayz2kZuECJ7zGiSTpNElf8VOPJO1qj4CiOe57qTDb3Ie5mxRWRQK23VmdFu50tz
	egC0D9rtHPHs635NspGrEZJtpogZzLpp7F6qYjQTBZ0XZfgkrecl2ockqy8n6y0WY3wF+mtW+ybgK
	jXoWsSZsJQ6BfEioCCLEwJMUy5DXpEm5BmZGExUS8NHcy5Vb6EZXXwuS94k0V0GIbEW4nOob15F0G
	Ei9Fqn/LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMnk-0001Bo-Sk; Mon, 10 Jun 2019 16:05:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haMnY-00014H-IP
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:05:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D2011344;
 Mon, 10 Jun 2019 09:05:26 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E941F3F246;
 Mon, 10 Jun 2019 09:05:25 -0700 (PDT)
Subject: Re: [PATCH v8 6/6] KVM: arm/arm64: support chained PMU counters
To: andrew.murray@arm.com, christoffer.dall@arm.com, marc.zyngier@arm.com
References: <20190522153019.18645-1-andrew.murray@arm.com>
 <20190522153019.18645-7-andrew.murray@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <72be95b6-e34b-2a04-d503-10399da09afc@arm.com>
Date: Mon, 10 Jun 2019 17:05:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190522153019.18645-7-andrew.murray@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_090529_605706_E0B5D60F 
X-CRM114-Status: GOOD (  15.37  )
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
Cc: james.morse@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, julien.thierry@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

> @@ -398,27 +531,43 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
>   
>   	/* Software increment event does't need to be backed by a perf event */
>   	if (eventsel == ARMV8_PMUV3_PERFCTR_SW_INCR &&
> -	    select_idx != ARMV8_PMU_CYCLE_IDX)
> +	    pmc->idx != ARMV8_PMU_CYCLE_IDX)
>   		return;
>   
>   	memset(&attr, 0, sizeof(struct perf_event_attr));
>   	attr.type = PERF_TYPE_RAW;
>   	attr.size = sizeof(attr);
>   	attr.pinned = 1;
> -	attr.disabled = !kvm_pmu_counter_is_enabled(vcpu, select_idx);
> +	attr.disabled = !kvm_pmu_counter_is_enabled(vcpu, pmc->idx);
>   	attr.exclude_user = data & ARMV8_PMU_EXCLUDE_EL0 ? 1 : 0;
>   	attr.exclude_kernel = data & ARMV8_PMU_EXCLUDE_EL1 ? 1 : 0;
>   	attr.exclude_hv = 1; /* Don't count EL2 events */
>   	attr.exclude_host = 1; /* Don't count host events */
> -	attr.config = (select_idx == ARMV8_PMU_CYCLE_IDX) ?
> +	attr.config = (pmc->idx == ARMV8_PMU_CYCLE_IDX) ?
>   		ARMV8_PMUV3_PERFCTR_CPU_CYCLES : eventsel;
>   
> -	counter = kvm_pmu_get_counter_value(vcpu, select_idx);
> -	/* The initial sample period (overflow count) of an event. */
> -	attr.sample_period = (-counter) & GENMASK(31, 0);
> +	counter = kvm_pmu_get_pair_counter_value(vcpu, pmc);
> +
> +	if (kvm_pmu_idx_has_chain_evtype(vcpu, pmc->idx)) {
> +		/**
> +		 * The initial sample period (overflow count) of an event. For
> +		 * chained counters we only support overflow interrupts on the
> +		 * high counter.
> +		 */
> +		attr.sample_period = (-counter) & GENMASK(63, 0);
> +		event = perf_event_create_kernel_counter(&attr, -1, current,
> +							 kvm_pmu_perf_overflow,
> +							 pmc + 1);
>   
> -	event = perf_event_create_kernel_counter(&attr, -1, current,
> +		if (kvm_pmu_counter_is_enabled(vcpu, pmc->idx + 1))
> +			attr.config1 |= PERF_ATTR_CFG1_KVM_PMU_CHAINED;
> +	} else {
> +		/* The initial sample period (overflow count) of an event. */
> +		attr.sample_period = (-counter) & GENMASK(31, 0);
> +		event = perf_event_create_kernel_counter(&attr, -1, current,
>   						 kvm_pmu_perf_overflow, pmc);
> +	}
> +

If this was the Cycle counter and t he PMCR_LC was set, shouldn't we be using
64bit mask here ? We fall back to using the Cycle counter in 64bit mode for
"normal" (read guest) kernel. So shouldn't we reflect that here ?

Rest looks fine to me.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
