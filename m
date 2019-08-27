Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA4A9EFFA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trGnacTrO0FYaRDgLPAtXmOJp/neTL5kQ2qqCkSMYhQ=; b=q4F2qbOQsKpcZ+
	C3P7EU5dMxpiGy02jo8vItfRlZQU5w+eGi7z3nZFKhY+Uyt05Lf3AqdZkoFpmnKccG+Ni9UKqVkV/
	lFWZdDWiarcKwlraxtyXOSHkBTixop7SUU5jLsD29Aq6shlzFe69xqd6WMyeObaNt4Y7lLaXCWbfe
	7SsbJSJrvyg1Ensd70jQpEGsw1JMJcK+ddhFCgPLqTyJosvMdRIJQQULKxYConamb4oQCnm+ja22l
	j3BOAtDOOuj0POdfeu4Rvi1Q9Dr6Yg7cOQNotI/1ZLeKfBRFq1r9cbhCxVx2OlBsPRrCfOFa7nKet
	hx12DLNozvID0UrQIMXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2eC2-0006Ih-4v; Tue, 27 Aug 2019 16:19:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2eBt-0006IA-UM
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 16:19:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C641337;
 Tue, 27 Aug 2019 09:19:29 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 338043F59C;
 Tue, 27 Aug 2019 09:19:28 -0700 (PDT)
Date: Tue, 27 Aug 2019 17:19:26 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 0/6] Fix TLB invalidation on arm64
Message-ID: <20190827161925.GE43183@lakrids.cambridge.arm.com>
References: <20190827131818.14724-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827131818.14724-1-will@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_091930_129869_7C224738 
X-CRM114-Status: GOOD (  36.26  )
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
Cc: linux-arch@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 02:18:12PM +0100, Will Deacon wrote:
> Hi all,

Hi Will,

For the series:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

