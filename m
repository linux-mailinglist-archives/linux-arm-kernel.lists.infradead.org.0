Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FA0A3E57
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 21:24:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYkCwPetdewOQmb40vhknRQN2lSQJAxgKCsE8BZCgVI=; b=SqAvjRNNraGvB2
	517IEqYXutjOv6uFzsWaUgF1cllw0ejfPA3eyc47Mz//ynKTVuVwUbHxfQ4Y+gBbnZnO3eobPhIcr
	1f/T+XW+n7zdfv7MlP1jBVoBMNdonZo139RDMvsR9k2e0ve3/h5WsT+PMdeA7brYhkGr1ql7Rg27u
	HhK+1fibAIWTBaaQcXFwocYN+DiYTuVQHzwrRXV3XnuwUr7GsRYg1h9IXLyOOD4ZgOrM20Npq0Sos
	ncOPCIjyG8l1H0uMJTWyrJx9v3nhHBnMgc6hJUrdyLCB17e6FtTPVN/hAV1BoaljoMoHpZh5Z+N2P
	/ROtQ0i+b37osr54w44g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3mVL-0005rR-8G; Fri, 30 Aug 2019 19:24:15 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3mV9-0005r7-1P
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 19:24:05 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7UJNtii072563;
 Fri, 30 Aug 2019 14:23:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567193035;
 bh=BRGq9rtIEX6J8dTXlS0C++xR15x6pyi8E6jSLrRs14I=;
 h=From:Subject:To:CC:References:Date:In-Reply-To;
 b=fHj/GBDnhOHKpgGT75zWtw+YhojiFjS6l4HgW1ii7b8oWCxYDv8epvw5P/Czw9AOh
 kHq3LvFUd8J/vOlpgRBA4E4qhiJR1490P6G8vI6SBV50UrJQgLZKXqoSe+1BJ2ALiV
 CHBTsFaBsjx+dD2hD/1l5sZfqGjK2uk5Y6E28fSw=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7UJNtAp128741
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 30 Aug 2019 14:23:55 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 30
 Aug 2019 14:23:55 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 30 Aug 2019 14:23:55 -0500
Received: from [10.250.95.88] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7UJNsJY104679;
 Fri, 30 Aug 2019 14:23:54 -0500
From: "Andrew F. Davis" <afd@ti.com>
Subject: Re: [PATCH] arm64: use x22 to save boot exception level
To: Mark Rutland <mark.rutland@arm.com>
References: <20190828173318.12428-1-afd@ti.com>
 <20190829094720.GA44575@lakrids.cambridge.arm.com>
