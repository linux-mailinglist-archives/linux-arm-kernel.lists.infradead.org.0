Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEE414082B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 11:44:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mSPKmYlc0v99Q0A6Ha+p/Z9MG1YCjSBaZQsDwHrB7Ss=; b=PjW6xP1kuSP4QZKayoMvuIWqg
	MXt1POPb4y+4cvzZMH2l1/aBytWzJPJrk3FZbN1HCy0Wa2Hfv8M1+g3ZOYLeDAOgU/wQm4fFmhXAI
	efMgY8umt0baWv27BeKa4ITyE9VXZuEYxFmtgagg5rFc3JOGxePjgcOs494HHpdXyzN65HY8cSZxy
	RmCyAH8PlVOXTntUvD0MXO8EqK5438/mkY+Z6vA04UyAKr6aaHs7eGsmQaApVAAnhiN+Cpy6CE2vd
	yUjQ8psmqzXEHmCs4T1qkpF0Z8bvQEWU6uPS0BzxFQhDH5B522pOThhm4zHLvHb+yhHlVTc56ia0w
	neU75Feww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isP6U-0005cu-Uv; Fri, 17 Jan 2020 10:43:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isP6I-0005cT-UD
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 10:43:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 270A711D4;
 Fri, 17 Jan 2020 02:43:38 -0800 (PST)
Received: from [10.162.16.56] (a075563-lin.blr.arm.com [10.162.16.56])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9DB033F68E;
 Fri, 17 Jan 2020 02:43:34 -0800 (PST)
Subject: Re: [PATCH v3 06/16] arm64: enable ptrauth earlier
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-7-git-send-email-amit.kachhap@arm.com>
 <20200116162414.GF10277@arrakis.emea.arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <2d14a778-5fdf-7735-6fb1-57de3aa3e275@arm.com>
Date: Fri, 17 Jan 2020 16:13:06 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200116162414.GF10277@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_024339_062367_30ADBD14 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/16/20 9:54 PM, Catalin Marinas wrote:
> On Mon, Dec 16, 2019 at 02:17:08PM +0530, Amit Daniel Kachhap wrote:
>> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
>> index 5aaf1bb..c59c28f 100644
>> --- a/arch/arm64/kernel/head.S
>> +++ b/arch/arm64/kernel/head.S
>> @@ -13,6 +13,7 @@
>>   #include <linux/init.h>
>>   #include <linux/irqchip/arm-gic-v3.h>
>>   
>> +#include <asm/alternative.h>
>>   #include <asm/assembler.h>
>>   #include <asm/boot.h>
>>   #include <asm/ptrace.h>
>> @@ -713,6 +714,7 @@ secondary_startup:
>>   	 * Common entry point for secondary CPUs.
>>   	 */
>>   	bl	__cpu_secondary_check52bitva
>> +	bl	__cpu_secondary_checkptrauth
>>   	mov	x0, #ARM64_CPU_BOOT_LATE
>>   	bl	__cpu_setup			// initialise processor
>>   	adrp	x1, swapper_pg_dir
>> @@ -831,6 +833,24 @@ __no_granule_support:
>>   	early_park_cpu CPU_STUCK_REASON_NO_GRAN
>>   ENDPROC(__no_granule_support)
>>   
>> +ENTRY(__cpu_secondary_checkptrauth)
>> +#ifdef CONFIG_ARM64_PTR_AUTH
>> +	/* Check if the CPU supports ptrauth */
>> +	mrs	x2, id_aa64isar1_el1
>> +	ubfx	x2, x2, #ID_AA64ISAR1_APA_SHIFT, #8
>> +	cbnz	x2, 1f
>> +alternative_if ARM64_HAS_ADDRESS_AUTH
>> +	mov	x3, 1
>> +alternative_else
>> +	mov	x3, 0
>> +alternative_endif
>> +	cbz	x3, 1f
>> +	/* Park the mismatched secondary CPU */
>> +	early_park_cpu CPU_STUCK_REASON_NO_PTRAUTH
>> +#endif
>> +1:	ret
>> +ENDPROC(__cpu_secondary_checkptrauth)
> 
> Do we actually need to park secondary CPUs early? Let's say a secondary
> CPU doesn't have PAC, __cpu_setup won't set the corresponding SCTLR_EL1
> bits and the instructions are NOPs. Wouldn't the cpufeature framework
> park it later anyway?

In the current cpufeature framework, such missing cpufeature in
secondary cpu will lead to kernel panic (inside check_early_cpufeatures)
and not cpu offline. However Kristina in her RFC V2 [1] added such
feature to park it.

Later for moving the enabling ptrauth to assembly this work got dropped.
Suzuki provided the template code for doing that [2].

Later James suggested to do this like existing
__cpu_secondary_check52bitva which parks the secondary cpu very early
and also to save wasted cpu cycles [3].

So your question is still valid that it can be done in cpufeature. Let
me know your opinion that which one is better.

[1]: 
https://lore.kernel.org/linux-arm-kernel/20190529190332.29753-4-kristina.martsenko@arm.com/
[2]: 
https://lore.kernel.org/linux-arm-kernel/9886324a-5a12-5dd8-b84c-3f32098e3d35@arm.com/
[3]: https://www.spinics.net/lists/arm-kernel/msg763622.html

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
