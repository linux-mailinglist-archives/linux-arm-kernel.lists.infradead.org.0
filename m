Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E897CC046
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 18:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AkdB8SLHz6DItOKZjWJVq+GPdzkwn5QgVCQ4lKfW0Dg=; b=MsZmP6jHRE636X
	e34SMKhjGjFe/qlOsNjf/REtnkav9Ik9bJQi97Qt066N3ic96JFv5Lz0OKImysy27sWgnYxmePZaD
	UQXZ8b+ZviBgN+9+dXfLAeXMNlaWVn2x8aUaM5kxwAquyXus6WekIFkh5TsnqBzygaBdG611m9oKf
	kwtnBgBM/Gnj+OpqNrlqPIY9lBtRT4lC1a2gCcpVk8dkU2YJWklFUOOsbstyef9btDABzogCbbuBA
	K+LfZPziiA5AmE/rKr0wZr8D2pWoRWQVtCOPPyT/Doc9VK8EDkieKT+VyKH2PQDQ/bLv1LvdQO7cK
	djq8FnGYKxdtVFdDdazQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQ9u-0008Bc-GD; Fri, 04 Oct 2019 16:10:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQ9Q-0007l1-AK
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 16:09:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B4391597;
 Fri,  4 Oct 2019 09:09:51 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BE6D63F68E;
 Fri,  4 Oct 2019 09:09:50 -0700 (PDT)
Subject: Re: [PATCH 8/8] arm64: entry-common: don't touch daif before
 bp-hardening
To: Mark Rutland <mark.rutland@arm.com>
References: <20191003171642.135652-1-james.morse@arm.com>
 <20191003171642.135652-9-james.morse@arm.com>
 <20191004133146.GG34756@lakrids.cambridge.arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <644e24c1-5475-cdc1-c3ef-87f87802c506@arm.com>
Date: Fri, 4 Oct 2019 17:09:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191004133146.GG34756@lakrids.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_090952_487688_9D2EF2EF 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 04/10/2019 14:31, Mark Rutland wrote:
> On Thu, Oct 03, 2019 at 06:16:42PM +0100, James Morse wrote:
>> The previous patches mechanically transformed the assembly version of
>> entry.S to entry-common.c for synchronous exceptions.
>>
>> The C version of local_daif_restore() doesn't quite do the same thing
>> as the assembly versions if pseudo-NMI is in use. In particular,
>> | local_daif_restore(DAIF_PROCCTX_NOIRQ)
>> will still allow pNMI to be delivered. This is not the behaviour
>> do_el0_ia_bp_hardening() and do_sp_pc_abort() want as it should not
>> be possible for the PMU handler to run as an NMI until the bp-hardening
>> sequence has run.
>>
>> The bp-hardening calls were placed where they are because this was the
>> first C code to run after the relevant exceptions. As we've now moved
>> that point earlier, move the checks and calls earlier too.
>>
>> This makes it clearer that this stuff runs before any kind of exception,
>> and saves modifying PSTATE twice.

>> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
>> index 5623685c7d13..c0c28c4589a8 100644
>> --- a/arch/arm64/include/asm/processor.h
>> +++ b/arch/arm64/include/asm/processor.h
>> @@ -24,6 +24,7 @@
>>  #include <linux/build_bug.h>
>>  #include <linux/cache.h>
>>  #include <linux/init.h>
>> +#include <linux/thread_info.h>
>>  #include <linux/stddef.h>
>>  #include <linux/string.h>
> 
> Nit: alphabetical order please!

Huh, I should really learn the alphabet...


>> @@ -214,6 +215,12 @@ static inline void start_thread(struct pt_regs *regs, unsigned long pc,
>>  	regs->sp = sp;
>>  }
>>  
>> +static inline bool is_ttbr0_addr(unsigned long addr)
>> +{
>> +	/* entry assembly clears tags for TTBR0 addrs */
>> +	return addr < TASK_SIZE;
>> +}
> 
> Could we move is_ttbr1_addr() here too?
> 
> I guess there might be include ordering issues, but if not it would be
> nice if they lived in the same place.

That works, I agree keeping them together makes sense. (I didn't spot there were two)


>> diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
>> index 176969e55677..eb73d250a081 100644
>> --- a/arch/arm64/kernel/entry-common.c
>> +++ b/arch/arm64/kernel/entry-common.c
>> @@ -112,9 +113,17 @@ static void notrace el0_ia(struct pt_regs *regs, unsigned long esr)
>>  {
>>  	unsigned long far = read_sysreg(far_el1);
>>  
>> +	/*
>> +	 * We've taken an instruction abort from userspace and not yet
>> +	 * re-enabled IRQs. If the address is a kernel address, apply
>> +	 * BP hardening prior to enabling IRQs and pre-emption.
>> +	 */
>> +	if (!is_ttbr0_addr(far))
>> +		arm64_apply_bp_hardening();
>> +
>>  	user_exit_irqoff();
>> -	local_daif_restore(DAIF_PROCCTX_NOIRQ);
>> -	do_el0_ia_bp_hardening(far, esr, regs);
>> +	local_daif_restore(DAIF_PROCCTX);
>> +	do_mem_abort(far, esr, regs);
>>  }
>>  NOKPROBE_SYMBOL(el0_ia);
>>  
>> @@ -154,8 +163,11 @@ static void notrace el0_pc(struct pt_regs *regs, unsigned long esr)
>>  {
>>  	unsigned long far = read_sysreg(far_el1);
>>  
>> +	if (!is_ttbr0_addr(instruction_pointer(regs)))
>> +		arm64_apply_bp_hardening();
>> +
>>  	user_exit_irqoff();
>> -	local_daif_restore(DAIF_PROCCTX_NOIRQ);
>> +	local_daif_restore(DAIF_PROCCTX);
>>  	do_sp_pc_abort(far, esr, regs);
>>  }
>>  NOKPROBE_SYMBOL(el0_pc);
> 
> This is much nicer, and AFAICT is correct, so:
> 
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>


Thanks!

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
