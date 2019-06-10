Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AC33B001
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 09:53:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fzsmkVvRaIxRVQd4YQp45WCm2EuPsLIILgMMvGmjXMM=; b=UMTJ2Nsid93Fzs
	3kxsWRDfEt77tTfpQLyT9MvUJOTlz2SGXb/yM3zcYBIfqMSt+a2/WgL5I6LljbL3Ce2t8UrXqF3n0
	JbK/lXPJ5lG74aiYKrWMB26csYWAXKCqi0q1P83Cp3ZCAziBCw5YArgCXbKu+02+c/fNmnmutTOoE
	alsbyl0z0IhuUvY9cfTDbFkous+D8kSU0QQ/vx73ex4z0iJEDi4jJbGCZyJoZLYM3wOTLyn0BNW1S
	5b447M7ySN5h/27ydqqBZgoGeYe0oduPrNes1yNCo/vBe+q7Gpm4c6MLCkAwrr1jZ4jqEYMU1Nl38
	43B5j9GHGG6Gmsl1QQEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haF7s-0003ky-TU; Mon, 10 Jun 2019 07:53:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haF7d-0003kS-Up
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 07:53:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D961344;
 Mon, 10 Jun 2019 00:53:40 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 18E3A3F246;
 Mon, 10 Jun 2019 00:53:37 -0700 (PDT)
Subject: Re: [PATCH v3 6/8] arm64: irqflags: Introduce explicit debugging for
 IRQ priorities
To: Marc Zyngier <marc.zyngier@arm.com>, linux-arm-kernel@lists.infradead.org
References: <1559813517-41540-1-git-send-email-julien.thierry@arm.com>
 <1559813517-41540-7-git-send-email-julien.thierry@arm.com>
 <acc8bb85-04cb-f8af-5162-79788a5cacbb@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <e26f0761-b682-ef42-b510-53654bed1f4b@arm.com>
