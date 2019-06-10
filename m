Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1203B9BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:39:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J+KweTvyWRajogMNgR1iBqLuF+d9o4AVkMlD984HrRw=; b=mZbAyrSfsJcCKx1HVfHlnYXd4
	PDdxnjvdfe1dJfkJJQaoMGFuudW4wpEssxGskqcjqizvzRDS15gZKPR4twSSzEqic02AspmSjLAdR
	byv4oiUsgCXyxtFQQc7aIg4enQ+IcicBnIugZ4LYATzeoQRZ7t6mrZ01CLT7DgH8xXcDM2DBJYdNR
	ndiXrXFcP+rjHi6JeQnnL1YFnYgVwZtR7bfZfR9DZRU+HI1C4vofOKr4O+Bn9FXRRbYsxxAuw4y9/
	GqMVPPKA8yPVA0ofZX3Rd4C2BZKVZ+JyiN4BDUApubqGxUjRPRhgh7e2dgUOHTo30rUoAr8/eZSpo
	AyA5j7pCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNKj-0000Hj-3l; Mon, 10 Jun 2019 16:39:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haNJe-0007rP-MQ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:38:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 20C33337;
 Mon, 10 Jun 2019 09:38:35 -0700 (PDT)
Received: from [10.1.197.57] (bionic-guest.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1AD963F246;
 Mon, 10 Jun 2019 09:38:33 -0700 (PDT)
Subject: Re: [PATCH v2] KVM: arm64: Skip more of the SError vaxorcism
To: James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
References: <20190610163034.116151-1-james.morse@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <54049114-9e59-dc1a-b355-6c3e7c0ab1f7@arm.com>
Date: Mon, 10 Jun 2019 17:38:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190610163034.116151-1-james.morse@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_093838_830078_B4ACB704 
X-CRM114-Status: GOOD (  22.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 10/06/2019 17:30, James Morse wrote:
> During __guest_exit() we need to consume any SError left pending by the
> guest so it doesn't contaminate the host. With v8.2 we use the
> ESB-instruction. For systems without v8.2, we use dsb+isb and unmask
> SError. We do this on every guest exit.
> 
> Use the same dsb+isr_el1 trick, this lets us know if an SError is pending
> after the dsb, allowing us to skip the isb and self-synchronising PSTATE
> write if its not.
> 
> This means SError remains masked during KVM's world-switch, so any SError
> that occurs during this time is reported by the host, instead of causing
> a hyp-panic.
> 
> If you give gcc likely()/unlikely() hints in an if() condition, it
> shuffles the generated assembly so that the likely case is immediately
> after the branch. Lets do the same here.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
> This patch was previously posted as part of:
> [v1] https://lore.kernel.org/linux-arm-kernel/20190604144551.188107-1-james.morse@arm.com/
> 
>   arch/arm64/kvm/hyp/entry.S | 14 ++++++++++----
>   1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
> index a5a4254314a1..c2de1a1faaf4 100644
> --- a/arch/arm64/kvm/hyp/entry.S
> +++ b/arch/arm64/kvm/hyp/entry.S
> @@ -161,18 +161,24 @@ alternative_if ARM64_HAS_RAS_EXTN
>   	orr	x0, x0, #(1<<ARM_EXIT_WITH_SERROR_BIT)
>   1:	ret
>   alternative_else
> -	// If we have a pending asynchronous abort, now is the
> -	// time to find out. From your VAXorcist book, page 666:
> +	dsb	sy		// Synchronize against in-flight ld/st
> +	mrs	x2, isr_el1
> +	and	x2, x2, #(1<<8)	// ISR_EL1.A
> +	cbnz	x2, 2f

It doesn't appear that anyone cares much about x2 containing the masked 
value after returning, so is this just a needlessly long-form TBNZ?

Robin.

> +	ret
> +
> +2:
> +	// We know we have a pending asynchronous abort, now is the
> +	// time to flush it out. From your VAXorcist book, page 666:
>   	// "Threaten me not, oh Evil one!  For I speak with
>   	// the power of DEC, and I command thee to show thyself!"
>   	mrs	x2, elr_el2
> +alternative_endif
>   	mrs	x3, esr_el2
>   	mrs	x4, spsr_el2
>   	mov	x5, x0
>   
> -	dsb	sy		// Synchronize against in-flight ld/st
>   	msr	daifclr, #4	// Unmask aborts
> -alternative_endif
>   
>   	// This is our single instruction exception window. A pending
>   	// SError is guaranteed to occur at the earliest when we unmask
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
