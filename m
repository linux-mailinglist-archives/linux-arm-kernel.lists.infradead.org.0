Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 587C21353F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 08:59:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZKje+6jSOTWwrHSfKbiIWxghC6eS+TdLyOtf3peqJtU=; b=sRhfh8o2RqpXnL
	HZWNWNFEKzycvcxCyiVqAYVSvVFC0QAjmBqbSL6qyMz4R30ro7yFdUokaIZrC4wyBv1oOkwm3aHQS
	O2OSuKW98c4o4v2qjk9r+NDBKZceW/dBy45916vn4wNFGsVYg3f999jYXqFKVDxJ5mI1chbGYTcwi
	gMfNCZBQpWSMsGnoMgKEqupfnZrvJsIOOjUOT6fdG82I3a59DhfFhB7SuH6lGkdZ+nm8xKCa7kp2+
	bDfsjm+c2qja1ZE6J4I8u2eY3bOYsJ+vRgLfq0Q/fufV7qh2ULvaAqrqH11KoZvuyGptTgIsxChOA
	5qa+nJkmHryQ/iJKpv1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSiu-0004X8-Ly; Thu, 09 Jan 2020 07:59:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSiU-0004RA-Nq
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 07:58:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 818D31FB;
 Wed,  8 Jan 2020 23:58:53 -0800 (PST)
Received: from [10.162.40.138] (p8cg001049571a15.blr.arm.com [10.162.40.138])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 4E4453F6C4; Thu,  9 Jan 2020 00:02:16 -0800 (PST)
Subject: Re: [PATCH 05/17] arm64: entry: add a call_on_stack helper
To: Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
References: <20200108185634.1163-1-mark.rutland@arm.com>
 <20200108185634.1163-6-mark.rutland@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <98534fbd-5600-5ae2-a117-3bad76ddbe04@arm.com>
Date: Thu, 9 Jan 2020 13:30:02 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200108185634.1163-6-mark.rutland@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_235854_862755_84DE49F7 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: keescook@chromium.org, maz@kernel.org, broonie@kernel.org,
 labbott@redhat.com, robin.murphy@arm.com, julien.thierry.kdev@gmail.com,
 alex.popov@linux.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/09/2020 12:26 AM, Mark Rutland wrote:
> In some cases, we want to call a function from C code, using an
> alternative stack. Add a helper that we can use in such cases.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/include/asm/exception.h |  2 ++
>  arch/arm64/kernel/entry.S          | 21 +++++++++++++++++++++
>  2 files changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
> index b87c6e276ab1..a49038fa4faf 100644
> --- a/arch/arm64/include/asm/exception.h
> +++ b/arch/arm64/include/asm/exception.h
> @@ -31,6 +31,8 @@ static inline u32 disr_to_esr(u64 disr)
>  	return esr;
>  }
>  
> +asmlinkage void call_on_stack(struct pt_regs *, void (*)(struct pt_regs *),
> +			      unsigned long);
>  asmlinkage void enter_from_user_mode(void);
>  void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
>  void do_sp_pc_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 53ce1877a4aa..184313c773ea 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -901,6 +901,27 @@ ENTRY(ret_from_fork)
>  ENDPROC(ret_from_fork)
>  NOKPROBE(ret_from_fork)
>  
> +/*
> + * x0 = argument to function

A small nit. Though the definition here itself does not limit the
argument type, it might worth to mention that to be struct pt_regs
per the previous declaration.

> + * x1 = function to call
> + * x2 = new stack pointer
> + */
> +ENTRY(call_on_stack)
> +	/* Create a frame record to save our LR and SP (implicit in FP) */
> +	stp	x29, x30, [sp, #-16]!
> +	mov	x29, sp
> +
> +	/* Move to the new stack and call the function there */
> +	mov	sp, x2
> +	blr	x1
> +
> +	/* Restore SP from the FP, FP and LR from the record, and return */
> +	mov	sp, x29
> +	ldp	x29, x30, [sp], #16
> +	ret
> +ENDPROC(call_on_stack)
> +NOKPROBE(call_on_stack)
> +
>  #ifdef CONFIG_ARM_SDE_INTERFACE
>  
>  #include <asm/sdei.h>
> 

Reviewed-by: Anshuman Khandual <anshuman.khandual@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