Date: Mon, 10 Jun 2019 08:53:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <acc8bb85-04cb-f8af-5162-79788a5cacbb@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_005342_085550_5ACC8FB8 
X-CRM114-Status: GOOD (  18.90  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org, james.morse@arm.com,
 yuzenghui@huawei.com, wanghaibin.wang@huawei.com, liwei391@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/06/2019 17:31, Marc Zyngier wrote:
> On 06/06/2019 10:31, Julien Thierry wrote:
>> Using IRQ priority masking to enable/disable interrupts is a bit
>> sensitive as it requires to deal with both ICC_PMR_EL1 and PSR.I.
>>
>> Introduce some validity checks to both highlight the states in which
>> functions dealing with IRQ enabling/disabling can (not) be called, and
>> bark a warning when called in an unexpected state.
>>
>> Since these checks are done on hotpaths, introduce a build option to
>> choose whether to do the checking.
>>
>> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
>> ---
>>  arch/arm64/Kconfig                  | 11 +++++++++++
>>  arch/arm64/include/asm/cpufeature.h |  6 ++++++
>>  arch/arm64/include/asm/daifflags.h  |  7 +++++++
>>  arch/arm64/include/asm/irqflags.h   | 14 +++++++++++++-
>>  4 files changed, 37 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index 697ea05..8acc40e 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -1436,6 +1436,17 @@ config ARM64_PSEUDO_NMI
>>
>>  	  If unsure, say N
>>
>> +if ARM64_PSEUDO_NMI
>> +config ARM64_DEBUG_PRIORITY_MASKING
>> +	bool "Debug interrupt priority masking"
>> +	help
>> +	  This adds runtime checks to functions enabling/disabling
>> +	  interrupts when using priority masking. The additional checks verify
>> +	  the validity of ICC_PMR_EL1 when calling concerned functions.
>> +
>> +	  If unsure, say N
>> +endif
>> +
>>  config RELOCATABLE
>>  	bool
>>  	help
>> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
>> index bc895c8..693a086 100644
>> --- a/arch/arm64/include/asm/cpufeature.h
>> +++ b/arch/arm64/include/asm/cpufeature.h
>> @@ -617,6 +617,12 @@ static inline bool system_uses_irq_prio_masking(void)
>>  	       cpus_have_const_cap(ARM64_HAS_IRQ_PRIO_MASKING);
>>  }
>>
>> +static inline bool system_has_prio_mask_debugging(void)
>> +{
>> +	return IS_ENABLED(CONFIG_ARM64_DEBUG_PRIORITY_MASKING) &&
>> +	       system_uses_irq_prio_masking();
>> +}
>> +
>>  #define ARM64_SSBD_UNKNOWN		-1
>>  #define ARM64_SSBD_FORCE_DISABLE	0
>>  #define ARM64_SSBD_KERNEL		1
>> diff --git a/arch/arm64/include/asm/daifflags.h b/arch/arm64/include/asm/daifflags.h
>> index f93204f..eca5bee 100644
>> --- a/arch/arm64/include/asm/daifflags.h
>> +++ b/arch/arm64/include/asm/daifflags.h
>> @@ -28,6 +28,10 @@
>>  /* mask/save/unmask/restore all exceptions, including interrupts. */
>>  static inline void local_daif_mask(void)
>>  {
>> +	WARN_ON(system_has_prio_mask_debugging() &&
>> +		(read_sysreg_s(SYS_ICC_PMR_EL1) == (GIC_PRIO_IRQOFF |
>> +						    GIC_PRIO_PSR_I_SET)));
>> +
>>  	asm volatile(
>>  		"msr	daifset, #0xf		// local_daif_mask\n"
>>  		:
>> @@ -62,6 +66,9 @@ static inline void local_daif_restore(unsigned long flags)
>>  {
>>  	bool irq_disabled = flags & PSR_I_BIT;
>>
>> +	WARN_ON(system_has_prio_mask_debugging() &&
>> +		!(read_sysreg(daif) & PSR_I_BIT));
>> +
>>  	if (!irq_disabled) {
>>  		trace_hardirqs_on();
>>
>> diff --git a/arch/arm64/include/asm/irqflags.h b/arch/arm64/include/asm/irqflags.h
>> index b6f757f..cac2d2a 100644
>> --- a/arch/arm64/include/asm/irqflags.h
>> +++ b/arch/arm64/include/asm/irqflags.h
>> @@ -40,6 +40,12 @@
>>   */
>>  static inline void arch_local_irq_enable(void)
>>  {
>> +	if (system_has_prio_mask_debugging()) {
>> +		u32 pmr = read_sysreg_s(SYS_ICC_PMR_EL1);
>> +
>> +		WARN_ON_ONCE(pmr != GIC_PRIO_IRQON && pmr != GIC_PRIO_IRQOFF);
>> +	}
>> +
>>  	asm volatile(ALTERNATIVE(
>>  		"msr	daifclr, #2		// arch_local_irq_enable\n"
>>  		"nop",
>> @@ -53,6 +59,12 @@ static inline void arch_local_irq_enable(void)
>>
>>  static inline void arch_local_irq_disable(void)
>>  {
>> +	if (system_has_prio_mask_debugging()) {
>> +		u32 pmr = read_sysreg_s(SYS_ICC_PMR_EL1);
>> +
>> +		WARN_ON_ONCE(pmr != GIC_PRIO_IRQON && pmr != GIC_PRIO_IRQOFF);
>> +	}
>> +
>>  	asm volatile(ALTERNATIVE(
>>  		"msr	daifset, #2		// arch_local_irq_disable",
>>  		__msr_s(SYS_ICC_PMR_EL1, "%0"),
>> @@ -86,7 +98,7 @@ static inline int arch_irqs_disabled_flags(unsigned long flags)
>>
>>  	asm volatile(ALTERNATIVE(
>>  		"and	%w0, %w1, #" __stringify(PSR_I_BIT),
>> -		"eor	%w0, %w1, #" __stringify(GIC_PRIO_IRQOFF),
>> +		"eor	%w0, %w1, #" __stringify(GIC_PRIO_IRQON),
> 
> Err... Which version is the correct one? This one, or the previous one?
> 

Argh, bad fixup of the patches. This one is the correct one (any state
!= GIC_PRIO_IRQON means interrupts are disabled), but the correct value
should already be in use in the previous patch.

Will fix that in the next posting.

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
