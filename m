Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7E82087F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 15:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=34wnMZH/XYjBgnJhSGSltJYZFud9hbMmIUlQtWsBg00=; b=VHYdI0vgGE/93N
	22bl5Gjpw+nsxVU1F9ptFVu6g3wcqtWPidZkeaGZTy0xHN6CyL35FqWGdu9c7epo52nTGzcmopSyL
	Bn8C43tCH9BtE5DQcQmr1If52CReEdqL9lZGVzRqYBArAw2d9bDh1Ui4tRIoZ2mSbkRLIpHohHtma
	ndykx9YMd3gmvVS45MN3/tM/o0Rq5cdLPV68WhUCNy5GktHdhSggdB1IcJFsLdpOqNMeaoLeAHsmK
	Y2rYIOZ7phajYinvXTtrwru4wR2FROQw+fBoLBWGxuHViLzl/sqMjgz/Fed+0R8IMKgpr1qUcKylR
	WaMypmf48+AT3hdQiR2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGff-0008RT-Mk; Thu, 16 May 2019 13:43:43 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGfX-0008QJ-O8
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 13:43:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 939901715;
 Thu, 16 May 2019 06:43:33 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AE5F23F575;
 Thu, 16 May 2019 06:43:27 -0700 (PDT)
Subject: Re: [PATCH v2 4/5] arm64: irqflags: Introduce explicit debugging for
 IRQ priorities
To: Marc Zyngier <marc.zyngier@arm.com>, linux-arm-kernel@lists.infradead.org
References: <1556553607-46531-1-git-send-email-julien.thierry@arm.com>
 <1556553607-46531-5-git-send-email-julien.thierry@arm.com>
 <9b27cb2c-5159-3001-672e-9391d7490944@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <890a91fd-da1e-50b4-6567-d732a850e32c@arm.com>
Date: Thu, 16 May 2019 14:43:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <9b27cb2c-5159-3001-672e-9391d7490944@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_064335_798115_CDA776CC 
X-CRM114-Status: GOOD (  21.52  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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



On 07/05/2019 09:44, Marc Zyngier wrote:
> On 29/04/2019 17:00, Julien Thierry wrote:
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
>>  arch/arm64/Kconfig                 | 11 +++++++++++
>>  arch/arm64/include/asm/daifflags.h |  9 +++++++++
>>  arch/arm64/include/asm/irqflags.h  | 14 ++++++++++++++
>>  3 files changed, 34 insertions(+)
>>
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index 7e34b9e..3fb38f3 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -1359,6 +1359,17 @@ config ARM64_PSEUDO_NMI
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
>> diff --git a/arch/arm64/include/asm/daifflags.h b/arch/arm64/include/asm/daifflags.h
>> index a32ece9..9512968 100644
>> --- a/arch/arm64/include/asm/daifflags.h
>> +++ b/arch/arm64/include/asm/daifflags.h
>> @@ -28,6 +28,11 @@
>>  /* mask/save/unmask/restore all exceptions, including interrupts. */
>>  static inline void local_daif_mask(void)
>>  {
>> +	WARN_ON(IS_ENABLED(CONFIG_ARM64_DEBUG_PRIORITY_MASKING) &&
>> +		system_uses_irq_prio_masking() &&
> 
> Given that you repeat these conditions all over the place, how about a
> helper:
> 
> #define DEBUG_PRIORITY_MASKING_CHECK(x)			\
> 	(IS_ENABLED(CONFIG_ARM64_DEBUG_PRIORITY_MASKING) && \
> 	 system_uses_irq_prio_masking() && (x))
> 
> or some variant thereof.
> 

Yes, good point, I'll do that.

>> +		(read_sysreg_s(SYS_ICC_PMR_EL1) == (GIC_PRIO_IRQOFF |
>> +						    GIC_PRIO_IGNORE_PMR)));
>> +
>>  	asm volatile(
>>  		"msr	daifset, #0xf		// local_daif_mask\n"
>>  		:
>> @@ -62,6 +67,10 @@ static inline void local_daif_restore(unsigned long flags)
>>  {
>>  	bool irq_disabled = flags & PSR_I_BIT;
>>
>> +	WARN_ON(IS_ENABLED(CONFIG_ARM64_DEBUG_PRIORITY_MASKING) &&
>> +		system_uses_irq_prio_masking() &&
>> +		!(read_sysreg(daif) & PSR_I_BIT));
>> +
>>  	if (!irq_disabled) {
>>  		trace_hardirqs_on();
>>
>> diff --git a/arch/arm64/include/asm/irqflags.h b/arch/arm64/include/asm/irqflags.h
>> index 516cdfc..a40abc2 100644
>> --- a/arch/arm64/include/asm/irqflags.h
>> +++ b/arch/arm64/include/asm/irqflags.h
>> @@ -40,6 +40,13 @@
>>   */
>>  static inline void arch_local_irq_enable(void)
>>  {
>> +	if (IS_ENABLED(CONFIG_ARM64_DEBUG_PRIORITY_MASKING) &&
>> +	    system_uses_irq_prio_masking()) {
>> +		u32 pmr = read_sysreg_s(SYS_ICC_PMR_EL1);
>> +
>> +		WARN_ON(pmr != GIC_PRIO_IRQON && pmr != GIC_PRIO_IRQOFF);
>> +	}
>> +
>>  	asm volatile(ALTERNATIVE(
>>  		"msr	daifclr, #2		// arch_local_irq_enable\n"
>>  		"nop",
>> @@ -53,6 +60,13 @@ static inline void arch_local_irq_enable(void)
>>
>>  static inline void arch_local_irq_disable(void)
>>  {
>> +	if (IS_ENABLED(CONFIG_ARM64_DEBUG_PRIORITY_MASKING) &&
>> +	    system_uses_irq_prio_masking()) {
>> +		u32 pmr = read_sysreg_s(SYS_ICC_PMR_EL1);
>> +
>> +		WARN_ON(pmr != GIC_PRIO_IRQON && pmr != GIC_PRIO_IRQOFF);
>> +	}
>> +
>>  	asm volatile(ALTERNATIVE(
>>  		"msr	daifset, #2		// arch_local_irq_disable",
>>  		"msr_s  " __stringify(SYS_ICC_PMR_EL1) ", %0",
>> --
>> 1.9.1
>>
> 
> nit: There is also the question of using WARN_ON in a context that will
> be extremely noisy if we're in a condition where this fires.
> WARN_ON_ONCE, maybe? This is a debugging thing, so maybe we just don't care.
> 

Yes, thinking about it, it did get pretty noisy when I checked this was
working. WARN_ON_ONCE might be a good option.

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
