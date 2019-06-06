Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C1A372EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 13:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZusBdOWGcqmz9DPQh6hqW13xBe7LGIyAeeDC4erI8bQ=; b=FDEXvdIFlXmCq/
	nUaBjINy4BuTPJzTWNOn1iTUOA3IPnqaW9Lb27Gkh7qUqEMoyx/VQnm5AP9EggIuHx7w5dc4l4p2u
	b8jrSQl+mDeEN1sY7qXSPSbaudQCwPbaaNs37MkjLdq/dVAiS5voFw9/ZV9xpIiwfowxEwxASXw3T
	x/1L4fUk/ZxEnpcojQHbj1DGHhQ2jjOTFhIP70eJUCx/3OBkRLIM+Re4x3QD1gTMjMt1KDbuxxEfV
	MBEK5hGNeEjF9Ie2/9U603RzQhzVhgtntQ7Xxc+HX7XIP5pNbn90GkdKsleLi6NmJ++IUNCS6RDjm
	xFgxAczm8FfIWOk6VnWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYqcE-0007kd-DP; Thu, 06 Jun 2019 11:31:30 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYqc6-0007jw-7l
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 11:31:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 61922A78;
 Thu,  6 Jun 2019 04:31:21 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA95C3F246;
 Thu,  6 Jun 2019 04:31:19 -0700 (PDT)
Date: Thu, 6 Jun 2019 12:31:17 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH V2 4/4] arm64/mm: Drop local variable vm_fault_t from
 __do_page_fault()
Message-ID: <20190606113117.GC37821@lakrids.cambridge.arm.com>
References: <1559544085-7502-1-git-send-email-anshuman.khandual@arm.com>
 <1559544085-7502-5-git-send-email-anshuman.khandual@arm.com>
 <20190604145612.GM6610@arrakis.emea.arm.com>
 <1d89177a-e7af-ac4e-1a04-e8b750c2c768@arm.com>
 <20190606112739.GB56860@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606112739.GB56860@arrakis.emea.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_043122_872141_4D17FF67 
X-CRM114-Status: GOOD (  18.71  )
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 12:27:40PM +0100, Catalin Marinas wrote:
> On Thu, Jun 06, 2019 at 10:24:01AM +0530, Anshuman Khandual wrote:
> > On 06/04/2019 08:26 PM, Catalin Marinas wrote:
> > > On Mon, Jun 03, 2019 at 12:11:25PM +0530, Anshuman Khandual wrote:
> > >> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> > >> index 4bb65f3..41fa905 100644
> > >> --- a/arch/arm64/mm/fault.c
> > >> +++ b/arch/arm64/mm/fault.c
> > >> @@ -397,37 +397,29 @@ static void do_bad_area(unsigned long addr, unsigned int esr, struct pt_regs *re
> > >>  static vm_fault_t __do_page_fault(struct mm_struct *mm, unsigned long addr,
> > >>  			   unsigned int mm_flags, unsigned long vm_flags)
> > >>  {
> > >> -	struct vm_area_struct *vma;
> > >> -	vm_fault_t fault;
> > >> +	struct vm_area_struct *vma = find_vma(mm, addr);
> > >>  
> > >> -	vma = find_vma(mm, addr);
> > >> -	fault = VM_FAULT_BADMAP;
> > >>  	if (unlikely(!vma))
> > >> -		goto out;
> > >> -	if (unlikely(vma->vm_start > addr))
> > >> -		goto check_stack;
> > >> +		return VM_FAULT_BADMAP;
> > >>  
> > >>  	/*
> > >>  	 * Ok, we have a good vm_area for this memory access, so we can handle
> > >>  	 * it.
> > >>  	 */
> > >> -good_area:
> > >> +	if (unlikely(vma->vm_start > addr)) {
> > >> +		if (!(vma->vm_flags & VM_GROWSDOWN))
> > >> +			return VM_FAULT_BADMAP;
> > >> +		if (expand_stack(vma, addr))
> > >> +			return VM_FAULT_BADMAP;
> > >> +	}
> > > 
> > > You could have a single return here:
> > > 
> > > 	if (unlikely(vma->vm_start > addr) &&
> > > 	    (!(vma->vm_flags & VM_GROWSDOWN) || expand_stack(vma, addr)))
> > > 		return VM_FAULT_BADMAP;
> > > 
> > > Not sure it's any clearer though.
> > 
> > TBH the proposed one seems clearer as it separates effect (vma->vm_start > addr)
> > from required permission check (vma->vm_flags & VM_GROWSDOWN) and required action
> > (expand_stack(vma, addr)). But I am happy to change as you have mentioned if that
> > is preferred.
> 
> Not bothered really. You can leave them as in your proposal (I was just
> seeing the VM_GROWSDOWN check tightly coupled with the expand_stack(),
> it's fine either way).

Personally, I find it clearer as separate statements, so I'd suggest
keeping it as per Anshuman's proposal.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
