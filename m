Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0FE2E030
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 16:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9glVnmIDy54Rk81cc/XbBhIQuWY/tp/XFCIGYBS9k7s=; b=lXg3m9u2w0Uqfk
	6E547Z2xSH44hK+ETWUJtXJjs17lDsBUlx9/8b9+ep7CAIpSs8y8DxqJXTnHMl/epPK+ric8ErXuf
	Q0U6dJ28LvyD4kFJpe2LmovAwN4a7KxZMlbEpYxmlKcvha36uBd1TSydHcZRGghAVq84oncmv64uA
	CU+y2Uy5EOGcvbEEBOUAkf3iL3V8sNYru4knRe23f5El712Q5Gq5uA+hLS7GgN+3XR6I/xULB8yOg
	Xs1yQ8R2Zo6XUckk75Tjda11csoe3W9KpULFDUh4x6rkUq9kO1j6P4Tgz8AxKTK7zilyCwBh0R6m1
	Mv+2SceihIAfkZZIGxHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVzxF-0002sP-Iy; Wed, 29 May 2019 14:53:25 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVzx8-0002rk-Rn
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 14:53:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 07741341;
 Wed, 29 May 2019 07:53:17 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A3F8E3F5AF;
 Wed, 29 May 2019 07:53:15 -0700 (PDT)
Date: Wed, 29 May 2019 15:53:13 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 3/4] arm64/mm: Consolidate page fault information capture
Message-ID: <20190529145312.GG31777@lakrids.cambridge.arm.com>
References: <1559133285-27986-1-git-send-email-anshuman.khandual@arm.com>
 <1559133285-27986-4-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559133285-27986-4-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_075318_911192_E1EFD3B0 
X-CRM114-Status: GOOD (  24.62  )
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
Cc: Andrey Konovalov <andreyknvl@google.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 06:04:44PM +0530, Anshuman Khandual wrote:
> This consolidates page fault information capture and move them bit earlier.
> While here it also adds an wrapper is_write_abort(). It also saves some
> cycles by replacing multiple user_mode() calls into a single one earlier
> during the fault.

To be honest, I doubt this has any measureable impact, but I agree that
using variables _may_ make the flow control easier to understand.

> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: James Morse <james.morse@arm.com> 
> Cc: Andrey Konovalov <andreyknvl@google.com>
> ---
>  arch/arm64/mm/fault.c | 22 +++++++++++++++-------
>  1 file changed, 15 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> index da02678..170c71f 100644
> --- a/arch/arm64/mm/fault.c
> +++ b/arch/arm64/mm/fault.c
> @@ -435,6 +435,11 @@ static bool is_el0_instruction_abort(unsigned int esr)
>  	return ESR_ELx_EC(esr) == ESR_ELx_EC_IABT_LOW;
>  }
>  
> +static bool is_write_abort(unsigned int esr)
> +{
> +	return (esr & ESR_ELx_WNR) && !(esr & ESR_ELx_CM);
> +}

In off-list review, I mentioned that this isn't true for EL1, and I
think that we should name this 'is_el0_write_abort()' or add a comment
explaining the caveats if factored into a helper.

Thanks,
Mark.

> +
>  static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
>  				   struct pt_regs *regs)
>  {
> @@ -443,6 +448,9 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
>  	vm_fault_t fault, major = 0;
>  	unsigned long vm_flags = VM_READ | VM_WRITE;
>  	unsigned int mm_flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;
> +	bool is_user = user_mode(regs);
> +	bool is_el0_exec = is_el0_instruction_abort(esr);
> +	bool is_write = is_write_abort(esr);
>  
>  	if (notify_page_fault(regs, esr))
>  		return 0;
> @@ -454,12 +462,12 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
>  	if (faulthandler_disabled() || !mm)
>  		goto no_context;
>  
> -	if (user_mode(regs))
> +	if (is_user)
>  		mm_flags |= FAULT_FLAG_USER;
>  
> -	if (is_el0_instruction_abort(esr)) {
> +	if (is_el0_exec) {
>  		vm_flags = VM_EXEC;
> -	} else if ((esr & ESR_ELx_WNR) && !(esr & ESR_ELx_CM)) {
> +	} else if (is_write) {
>  		vm_flags = VM_WRITE;
>  		mm_flags |= FAULT_FLAG_WRITE;
>  	}
> @@ -487,7 +495,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
>  	 * we can bug out early if this is from code which shouldn't.
>  	 */
>  	if (!down_read_trylock(&mm->mmap_sem)) {
> -		if (!user_mode(regs) && !search_exception_tables(regs->pc))
> +		if (!is_user && !search_exception_tables(regs->pc))
>  			goto no_context;
>  retry:
>  		down_read(&mm->mmap_sem);
> @@ -498,7 +506,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
>  		 */
>  		might_sleep();
>  #ifdef CONFIG_DEBUG_VM
> -		if (!user_mode(regs) && !search_exception_tables(regs->pc)) {
> +		if (!is_user && !search_exception_tables(regs->pc)) {
>  			up_read(&mm->mmap_sem);
>  			goto no_context;
>  		}
> @@ -516,7 +524,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
>  		 * in __lock_page_or_retry in mm/filemap.c.
>  		 */
>  		if (fatal_signal_pending(current)) {
> -			if (!user_mode(regs))
> +			if (!is_user)
>  				goto no_context;
>  			return 0;
>  		}
> @@ -561,7 +569,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
>  	 * If we are in kernel mode at this point, we have no context to
>  	 * handle this fault with.
>  	 */
> -	if (!user_mode(regs))
> +	if (!is_user)
>  		goto no_context;
>  
>  	if (fault & VM_FAULT_OOM) {
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
