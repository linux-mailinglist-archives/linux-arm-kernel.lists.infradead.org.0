Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0600634B0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:56:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KIggNTlhg2QZzPs+1v0f0ySoIydIlrqa6mAvrHyizI=; b=TAxv+RcYSZqTgo
	k891sqtQrsMaum9gzhafX6oEeybbN4m4/juNSyk6F2AXagvrxeVwYvjze9hv5Xi/AO4sfcMPCRyAo
	iI+5U1qITmLC+GbCMWOOoHSyRmvd1zYKXxMbwOeV3wa2bXcPbHUX9GHbjikQ+4BQ+ZhmlZlYG4CWH
	ULqmWJWWuIByJbtB3o1qC4v0u3Y1Oc0xI+TIhX8R614uzbflKEB0IM5N3Eq6it50IFL3hZ9anmuMd
	ECLwH6rvtkznBIemWTN29XK+v7gXmjyG3vQtEXgAgbRb/yRUWHa6J0cNg/38KF+LiVJ6mQCsdsVKB
	SHfAdVt9NQGYLcpzYvOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYArQ-0006hY-Ry; Tue, 04 Jun 2019 14:56:24 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYArJ-0006h8-Et
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:56:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E82BC341;
 Tue,  4 Jun 2019 07:56:16 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 664F33F690; Tue,  4 Jun 2019 07:56:15 -0700 (PDT)
Date: Tue, 4 Jun 2019 15:56:12 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2 4/4] arm64/mm: Drop local variable vm_fault_t from
 __do_page_fault()
Message-ID: <20190604145612.GM6610@arrakis.emea.arm.com>
References: <1559544085-7502-1-git-send-email-anshuman.khandual@arm.com>
 <1559544085-7502-5-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559544085-7502-5-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_075617_507015_D8E759FE 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 12:11:25PM +0530, Anshuman Khandual wrote:
> __do_page_fault() is over complicated with multiple goto statements. This
> cleans up the code flow and while there drops local variable vm_fault_t.

I'd change the subject as well here to something like refactor or
simplify __do_page_fault().

> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> index 4bb65f3..41fa905 100644
> --- a/arch/arm64/mm/fault.c
> +++ b/arch/arm64/mm/fault.c
> @@ -397,37 +397,29 @@ static void do_bad_area(unsigned long addr, unsigned int esr, struct pt_regs *re
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
>  	 * Ok, we have a good vm_area for this memory access, so we can handle
>  	 * it.
>  	 */
> -good_area:
> +	if (unlikely(vma->vm_start > addr)) {
> +		if (!(vma->vm_flags & VM_GROWSDOWN))
> +			return VM_FAULT_BADMAP;
> +		if (expand_stack(vma, addr))
> +			return VM_FAULT_BADMAP;
> +	}

You could have a single return here:

	if (unlikely(vma->vm_start > addr) &&
	    (!(vma->vm_flags & VM_GROWSDOWN) || expand_stack(vma, addr)))
		return VM_FAULT_BADMAP;

Not sure it's any clearer though.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
