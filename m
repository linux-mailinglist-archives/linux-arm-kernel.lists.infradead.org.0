Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1703535926
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w7J8yNv7zSMfBQzQa6TnEVgXC3q0slpn59MdGcNlZUY=; b=gzYERSVEk2ss9+
	pnWJZddoOg+El6x5XTuBf4mUR26dbGbN5fqehRP6BrdhO6D/owAA6aTsJJtzMiUNOVmHsa35Q793j
	gTyOM4O22HweUpcrvzHFhVFy+VH/ee5062CWcdhgzTA/eelGnElTnBnFc4rw3TEUn86BH39p69fLI
	jaLudb8dPnUbuP+TuOXolV9jM+um2vQ5/H0q9fB5Ym2IJPSF/dSBmkRKDsixYh3DgXFDhiSCAWKtY
	SKqiL8xZJ6ZBiCKx2kDatQyiWTZuNJljZRba8O50sY9wNlOchqxgfYrERF9vS99Bnop7hpbhkOOC/
	bfqb2hr3mRQoVuUEAIjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRmc-0004vW-6t; Wed, 05 Jun 2019 09:00:34 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRmT-0004up-Rs
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:00:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 05B0AA78;
 Wed,  5 Jun 2019 02:00:25 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7A5123F690;
 Wed,  5 Jun 2019 02:00:18 -0700 (PDT)
Subject: Re: [PATCH v1 2/6] KVM: arm64: Consume pending SError as early as
 possible
To: James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
References: <20190604144551.188107-1-james.morse@arm.com>
 <20190604144551.188107-3-james.morse@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <e8a742cd-9b37-c4b3-f34a-4663081a8529@arm.com>
Date: Wed, 5 Jun 2019 10:00:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190604144551.188107-3-james.morse@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_020025_915524_524D5764 
X-CRM114-Status: GOOD (  22.67  )
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 04/06/2019 15:45, James Morse wrote:
> On systems with v8.2 we switch the 'vaxorcism' of guest SError with an
> alternative sequence that uses the ESB-instruction, then reads DISR_EL1.
> This saves the unmasking and re-masking of asynchronous exceptions.
> 
> We do this after we've saved the guest registers and restored the
> host's. Any SError that becomes pending due to this will be accounted
> to the guest, when it actually occurred during host-execution.
> 
> Move the ESB-instruction as early as possible. Any guest SError
> will become pending due to this ESB-instruction and then consumed to
> DISR_EL1 before the host touches anything.
> 

Since you're moving the ESB from a HAS_RAS alternative location to a
normal location, it might be worth noting in the commit message that the
ESB is a NOP when RAS is not implemented, to clarify that we are not
uselessly adding a barrier (or potentially undefined instruction).

> This lets us account for host/guest SError precisely on the guest
> exit exception boundary.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
> N.B. ESB-instruction is a nop on CPUs that don't support it.
> 
>  arch/arm64/include/asm/kvm_asm.h | 2 +-
>  arch/arm64/kvm/hyp/entry.S       | 5 ++---
>  arch/arm64/kvm/hyp/hyp-entry.S   | 2 ++
>  3 files changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
> index 9170c43b332f..5c9548ae8fa7 100644
> --- a/arch/arm64/include/asm/kvm_asm.h
> +++ b/arch/arm64/include/asm/kvm_asm.h
> @@ -45,7 +45,7 @@
>   * Size of the HYP vectors preamble. kvm_patch_vector_branch() generates code
>   * that jumps over this.
>   */
> -#define KVM_VECTOR_PREAMBLE	4
> +#define KVM_VECTOR_PREAMBLE	8
>  
>  #ifndef __ASSEMBLY__
>  
> diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
> index 93ba3d7ef027..7863ec5266e2 100644
> --- a/arch/arm64/kvm/hyp/entry.S
> +++ b/arch/arm64/kvm/hyp/entry.S
> @@ -138,8 +138,8 @@ ENTRY(__guest_exit)
>  
>  alternative_if ARM64_HAS_RAS_EXTN
>  	// If we have the RAS extensions we can consume a pending error
> -	// without an unmask-SError and isb.
> -	esb
> +	// without an unmask-SError and isb. The ESB-instruction consumed any
> +	// pending guest error when we took the exception from the guest.
>  	mrs_s	x2, SYS_DISR_EL1
>  	str	x2, [x1, #(VCPU_FAULT_DISR - VCPU_CONTEXT)]
>  	cbz	x2, 1f
> @@ -157,7 +157,6 @@ alternative_else
>  	mov	x5, x0
>  
>  	dsb	sy		// Synchronize against in-flight ld/st
> -	nop
>  	msr	daifclr, #4	// Unmask aborts
>  alternative_endif
>  
> diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
> index 914036e6b6d7..b8d37a987b34 100644
> --- a/arch/arm64/kvm/hyp/hyp-entry.S
> +++ b/arch/arm64/kvm/hyp/hyp-entry.S
> @@ -230,6 +230,7 @@ ENDPROC(\label)
>  .macro valid_vect target
>  	.align 7
>  661:
> +	esb

Having said the above, if the kernel is built without RAS support (you
have to disable some of options enabled by default to get to that) but
runs on a CPU that does have the RAS extention, should we execute a nop
instead of an esb (so have an alternative here)?

Also, when we have the smccc workaround installed we do two esb, is that
intentional/necessary?

Could we have only one esb at the start of hyp_ventry (and "only" 26
nops after it) for KVM_INDIRECT_VECTORS? Or does this not affect
performance that much to be of interest?

>  	stp	x0, x1, [sp, #-16]!
>  662:
>  	b	\target
> @@ -320,6 +321,7 @@ ENTRY(__bp_harden_hyp_vecs_end)
>  	.popsection
>  
>  ENTRY(__smccc_workaround_1_smc_start)
> +	esb
>  	sub	sp, sp, #(8 * 4)
>  	stp	x2, x3, [sp, #(8 * 0)]
>  	stp	x0, x1, [sp, #(8 * 2)]
> 

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
