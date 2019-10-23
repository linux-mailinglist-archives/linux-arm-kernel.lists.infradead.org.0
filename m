Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FC4E21E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 19:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvgLYUn7cD2zuX9OM/DUF253OQlAtrIR/wPbD9ME89I=; b=PqwZWAJYE5Ff1S
	o3VkGWY6it1Tt/6HZjNOq8iDroh2C0lgq95iimgKxgQkAj2yn+1BKbD1qQcGq/A4skaE/vtkqqRCR
	QC2if10RL4jGqmuTODwQc4ijzZFPZ/ipiKLR20cNucoQ4mxsGHN/aOz4Uk1gpjw8ZEZcLbXz5nLqB
	NEGbEzIeonOAxcOLYcHsfGWtQ4U8dWptWvebEz5P/sQA5Ww7ME11sn8vz+9xRskkNVlCKuJX7xFYt
	uvvVSN0V0z7275n9rNiU4VyNGF2GeQmrbsUbjbTrCnBIAA/NB6Hrvi3Gzo2rLIvKLHdawIaCRwslj
	B5vIH2w4+25Ew4O+DQuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNKYi-0004fg-Uo; Wed, 23 Oct 2019 17:36:32 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNKYV-0004f1-Q5
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 17:36:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49CE03BB;
 Wed, 23 Oct 2019 10:36:09 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA4923F718;
 Wed, 23 Oct 2019 10:36:04 -0700 (PDT)
Subject: Re: [PATCH 08/11] arm64: unwind: strip PAC from kernel addresses
To: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
 <1571300065-10236-9-git-send-email-amit.kachhap@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <b62449d5-63fb-cecf-ab58-148d287248c5@arm.com>
Date: Wed, 23 Oct 2019 18:36:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1571300065-10236-9-git-send-email-amit.kachhap@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_103619_937531_99032822 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit,

On 17/10/2019 09:14, Amit Daniel Kachhap wrote:
> From: Kristina Martsenko <kristina.martsenko@arm.com>
> 
> When we enable pointer authentication in the kernel, LR values saved to
> the stack will have a PAC which we must strip in order to retrieve the
> real return address.
> 
> Strip PACs when unwinding the stack in order to account for this.
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>

Sign-off chain Nit:
These Signed-off-by are supposed to be a chain of who handled the patch before it got to
Linus' tree. The first entry should match the 'From', the last should match the person
posting the patch.


I suspect the __builtin_return_address() patch should appear before this one, as
start_backtrace() callers pass that in as the first 'pc' value.

> diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
> index 599dd09..a75dc89 100644
> --- a/arch/arm64/include/asm/pointer_auth.h
> +++ b/arch/arm64/include/asm/pointer_auth.h
> @@ -59,12 +59,15 @@ extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
>   * The EL0 pointer bits used by a pointer authentication code.
>   * This is dependent on TBI0 being enabled, or bits 63:56 would also apply.

It might be worth updating the comment now we have the kernel version too.


>   */
> -#define ptrauth_user_pac_mask()	GENMASK(54, vabits_actual)
> +#define ptrauth_user_pac_mask()		GENMASK(54, vabits_actual)
> +#define ptrauth_kernel_pac_mask()	(GENMASK(63, 56) | GENMASK(54, VA_BITS))

(I see everywhere else we use GENMASK_ULL() for >32 bit values. It seems to work without it)


> -/* Only valid for EL0 TTBR0 instruction pointers */

Hmm, I suspect this is because the psuedo code's AArch64.BranchAddr removes Tags and PAC.
If you get a value from the LR, it should have been a PC, so it can't have a tag. It might
have been signed, so has a PAC that this function removes.

If you gave this a Tagged pointer, it would keep the tag. Is that intended?
(If not, can we fix the comment instead of removing it.)


>  static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
>  {
> -	return ptr & ~ptrauth_user_pac_mask();
> +	if (ptr & BIT_ULL(55))
> +		return ptr | ptrauth_kernel_pac_mask();
> +	else
> +		return ptr & ~ptrauth_user_pac_mask();
>  }
>  
>  #define ptrauth_thread_init_user(tsk)					\
> diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
> index a336cb1..49eb1c3 100644
> --- a/arch/arm64/kernel/stacktrace.c
> +++ b/arch/arm64/kernel/stacktrace.c
> @@ -14,6 +14,7 @@
>  #include <linux/stacktrace.h>
>  
>  #include <asm/irq.h>
> +#include <asm/pointer_auth.h>
>  #include <asm/stack_pointer.h>
>  #include <asm/stacktrace.h>
>  
> @@ -84,6 +85,8 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
>  	frame->prev_fp = fp;
>  	frame->prev_type = info.type;
>  
> +	frame->pc = ptrauth_strip_insn_pac(frame->pc);

Could this be against the frame->pc assignment? (Its evidently far enough away that diff
would trim this line out if someone adds something just after!)


Do you need to fixup __show_regs()? This reads regs->regs[30], and passes it to printk()s
%pS which will try to find the entry in kallsyms.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
