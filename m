Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8CF2E0AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 17:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vM6U3nFyBeZMU77Kc+Maz8rJ6mdJepleoRKA6zHFkv0=; b=LKj7zMh5f5RSuk
	KSHhhqIB7xag5yTWNKgxuWvNaOPkyakkxF//4k97N0Cbf0mXQEb1jZ5FsD51hykYEIvbVlKVxj5h6
	l3SzY6gZYcsnRUSWtnzVmKj6cWQrhn+R6TT3Um/RKLBWmgqDlxhEMVSkSHeAiZ3rNB2S/hlH+yAyO
	rErhPVQffkOF5CGLwUe8yu2y8Ha4xtcR5jnrI2mVstUPUtL1jzw7a22rIV4uamOkNedGQzCFrk/Ol
	dFLN+kKO7pM+inOQnK5S8EGdZlU3ig4yHmA6ooIE4I1H32Gkd+cAKn7vMC8rXKlCBq/GmuKkpURsb
	zOKS8YDNkV0HMjLAYqaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW0F0-0002hR-C4; Wed, 29 May 2019 15:11:46 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW0Et-0002h7-A5
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 15:11:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 19717341;
 Wed, 29 May 2019 08:11:39 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B701F3F5AF;
 Wed, 29 May 2019 08:11:37 -0700 (PDT)
Date: Wed, 29 May 2019 16:11:35 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 4/4] arm64/mm: Drop vm_fault_t argument from
 __do_page_fault()
Message-ID: <20190529151134.GH31777@lakrids.cambridge.arm.com>
References: <1559133285-27986-1-git-send-email-anshuman.khandual@arm.com>
 <1559133285-27986-5-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559133285-27986-5-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_081139_358681_F6FFC1FD 
X-CRM114-Status: GOOD (  23.68  )
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

On Wed, May 29, 2019 at 06:04:45PM +0530, Anshuman Khandual wrote:
> __do_page_fault() is over complicated with multiple goto statements. This
> cleans up code flow and while there drops the vm_fault_t argument.
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: James Morse <james.morse@arm.com> 
> Cc: Andrey Konovalov <andreyknvl@google.com>
> ---
>  arch/arm64/mm/fault.c | 38 ++++++++++++++++----------------------
>  1 file changed, 16 insertions(+), 22 deletions(-)
> 
> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> index 170c71f..a53a30e 100644
> --- a/arch/arm64/mm/fault.c
> +++ b/arch/arm64/mm/fault.c
> @@ -397,37 +397,31 @@ static void do_bad_area(unsigned long addr, unsigned int esr, struct pt_regs *re
>  static vm_fault_t __do_page_fault(struct mm_struct *mm, unsigned long addr,
>  			   unsigned int mm_flags, unsigned long vm_flags)
>  {
> -	struct vm_area_struct *vma;
> -	vm_fault_t fault;
> +	struct vm_area_struct *vma = find_vma(mm, addr);
>  
> -	vma = find_vma(mm, addr);
> -	fault = VM_FAULT_BADMAP;
>  	if (unlikely(!vma))
> -		goto out;
> -	if (unlikely(vma->vm_start > addr))
> -		goto check_stack;
> +		return VM_FAULT_BADMAP;
>  
>  	/*
> -	 * Ok, we have a good vm_area for this memory access, so we can handle
> -	 * it.
> +	 * Check if the VMA has got the required permssion with respect
> +	 * to the access fault here.
>  	 */

We already had a perfectly good comment for this check:

	/*
	 * Check that the permissions on the VMA allow for the fault which
	 * occurred.
	 */

... so please keep that and minimize the diff.

> -good_area:
> +	if (!(vma->vm_flags & vm_flags))
> +		return VM_FAULT_BADACCESS;
> +
>  	/*
> -	 * Check that the permissions on the VMA allow for the fault which
> -	 * occurred.
> +	 * There is a valid VMA for this access. But before proceeding
> +	 * make sure that it has required flags if there is an attempt
> +	 * to expand the stack downwards.
>  	 */

I think we can drop this comment, given we didn't have it previously.

> -	if (!(vma->vm_flags & vm_flags)) {
> -		fault = VM_FAULT_BADACCESS;
> -		goto out;
> -	}
> +	if (unlikely(vma->vm_start > addr)) {
> +		if (!(vma->vm_flags & VM_GROWSDOWN))
> +			return VM_FAULT_BADMAP;
>  
> +		if (expand_stack(vma, addr))
> +			return VM_FAULT_BADMAP;

You can drop the line space between these two if statements.

> +	}
>  	return handle_mm_fault(vma, addr & PAGE_MASK, mm_flags);
> -
> -check_stack:
> -	if (vma->vm_flags & VM_GROWSDOWN && !expand_stack(vma, addr))
> -		goto good_area;
> -out:
> -	return fault;

We used to check the stack before the checknig the rest of the vm_flags,
so this changes the precedence of the VM_FAULT_BADMAP and
VM_FAULT_BADACCESS return codes.

Please check the stack before checking the other vm_flags.

Otherwise, this looks like a nice cleanup -- the old control flow was
hideous.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
