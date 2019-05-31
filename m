Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6393C30B0A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 11:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bdVINPqK+bM1/VaI/qPGDgFJZPFDr7eSHREJui+2OR0=; b=GQzRgjTIxSNYfl
	gEPKUesDX6U8eAtdmt97d1HnZ53YrjqDV9Nvj0F32oBHk4UcIQa91y6+vYsmD3RHiV91gmV3vONV1
	kvH9TbDdcWtt4LqsZORb6xzE6a7B9Q97dvqYR+rYLdARvShhc9rPdRp/cooQddbTGCLyfuhOdmz+s
	0sCC1rM9gMGzuCPfuCucK6GHEy4splELqzwH+FH1n2UPHvXooI4e7FADMZWHMvvKzAzsVTg0RlgU2
	i65UhTAAAunGQywZsy+7OiuhOAd+ABHOqggML1emUqHE5ZV8HvGnLyeryHnMoPyd+eIr7w68qiE4e
	+lL4M15f4G/62FMcRq/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdTT-0006ky-FW; Fri, 31 May 2019 09:05:19 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdTM-0006kd-DH
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 09:05:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 93933341;
 Fri, 31 May 2019 02:05:11 -0700 (PDT)
Received: from [10.162.42.223] (p8cg001049571a15.blr.arm.com [10.162.42.223])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 143BB3F59C; Fri, 31 May 2019 02:05:08 -0700 (PDT)
Subject: Re: [PATCH 4/4] arm64/mm: Drop vm_fault_t argument from
 __do_page_fault()
To: Mark Rutland <mark.rutland@arm.com>
References: <1559133285-27986-1-git-send-email-anshuman.khandual@arm.com>
 <1559133285-27986-5-git-send-email-anshuman.khandual@arm.com>
 <20190529151134.GH31777@lakrids.cambridge.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <5e565fd3-0d2b-31a5-8644-c91ccc5fb05e@arm.com>
Date: Fri, 31 May 2019 14:35:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190529151134.GH31777@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_020512_471801_43D30693 
X-CRM114-Status: GOOD (  26.66  )
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



On 05/29/2019 08:41 PM, Mark Rutland wrote:
> On Wed, May 29, 2019 at 06:04:45PM +0530, Anshuman Khandual wrote:
>> __do_page_fault() is over complicated with multiple goto statements. This
>> cleans up code flow and while there drops the vm_fault_t argument.
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: James Morse <james.morse@arm.com> 
>> Cc: Andrey Konovalov <andreyknvl@google.com>
>> ---
>>  arch/arm64/mm/fault.c | 38 ++++++++++++++++----------------------
>>  1 file changed, 16 insertions(+), 22 deletions(-)
>>
>> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
>> index 170c71f..a53a30e 100644
>> --- a/arch/arm64/mm/fault.c
>> +++ b/arch/arm64/mm/fault.c
>> @@ -397,37 +397,31 @@ static void do_bad_area(unsigned long addr, unsigned int esr, struct pt_regs *re
>>  static vm_fault_t __do_page_fault(struct mm_struct *mm, unsigned long addr,
>>  			   unsigned int mm_flags, unsigned long vm_flags)
>>  {
>> -	struct vm_area_struct *vma;
>> -	vm_fault_t fault;
>> +	struct vm_area_struct *vma = find_vma(mm, addr);
>>  
>> -	vma = find_vma(mm, addr);
>> -	fault = VM_FAULT_BADMAP;
>>  	if (unlikely(!vma))
>> -		goto out;
>> -	if (unlikely(vma->vm_start > addr))
>> -		goto check_stack;
>> +		return VM_FAULT_BADMAP;
>>  
>>  	/*
>> -	 * Ok, we have a good vm_area for this memory access, so we can handle
>> -	 * it.
>> +	 * Check if the VMA has got the required permssion with respect
>> +	 * to the access fault here.
>>  	 */
> 
> We already had a perfectly good comment for this check:
> 
> 	/*
> 	 * Check that the permissions on the VMA allow for the fault which
> 	 * occurred.
> 	 */
> 
> ... so please keep that and minimize the diff.

Sure, will keep all the existing comments here.

> 
>> -good_area:
>> +	if (!(vma->vm_flags & vm_flags))
>> +		return VM_FAULT_BADACCESS;
>> +
>>  	/*
>> -	 * Check that the permissions on the VMA allow for the fault which
>> -	 * occurred.
>> +	 * There is a valid VMA for this access. But before proceeding
>> +	 * make sure that it has required flags if there is an attempt
>> +	 * to expand the stack downwards.
>>  	 */
> 
> I think we can drop this comment, given we didn't have it previously.

Okay.

> 
>> -	if (!(vma->vm_flags & vm_flags)) {
>> -		fault = VM_FAULT_BADACCESS;
>> -		goto out;
>> -	}
>> +	if (unlikely(vma->vm_start > addr)) {
>> +		if (!(vma->vm_flags & VM_GROWSDOWN))
>> +			return VM_FAULT_BADMAP;
>>  
>> +		if (expand_stack(vma, addr))
>> +			return VM_FAULT_BADMAP;
> 
> You can drop the line space between these two if statements.

Will do.

> 
>> +	}
>>  	return handle_mm_fault(vma, addr & PAGE_MASK, mm_flags);
>> -
>> -check_stack:
>> -	if (vma->vm_flags & VM_GROWSDOWN && !expand_stack(vma, addr))
>> -		goto good_area;
>> -out:
>> -	return fault;
> 
> We used to check the stack before the checknig the rest of the vm_flags,
> so this changes the precedence of the VM_FAULT_BADMAP and
> VM_FAULT_BADACCESS return codes.
> 
> Please check the stack before checking the other vm_flags.

Though it makes some sense to move VMA permission check earlier in the function as it
is the quicker one but I understand need to maintain the existing code flow in a clean
up patch like this. Will retain the existing flow.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
