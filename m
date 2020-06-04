Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A84C1EE7EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 17:39:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gfGYOP64ZhhB5dscepE0l6CoszIAjOD1I97yDSGQb8=; b=UzT7iIy1s5LKD1
	tKJg2KEEh/WBf746IQciOLvNMteCWxxb/Xax7/dd29ZIYYHaFjKcboWbltcyPwElssYf4f6cg9ic4
	YvJAuhrHzfCUN/cU4sgPTTE+KdTqSRYbmzIzNXw9Z6B0ztjijKswMs3WG0OWw02HTE5sUOXpbUtow
	eBjK+SrA54WKPRkgjtB/jm1lTtFkvfv3XeLZAs1He4//A+B/hyhmtlcVq9ih77poZkGsYOV9yEIau
	3F/B3gh5GVgV3fDBhzOrGCgptlPWl+GzHfbANyEoFJ0E+IyRP5fHIl2pFOwideLLr5zosR8swdBcF
	D05O+ZShBzFFnNPOsP2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrxc-0003FC-Sl; Thu, 04 Jun 2020 15:39:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrxU-0003Br-Bn
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 15:39:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 30DB31FB;
 Thu,  4 Jun 2020 08:39:06 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.9.165])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD38D3F305;
 Thu,  4 Jun 2020 08:39:03 -0700 (PDT)
Date: Thu, 4 Jun 2020 16:39:00 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 3/3] KVM: arm64: Enforce PtrAuth being disabled if not
 advertized
Message-ID: <20200604153900.GE75320@C02TD0UTHF1T.local>
References: <20200604133354.1279412-1-maz@kernel.org>
 <20200604133354.1279412-4-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604133354.1279412-4-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_083908_507202_2498DD8E 
X-CRM114-Status: GOOD (  26.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kernel-team@android.com, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Thu, Jun 04, 2020 at 02:33:54PM +0100, Marc Zyngier wrote:
> Even if we don't expose PtrAuth to a guest, the guest can still
> write to its SCTIRLE_1 register and set the En{I,D}{A,B} bits
> and execute PtrAuth instructions from the NOP space. This has
> the effect of trapping to EL2, and we currently inject an UNDEF.

I think it's worth noting that this is an ill-behaved guest, as those
bits are RES0 when pointer authentication isn't implemented.

The rationale for RES0/RES1 bits is that new HW can rely on old SW
programming them with the 0/1 as appropriate, and that old SW that does
not do so may encounter behaviour which from its PoV is UNPREDICTABLE.
The SW side of the contract is that you must program them as 0/1 unless
you know they're allocated with a specific meaning.

With that in mind I think the current behaviour is legitimate: from the
guest's PoV it's the same as there being a distinct extension which it
is not aware of where the En{I,D}{A,B} bits means "trap some HINTs to
EL1".

I don't think that we should attempt to work around broken software here
unless we absolutely have to, as it only adds complexity for no real
gain.

Thanks,
Mark.

> This is definitely the wrong thing to do, as the architecture says
> that these instructions should behave as NOPs.
> 
> Instead, we can simply reset the offending SCTLR_EL1 bits to
> zero, and resume the guest. It can still observe the SCTLR bits
> being set and then being cleared by magic, but that's much better
> than delivering an unexpected extension.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/kvm/handle_exit.c | 12 ------------
>  arch/arm64/kvm/hyp/switch.c  | 18 ++++++++++++++++--
>  2 files changed, 16 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
> index 5a02d4c90559..98d8adf6f865 100644
> --- a/arch/arm64/kvm/handle_exit.c
> +++ b/arch/arm64/kvm/handle_exit.c
> @@ -162,17 +162,6 @@ static int handle_sve(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  	return 1;
>  }
>  
> -/*
> - * Guest usage of a ptrauth instruction (which the guest EL1 did not turn into
> - * a NOP). If we get here, it is that we didn't fixup ptrauth on exit, and all
> - * that we can do is give the guest an UNDEF.
> - */
> -static int kvm_handle_ptrauth(struct kvm_vcpu *vcpu, struct kvm_run *run)
> -{
> -	kvm_inject_undefined(vcpu);
> -	return 1;
> -}
> -
>  static exit_handle_fn arm_exit_handlers[] = {
>  	[0 ... ESR_ELx_EC_MAX]	= kvm_handle_unknown_ec,
>  	[ESR_ELx_EC_WFx]	= kvm_handle_wfx,
> @@ -195,7 +184,6 @@ static exit_handle_fn arm_exit_handlers[] = {
>  	[ESR_ELx_EC_BKPT32]	= kvm_handle_guest_debug,
>  	[ESR_ELx_EC_BRK64]	= kvm_handle_guest_debug,
>  	[ESR_ELx_EC_FP_ASIMD]	= handle_no_fpsimd,
> -	[ESR_ELx_EC_PAC]	= kvm_handle_ptrauth,
>  };
>  
>  static exit_handle_fn kvm_get_exit_handler(struct kvm_vcpu *vcpu)
> diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
> index 2a50b3771c3b..fc09c3dfa466 100644
> --- a/arch/arm64/kvm/hyp/switch.c
> +++ b/arch/arm64/kvm/hyp/switch.c
> @@ -503,8 +503,22 @@ static bool __hyp_text __hyp_handle_ptrauth(struct kvm_vcpu *vcpu)
>  	struct kvm_cpu_context *ctxt;
>  	u64 val;
>  
> -	if (!vcpu_has_ptrauth(vcpu))
> -		return false;
> +	if (!vcpu_has_ptrauth(vcpu)) {
> +		if (ec != ESR_ELx_EC_PAC)
> +			return false;
> +
> +		/*
> +		 * Interesting situation: the guest has enabled PtrAuth,
> +		 * despite KVM not advertising it. Fix SCTLR_El1 on behalf
> +		 * of the guest (the bits should behave as RES0 anyway).
> +		 */
> +		val = read_sysreg_el1(SYS_SCTLR);
> +		val &= ~(SCTLR_ELx_ENIA | SCTLR_ELx_ENIB |
> +			 SCTLR_ELx_ENDA | SCTLR_ELx_ENDB);
> +		write_sysreg_el1(val, SYS_SCTLR);
> +
> +		return true;
> +	}
>  
>  	switch (ec) {
>  	case ESR_ELx_EC_PAC:
> -- 
> 2.26.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
