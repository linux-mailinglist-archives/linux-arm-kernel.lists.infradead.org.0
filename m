Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FE736B36
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 06:53:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAtb/+epTnHtml7qz+Vc6Xb1eH8q1RNncQ3UGfVFma4=; b=tSGAf7hiBi9a4X
	W/OufcObiTcGAHiBdZx6KnwhwdTyeZv0tSnepYlQ4NXCf7H0Kd+RNX6HTPRBOJOjk+6pSNt36TFVn
	RjcICtNNzFga6tKjGkiBPOhRL3Wax1Ou241Y3pIavYy5YWbmGC0ficrSznpW61/OiZ5mVIIOmAvw0
	XYXKEzHlO5E16gEAlF3tT+UUtyavN2SHCs+AjlcFYp7VMs3HyfxNQ/5KJWCo3v5bWFaKMQR1AC8mN
	cqmjH9durVKO9maUwdCUkyfX5UN4Dq3yjKVEcf6infPPQOCYxpMGcz0LGATuF4oKiI3Mo4eNzcspQ
	uLVc5zDgduaobLN6fuTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYkPT-0000c2-4P; Thu, 06 Jun 2019 04:53:55 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYkPM-0000bg-6H
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 04:53:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9BA9280D;
 Wed,  5 Jun 2019 21:53:47 -0700 (PDT)
Received: from [10.162.43.122] (p8cg001049571a15.blr.arm.com [10.162.43.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 37FC13F690; Wed,  5 Jun 2019 21:53:44 -0700 (PDT)
Subject: Re: [PATCH V2 4/4] arm64/mm: Drop local variable vm_fault_t from
 __do_page_fault()
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1559544085-7502-1-git-send-email-anshuman.khandual@arm.com>
 <1559544085-7502-5-git-send-email-anshuman.khandual@arm.com>
 <20190604145612.GM6610@arrakis.emea.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <1d89177a-e7af-ac4e-1a04-e8b750c2c768@arm.com>
Date: Thu, 6 Jun 2019 10:24:01 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190604145612.GM6610@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_215348_241032_51FE2D4D 
X-CRM114-Status: GOOD (  19.91  )
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



On 06/04/2019 08:26 PM, Catalin Marinas wrote:
> On Mon, Jun 03, 2019 at 12:11:25PM +0530, Anshuman Khandual wrote:
>> __do_page_fault() is over complicated with multiple goto statements. This
>> cleans up the code flow and while there drops local variable vm_fault_t.
> 
> I'd change the subject as well here to something like refactor or
> simplify __do_page_fault().

Sure.

> 
>> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
>> index 4bb65f3..41fa905 100644
>> --- a/arch/arm64/mm/fault.c
>> +++ b/arch/arm64/mm/fault.c
>> @@ -397,37 +397,29 @@ static void do_bad_area(unsigned long addr, unsigned int esr, struct pt_regs *re
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
>>  	 * Ok, we have a good vm_area for this memory access, so we can handle
>>  	 * it.
>>  	 */
>> -good_area:
>> +	if (unlikely(vma->vm_start > addr)) {
>> +		if (!(vma->vm_flags & VM_GROWSDOWN))
>> +			return VM_FAULT_BADMAP;
>> +		if (expand_stack(vma, addr))
>> +			return VM_FAULT_BADMAP;
>> +	}
> 
> You could have a single return here:
> 
> 	if (unlikely(vma->vm_start > addr) &&
> 	    (!(vma->vm_flags & VM_GROWSDOWN) || expand_stack(vma, addr)))
> 		return VM_FAULT_BADMAP;
> 
> Not sure it's any clearer though.
> 

TBH the proposed one seems clearer as it separates effect (vma->vm_start > addr)
from required permission check (vma->vm_flags & VM_GROWSDOWN) and required action
(expand_stack(vma, addr)). But I am happy to change as you have mentioned if that
is preferred.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