> 
> [+linux-arch since the end of this may be applicable to other architectures]
> 
> Commit 24fe1b0efad4fcdd ("arm64: Remove unnecessary ISBs from
> set_{pte,pmd,pud") removed ISB instructions immediately following updates to
> the page table, on the grounds that they are not required by the
> architecture and a DSB alone is sufficient to ensure that subsequent data
> accesses use the new translation:
> 
>   DDI0487E_a, B2-128:
> 
>   | ... no instruction that appears in program order after the DSB instruction
>   | can alter any state of the system or perform any part of its functionality
>   | until the DSB completes other than:
>   |
>   | * Being fetched from memory and decoded
>   | * Reading the general-purpose, SIMD and floating-point, Special-purpose, or
>   |   System registers that are directly or indirectly read without causing
>   |   side-effects.
> 
> However, the same document also states the following:
> 
>   DDI0487E_a, B2-125:
> 
>   | DMB and DSB instructions affect reads and writes to the memory system
>   | generated by Load/Store instructions and data or unified cache maintenance
>   | instructions being executed by the PE. Instruction fetches or accesses
>   | caused by a hardware translation table access are not explicit accesses.
> 
> which appears to claim that the DSB alone is insufficient. Unfortunately,
> some CPU designers have followed the second clause above, whereas in Linux
> we've been relying on the first. This means that our mapping sequence:
> 
> 	MOV	X0, <valid pte>
> 	STR	X0, [Xptep]	// Store new PTE to page table
> 	DSB	ISHST
> 	LDR	X1, [X2]	// Translates using the new PTE
> 
> can actually raise a translation fault on the load instruction because the
> translation can be performed speculatively before the page table update and
> then marked as "faulting" by the CPU. For user PTEs, this is ok because we
> can handle the spurious fault, but for kernel PTEs and intermediate table
> entries this results in a panic().
> 
> We can fix this by reverting 24fe1b0efad4fcdd, but the fun doesn't stop
> there. If we consider the unmap case, then a similar constraint applies to
> ordering subsequent memory accesses after the completion of the TLB
> invalidation, so we also need to add an ISB instruction to
> __flush_tlb_kernel_pgtable(). For user addresses, the exception return
> provides the necessary context synchronisation.
> 
> This then raises an interesting question: if an ISB is required after a TLBI
> instruction to prevent speculative translation of subsequent instructions,
> how is this speculation prevented on concurrent CPUs that receive the
> broadcast TLB invalidation message? Sending and completing a broadcast TLB
> invalidation message does not imply execution of an ISB on the remote CPU,
> however it /does/ require that the remote CPU will no longer make use of any
> old translations because otherwise we wouldn't be able to guarantee that an
> unmapped page could no longer be modified. In this regard, receiving a TLB
> invalidation is in some ways stronger than sending one (where you need the
> ISB).
> 
> So far, so good, but the final piece of the puzzle isn't quite so rosy.
> 
> *** Other architecture maintainers -- start here! ***
> 
> In the case that one CPU maps a page and then sets a flag to tell another
> CPU:
> 
> 	CPU 0
> 	-----
> 
> 	MOV	X0, <valid pte>
> 	STR	X0, [Xptep]	// Store new PTE to page table
> 	DSB	ISHST
> 	ISB
> 	MOV	X1, #1
> 	STR	X1, [Xflag]	// Set the flag
> 
> 	CPU 1
> 	-----
> 
> loop:	LDAR	X0, [Xflag]	// Poll flag with Acquire semantics
> 	CBZ	X0, loop
> 	LDR	X1, [X2]	// Translates using the new PTE
> 
> then the final load on CPU 1 can raise a translation fault for the same
> reasons as mentioned at the start of this description. In reality, code
> such as:
> 
> 	CPU 0				CPU 1
> 	-----				-----
> 	spin_lock(&lock);		spin_lock(&lock);
> 	*ptr = vmalloc(size);		if (*ptr)
> 	spin_unlock(&lock);			foo = **ptr;
> 					spin_unlock(&lock);
> 
> will not trigger the fault because there is an address dependency on
> CPU1 which prevents the speculative translation. However, more exotic
> code where the virtual address is known ahead of time, such as:
> 
> 	CPU 0				CPU 1
> 	-----				-----
> 	spin_lock(&lock);		spin_lock(&lock);
> 	set_fixmap(0, paddr, prot);	if (mapped)
> 	mapped = true;				foo = *fix_to_virt(0);
> 	spin_unlock(&lock);		spin_unlock(&lock);
> 
> could fault. This can be avoided by any of:
> 
> 	* Introducing broadcast TLB maintenance on the map path
> 	* Adding a DSB;ISB sequence after checking a flag which indicates
> 	  that a virtual address is now mapped
> 	* Handling the spurious fault
> 
> Given that we have never observed a problem in the concurrent case under
> Linux and future revisions of the architecture are being tightened so that
> translation table walks are effectively ordered in the same way as explicit
> memory accesses, we no longer treat spurious kernel faults as fatal if the
> page table indicates that the access was valid.
> 
> Anyway, this patch series attempts to implement some of this and I plan
> to queue it for 5.4.
> 
> Will
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Peter Zijlstra <peterz@infradead.org>
> 
> --->8
> 
> Will Deacon (6):
>   Revert "arm64: Remove unnecessary ISBs from set_{pte,pmd,pud}"
>   arm64: tlb: Ensure we execute an ISB following walk cache invalidation
>   arm64: mm: Add ISB instruction to set_pgd()
>   arm64: sysreg: Add some field definitions for PAR_EL1
>   arm64: mm: Ignore spurious translation faults taken from the kernel
>   arm64: kvm: Replace hardcoded '1' with SYS_PAR_EL1_F
> 
>  arch/arm64/include/asm/pgtable.h  | 13 ++++++++++---
>  arch/arm64/include/asm/sysreg.h   |  3 +++
>  arch/arm64/include/asm/tlbflush.h |  1 +
>  arch/arm64/kvm/hyp/switch.c       |  2 +-
>  arch/arm64/mm/fault.c             | 33 +++++++++++++++++++++++++++++++++
>  5 files changed, 48 insertions(+), 4 deletions(-)
> 
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