Message-ID: <511d200c-9294-e562-5ba5-4f061965395d@ti.com>
Date: Fri, 30 Aug 2019 15:23:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190829094720.GA44575@lakrids.cambridge.arm.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_122403_212695_0AC54C0D 
X-CRM114-Status: GOOD (  33.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, Matthew Leach <matthew.leach@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/29/19 5:47 AM, Mark Rutland wrote:
> Hi Andrew,
> 
> On Wed, Aug 28, 2019 at 01:33:18PM -0400, Andrew F. Davis wrote:
>> The exception level in which the kernel was entered needs to be saved for
>> later. We do this by writing the exception level to memory. As this data
>> is written with the MMU/cache off it will bypass any cache, after this we
>> invalidate the address so that later reads from cacheable mappings do not
>> read a stale cache line. The side effect of this invalidate is any
>> existing cache line for this address in the same coherency domain will be
>> cleaned and written into memory, possibly overwriting the data we just
>> wrote. As this memory is treated as cacheable by already running cores it
>> on not architecturally safe to perform any non-caching accesses to this
>> memory anyway.
> 
> Are you seeing an issue in practice here, or is this something that
> you've found by inspection?
> 

We are seeing an actual issue. And I do have a good idea what is causing
it, let me answer your questions on the system then I'll explain below.

> If this is an issue in practice, can you tell me more about the system,
> i.e.
> 
> - Which CPU models do you see this with?

A53s

> - Do you see this with the boot CPU, secondaries, or both?

Both

> - Do you have a system-level cache? If so, which model?

Yes, Custom design, Datasheet has some more details if needed:
http://www.ti.com/product/AM6548

> - Do you see this on bare-metal?

Not tested

> - Do you see this under a hypervisor? If so, which hypervisor?
> 

Not tested

> We place __boot_cpu_mode in the .mmuoff.data.write section, which is
> only written with the MMU off (i.e. with non-cacheable accesses), such
> that the cached copy should always be clean and shouldn't be written
> back. Your description sounds like you're seeing a write-back, which is
> surprising and may indicate a bug elsewhere.
> 
> Depending on what exactly you're seeing, this could also be an issue for
> __early_cpu_boot_status and the early page table creation, so I'd like
> to understand that better.
> 

We are seeing is a write-back from L3 cache. Our bootloader writes the
kernel image with caches on, then after turning off caching but before
handing off to Linux it clean/invalidates all cache lines by set/way.
This cleans out the L1/L2 but leaves dirty lines in L3. Our platform
doesn't really have a good way to clean L3 as it only provides cache
maintenance operations by VA, not by line, so we would need to clean
every VA address manually..

Also want to point out, although this isn't a problem for most platforms
what this code does here, with writing to a location as non-cacheable,
is not architecturally safe as the running cores that do the reads have
this section marked as cacheable when they read, therefor you have
mismatched attributes. When this happens like this according to the ARM
ARM we should do a cache invalidate after the write *and* before the
read, which we do not do.

I would like to work this fix from the U-Boot side also, but in parallel
I would like to reduce the mismatched attributes as much as possible on
the kernel side like done here. So yes, we still will have issue with
__early_cpu_boot_status, but that only seems to be needed in the failure
to boot case, I'd like to fix that up as well at some later point.

As for early page table, since U-Boot doesn't write anything to those
addresses (__boot_cpu_mode is in the data section and so written by the
loader), they seem to be safe for now (I can break them by writing to
all memory locations to dirty up the caches).

Thanks,
Andrew

> Thanks,
> Mark.
> 
>> Lets avoid these issues altogether by moving the writing of the boot
>> exception level to after MMU/caching has been enabled. Saving the boot
>> state in unused register x22 until we can safely and coherently write out
>> this data.
>>
>> As the data is not written with the MMU off anymore we move the variable
>> definition out of this section and into a regular C code data section.
>>
>> Signed-off-by: Andrew F. Davis <afd@ti.com>
>> ---
>>  arch/arm64/kernel/head.S | 31 +++++++++++--------------------
>>  arch/arm64/kernel/smp.c  | 10 ++++++++++
>>  2 files changed, 21 insertions(+), 20 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
>> index 2cdacd1c141b..4c71493742c5 100644
>> --- a/arch/arm64/kernel/head.S
>> +++ b/arch/arm64/kernel/head.S
>> @@ -99,6 +99,7 @@ pe_header:
>>  	 *
>>  	 *  Register   Scope                      Purpose
>>  	 *  x21        stext() .. start_kernel()  FDT pointer passed at boot in x0
>> +	 *  x22        stext() .. start_kernel()  exception level core was booted
>>  	 *  x23        stext() .. start_kernel()  physical misalignment/KASLR offset
>>  	 *  x28        __create_page_tables()     callee preserved temp register
>>  	 *  x19/x20    __primary_switch()         callee preserved temp registers
>> @@ -108,7 +109,6 @@ ENTRY(stext)
>>  	bl	el2_setup			// Drop to EL1, w0=cpu_boot_mode
>>  	adrp	x23, __PHYS_OFFSET
>>  	and	x23, x23, MIN_KIMG_ALIGN - 1	// KASLR offset, defaults to 0
>> -	bl	set_cpu_boot_mode_flag
>>  	bl	__create_page_tables
>>  	/*
>>  	 * The following calls CPU setup code, see arch/arm64/mm/proc.S for
>> @@ -428,6 +428,8 @@ __primary_switched:
>>  	sub	x4, x4, x0			// the kernel virtual and
>>  	str_l	x4, kimage_voffset, x5		// physical mappings
>>  
>> +	bl	set_cpu_boot_mode_flag
>> +
>>  	// Clear BSS
>>  	adr_l	x0, __bss_start
>>  	mov	x1, xzr
>> @@ -470,7 +472,7 @@ EXPORT_SYMBOL(kimage_vaddr)
>>   * If we're fortunate enough to boot at EL2, ensure that the world is
>>   * sane before dropping to EL1.
>>   *
>> - * Returns either BOOT_CPU_MODE_EL1 or BOOT_CPU_MODE_EL2 in w0 if
>> + * Returns either BOOT_CPU_MODE_EL1 or BOOT_CPU_MODE_EL2 in w22 if
>>   * booted in EL1 or EL2 respectively.
>>   */
>>  ENTRY(el2_setup)
>> @@ -480,7 +482,7 @@ ENTRY(el2_setup)
>>  	b.eq	1f
>>  	mov_q	x0, (SCTLR_EL1_RES1 | ENDIAN_SET_EL1)
>>  	msr	sctlr_el1, x0
>> -	mov	w0, #BOOT_CPU_MODE_EL1		// This cpu booted in EL1
>> +	mov	w22, #BOOT_CPU_MODE_EL1		// This cpu booted in EL1
>>  	isb
>>  	ret
>>  
>> @@ -593,7 +595,7 @@ set_hcr:
>>  
>>  	cbz	x2, install_el2_stub
>>  
>> -	mov	w0, #BOOT_CPU_MODE_EL2		// This CPU booted in EL2
>> +	mov	w22, #BOOT_CPU_MODE_EL2		// This CPU booted in EL2
>>  	isb
>>  	ret
>>  
>> @@ -632,7 +634,7 @@ install_el2_stub:
>>  		      PSR_MODE_EL1h)
>>  	msr	spsr_el2, x0
>>  	msr	elr_el2, lr
>> -	mov	w0, #BOOT_CPU_MODE_EL2		// This CPU booted in EL2
>> +	mov	w22, #BOOT_CPU_MODE_EL2		// This CPU booted in EL2
>>  	eret
>>  ENDPROC(el2_setup)
>>  
>> @@ -642,12 +644,10 @@ ENDPROC(el2_setup)
>>   */
>>  set_cpu_boot_mode_flag:
>>  	adr_l	x1, __boot_cpu_mode
>> -	cmp	w0, #BOOT_CPU_MODE_EL2
>> +	cmp	w22, #BOOT_CPU_MODE_EL2
>>  	b.ne	1f
>> -	add	x1, x1, #4
>> -1:	str	w0, [x1]			// This CPU has booted in EL1
>> -	dmb	sy
>> -	dc	ivac, x1			// Invalidate potentially stale cache line
>> +	add	x1, x1, #4			// This CPU has booted in EL2
>> +1:	str	w22, [x1]
>>  	ret
>>  ENDPROC(set_cpu_boot_mode_flag)
>>  
>> @@ -658,16 +658,7 @@ ENDPROC(set_cpu_boot_mode_flag)
>>   * sufficient alignment that the CWG doesn't overlap another section.
>>   */
>>  	.pushsection ".mmuoff.data.write", "aw"
>> -/*
>> - * We need to find out the CPU boot mode long after boot, so we need to
>> - * store it in a writable variable.
>> - *
>> - * This is not in .bss, because we set it sufficiently early that the boot-time
>> - * zeroing of .bss would clobber it.
>> - */
>> -ENTRY(__boot_cpu_mode)
>> -	.long	BOOT_CPU_MODE_EL2
>> -	.long	BOOT_CPU_MODE_EL1
>> +
>>  /*
>>   * The booting CPU updates the failed status @__early_cpu_boot_status,
>>   * with MMU turned off.
>> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
>> index 018a33e01b0e..66bdcaf61a46 100644
>> --- a/arch/arm64/kernel/smp.c
>> +++ b/arch/arm64/kernel/smp.c
>> @@ -65,6 +65,16 @@ struct secondary_data secondary_data;
>>  /* Number of CPUs which aren't online, but looping in kernel text. */
>>  int cpus_stuck_in_kernel;
>>  
>> +/*
>> + * We need to find out the CPU boot mode long after boot, so we need to
>> + * store it in a writable variable in early boot. Any core started in
>> + * EL1 will write that to the first location, EL2 to the second. After
>> + * all cores are started this allows us to check that all cores started
>> + * in the same mode.
>> + */
>> +u32 __boot_cpu_mode[2] = { BOOT_CPU_MODE_EL2, BOOT_CPU_MODE_EL1 };
>> +EXPORT_SYMBOL(__boot_cpu_mode);
>> +
>>  enum ipi_msg_type {
>>  	IPI_RESCHEDULE,
>>  	IPI_CALL_FUNC,
>> -- 
>> 2.17.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
